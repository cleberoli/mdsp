from gurobipy import GRB
from gurobipy import quicksum
from model.mdsp import MDSP


class RLT(MDSP):

    def __init__(self, d: list):
        super().__init__(d)
        self.x = []
        self.y = []

        self.add_variables()
        self.set_objective()
        self.add_constraints()

        self.model.update()
        self.model.optimize()

        self.model.write('rlt.lp')
        self.model.write('rlt.sol')

        for v in self.model.getVars():
            print('%s %s' % (v.VarName, v.X))
        print('Obj: %s' % self.model.ObjVal)

    def add_variables(self):
        for i in range(self.B+1):
            self.x.append(self.model.addVar(name=f'x{i}', vtype=GRB.BINARY))

        for i in range(self.B+1):
            temp = []

            for j in range(i+1):
                temp.append(None)
            for j in range(i+1, self.B+1):
                temp.append(self.model.addVar(name=f'y{i},{j}', vtype=GRB.INTEGER))

            self.y.append(temp)

    def set_objective(self):
        self.model.setObjective(quicksum(self.x[i] for i in range(self.B+1)), GRB.MINIMIZE)

    def add_constraints(self):
        self.add_constraint_8()
        self.add_constraints_9_10_11()

    def add_constraint_8(self):
        for d, index in zip(self.D_, range(len(self.D_))):
            self.model.addConstr(quicksum(self.y[i][i+d] for i in range(self.B-d+1)) >= self.M[index])

    def add_constraints_9_10_11(self):
        for i in range(self.B+1):
            for j in range(i+1, self.B+1):
                self.model.addConstr(self.y[i][j] - self.x[i] - self.x[j] >= -1)
                self.model.addConstr(self.y[i][j] - self.x[i] <= 0)
                self.model.addConstr(self.y[i][j] - self.x[j] <= 0)
