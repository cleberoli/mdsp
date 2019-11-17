from gurobipy import Model


class MDSP:

    def __init__(self, d: list):
        self.D = d
        self.B = sum(d)
        self.D_ = self.get_unique_distances()
        self.M = self.get_mult()
        self.model = Model()
        self.model.setParam('OutputFlag', 0)

    def get_unique_distances(self):
        d = list(set(self.D))
        d.sort()

        return d

    def get_mult(self):
        m = [self.D.count(i) for i in self.D_]

        return m
