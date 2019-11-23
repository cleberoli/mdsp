from gurobipy import GRB
from gurobipy import quicksum
from model.mdsp import MDSP


class QP(MDSP):

    def __init__(self, d: list, filename: str):
        super().__init__(d, filename)
        self.x = dict()

        self.add_variables()
        self.set_objective()
        self.add_constraints()

    def add_variables(self):
        for p in self.P:
            self.x[p] = self.model.addVar(name=f'x{p}', vtype=GRB.BINARY)

    def set_objective(self):
        self.model.setObjective(quicksum(self.x[p] for p in self.P), GRB.MINIMIZE)

    def add_constraints(self):
        self.add_constraint_4()
        self.add_constraint_5()

    def add_constraint_4(self):
        for d in self.D_:
            self.model.addConstr(quicksum(self.x[p]*self.x[p+d] for p in self.P if p <= (self.B-d)) >= self.M[d])

    def add_constraint_5(self):
        self.model.addConstr(self.x[0] == 1)
