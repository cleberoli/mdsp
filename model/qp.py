from gurobipy import GRB
from gurobipy import quicksum
from model.mdsp import MDSP


class QP(MDSP):

    def __init__(self, d: list):
        super().__init__(d)
        self.x = []

        self.add_variables()
        self.set_objective()
        self.add_constraints()

        self.model.update()
        self.model.optimize()

        self.model.write('qp.lp')
        self.model.write('qp.sol')

        for v in self.model.getVars():
            print('%s %s' % (v.VarName, v.X))
        print('Obj: %s' % self.model.ObjVal)

    def add_variables(self):
        for i in range(self.B+1):
            self.x.append(self.model.addVar(name=f'x{i}', vtype=GRB.BINARY))

    def set_objective(self):
        self.model.setObjective(quicksum(self.x[i] for i in range(self.B+1)), GRB.MINIMIZE)

    def add_constraints(self):
        self.add_constraint_4()
        self.add_constraints_5()

    def add_constraint_4(self):
        for d, index in zip(self.D_, range(len(self.D_))):
            self.model.addConstr(quicksum(self.x[i]*self.x[i+d] for i in range(self.B-d+1)) >= self.M[index])

    def add_constraints_5(self):
        self.model.addConstr(self.x[0] == 1)
