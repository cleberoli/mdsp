from gurobipy import GRB
from gurobipy import quicksum
from model.mdsp import MDSP


class IP(MDSP):

    def __init__(self, d: list, filename: str):
        super().__init__(d, filename)
        self.z = dict()
        self.x = dict()
        self.p = dict()

        self.add_variables()
        self.set_objective()
        self.add_constraints()

    def add_variables(self):
        for i in range(self.k):
            self.x[i] = dict()

            for j in range(i + 1, self.k + 1):
                self.x[i][j] = dict()

                for d in self.D_:
                    self.x[i][j][d] = self.model.addVar(name=f'x{i},{j}_{d}', vtype=GRB.BINARY)

        for i in range(self.k + 1):
            self.z[i] = self.model.addVar(name=f'z{i}', vtype=GRB.BINARY)

        for i in range(self.k + 1):
            self.p[i] = self.model.addVar(name=f'p{i}', vtype=GRB.INTEGER)

    def set_objective(self):
        self.model.setObjective(quicksum(self.z[i] for i in range(self.k + 1)), GRB.MINIMIZE)

    def add_constraints(self):
        self.add_constraint_22()
        self.add_constraint_23()
        self.add_constraint_24_25_26()
        self.add_constraint_27()

    def add_constraint_22(self):
        for i in range(self.k):
            for j in range(i + 1, self.k + 1):
                self.model.addConstr(quicksum(self.x[i][j][d] for d in self.D_) <= self.z[j])

    def add_constraint_23(self):
        for d in self.D_:
            self.model.addConstr(quicksum(self.x[i][j][d] for i in range(self.k) for j in range(i + 1, self.k + 1)) == self.M[d])

    def add_constraint_24_25_26(self):
        for i in range(self.k):
            for j in range(i + 1, self.k + 1):
                self.model.addConstr(self.p[i] + 1 <= self.p[j])

                for d in self.D_:
                    self.model.addConstr(self.p[j] >= self.p[i] + d*self.x[i][j][d])
                    self.model.addConstr(self.p[j] <= self.p[i] + d + self.B * (1 - self.x[i][j][d]))

    def add_constraint_27(self):
        for i in range(self.k):
            self.model.addConstr(self.z[i] >= self.z[i+1])
