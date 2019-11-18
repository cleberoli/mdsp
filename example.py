from model.mdsp import MDSP
from model.qp import QP
from model.rlt import RLT
from model.ip import IP
from model.feas import FEAS
from model.max import MAX


def test():
    d = [1, 1, 1, 3, 9, 12]
    MDSP(d)
    QP(d)
    RLT(d)
    IP(d)
    FEAS(d, 3)
    MAX(d, 6)


if __name__ == '__main__':
    test()
