from time import time
from gurobipy import Model


class MDSP:

    def __init__(self, d: list, filename: str, optimize=False, time_limit=3600):
        self.D = d
        self.B = sum(d)
        self.k = len(self.D)
        self.D_ = self.get_unique_distances()
        self.M = self.get_mult()
        self.P = list(range(self.B + 1))
        self.filename = filename

        if optimize:
            self.P = self.valid_points()

        self.model = Model()
        self.model.setParam('LogFile', f'{filename}.log')
        self.model.setParam('LogToConsole', 0)
        self.model.setParam('TimeLimit', time_limit)

    def solve(self):
        t1 = time()
        self.model.update()
        self.model.optimize()
        t2 = time()

        self.write_time_file(t1, t2)
        self.model.write(f'{self.filename}.lp')

        if self.model.status == 3:
            print('Infeasible')
        else:
            self.model.write(f'{self.filename}.sol')
            print('Obj: %s' % self.model.ObjVal)

    def get_unique_distances(self):
        d = list(set(self.D))
        d.sort()

        return d

    def get_mult(self):
        m = dict()

        for i in self.D_:
            m[i] = self.D.count(i)

        return m

    def valid_points(self):
        c = {0}

        for d in self.D:
            t = set()

            for p in c:
                t = t.union({p-d, p+d})

            c = c.union(t)

        p = [x for x in c if x >= 0]
        p.sort()

        return p

    def write_time_file(self, t1, t2):
        with open(f'{self.filename}.time', 'w') as file:
            file.write(f'{self.model.Status}\n')
            file.write(f'{t2 - t1}\n')
            file.close()
