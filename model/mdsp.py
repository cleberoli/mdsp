from gurobipy import Model


class MDSP:

    def __init__(self, d: list):
        self.D = d
        self.B = sum(d)
        self.k = len(self.D)
        self.D_ = self.get_unique_distances()
        self.M = self.get_mult()
        self.P = self.valid_points()
        self.n = len(self.P)

        self.model = Model()
        self.model.setParam('OutputFlag', 0)

    def get_unique_distances(self):
        d = list(set(self.D))
        d.sort()

        return d

    def get_mult(self):
        m = [self.D.count(i) for i in self.D_]

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
