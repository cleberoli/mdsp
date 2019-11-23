from gurobipy import GRB
from gurobipy import quicksum
from model.mdsp import MDSP


class MAX(MDSP):

    def __init__(self, d: list, t: int, filename: str):
        super().__init__(d, filename)
        self.t = t
        self.x = dict()
        self.p = dict()

        self.add_variables()
        self.set_objective()
        self.add_constraints()

    def add_variables(self):
        for i in range(self.t):
            self.x[i] = dict()

            for j in range(i + 1, self.t + 1):
                self.x[i][j] = dict()

                for d in self.D_:
                    self.x[i][j][d] = self.model.addVar(name=f'x{i},{j}_{d}', vtype=GRB.BINARY)

        for i in range(self.t + 1):
            self.p[i] = self.model.addVar(name=f'p{i}', vtype=GRB.INTEGER)

    def set_objective(self):
        self.model.setObjective(quicksum(self.x[i][j][d] for i in range(self.t) for j in range(i + 1, self.t + 1) for d in self.D_), GRB.MAXIMIZE)

    def add_constraints(self):
        self.add_constraint_39()
        self.add_constraint_32()
        self.add_constraint_33_34_35()

    def add_constraint_39(self):
        for d in self.D_:
            self.model.addConstr(quicksum(self.x[i][j][d] for i in range(self.t) for j in range(i + 1, self.t + 1)) <= self.M[d])

    def add_constraint_32(self):
        for i in range(self.t):
            for j in range(i + 1, self.t + 1):
                self.model.addConstr(quicksum(self.x[i][j][d] for d in self.D_) <= 1)

    def add_constraint_33_34_35(self):
        for i in range(self.t):
            for j in range(i + 1, self.t + 1):
                self.model.addConstr(self.p[i] + 1 <= self.p[j])

                for d in self.D_:
                    self.model.addConstr(self.p[j] >= self.p[i] + d*self.x[i][j][d])
                    self.model.addConstr(self.p[j] <= self.p[i] + d + self.B * (1 - self.x[i][j][d]))
