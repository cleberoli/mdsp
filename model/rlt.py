from gurobipy import GRB
from gurobipy import quicksum
from model.mdsp import MDSP


class RLT(MDSP):

    def __init__(self, d: list, filename: str):
        super().__init__(d, filename)
        self.x = dict()
        self.y = dict()

        self.add_variables()
        self.set_objective()
        self.add_constraints()

    def add_variables(self):
        for p in self.P:
            self.x[p] = self.model.addVar(name=f'x{p}', vtype=GRB.BINARY)

        for i in self.P:
            self.y[i] = dict()

            for j in self.P:
                if i < j:
                    self.y[i][j] = self.model.addVar(name=f'y{i},{j}', vtype=GRB.INTEGER)

    def set_objective(self):
        self.model.setObjective(quicksum(self.x[p] for p in self.P), GRB.MINIMIZE)

    def add_constraints(self):
        self.add_constraint_8()
        self.add_constraints_9_10_11()

    def add_constraint_8(self):
        for d in self.D_:
            self.model.addConstr(quicksum(self.y[p][p+d] for p in self.P if p <= (self.B-d)) >= self.M[d])

    def add_constraints_9_10_11(self):
        for i in self.P:
            for j in self.P:
                if i < j:
                    self.model.addConstr(self.y[i][j] - self.x[i] - self.x[j] >= -1)
                    self.model.addConstr(self.y[i][j] - self.x[i] <= 0)
                    self.model.addConstr(self.y[i][j] - self.x[j] <= 0)
