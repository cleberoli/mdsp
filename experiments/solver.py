from math import ceil
from math import floor
from math import sqrt
from model.qp import QP
from model.rlt import RLT
from model.ip import IP
from model.feas import FEAS
from model.max import MAX
from experiments import files


class Solver:

    def __init__(self, m: str, d: list, filename: str):
        self.m = m
        self.d = d
        self.filename = filename

    def solve(self):
        if self.m == 'qp':
            QP(self.d, self.filename).solve()
        elif self.m == 'rlt':
            RLT(self.d, self.filename).solve()
        elif self.m == 'ip':
            IP(self.d, self.filename).solve()
        elif self.m == 'feas':
            self.binary_search_feas()
        elif self.m == 'max':
            self.binary_search_max()

    def binary_search_feas(self):
        k = len(self.d)
        lb = ceil(0.5 + sqrt(0.25 + 2 * k))
        ub = k + 1

        while lb < ub:
            mid = floor((lb + ub) / 2)
            FEAS(self.d, mid, self.filename).solve()

            if self.is_feasible_feas():
                files.save_solution(self.filename)
                ub = mid
            else:
                files.update_time(self.filename)
                lb = mid + 1

        files.restore_solution(self.filename)

    def is_feasible_feas(self):
        with open(f'{self.filename}.time', 'r') as file:
            status = int(file.readline())
            file.close()
            return status == 2

    def binary_search_max(self):
        k = len(self.d)
        lb = ceil(0.5 + sqrt(0.25 + 2 * k))
        ub = k + 1

        while lb < ub:
            mid = floor((lb + ub) / 2)
            MAX(self.d, mid, self.filename).solve()

            if self.is_feasible_max(k):
                files.save_solution(self.filename)
                ub = mid
            else:
                files.update_time(self.filename)
                lb = mid + 1

        files.restore_solution(self.filename)

    def is_feasible_max(self, k: int):
        with open(f'{self.filename}.sol', 'r') as file:
            opt = int(file.readline().split()[-1])
            file.close()
            return opt >= k
