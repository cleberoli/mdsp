from model.mdsp import MDSP
from model.qp import QP
from model.rlt import RLT
from model.ip import IP
from model.feas import FEAS
from model.max import MAX

from generator import generator
from generator.instances import Instances


def test():
    d = [1, 1, 1, 3, 9, 12]
    MDSP(d)
    QP(d)
    RLT(d)
    IP(d)
    FEAS(d, 3)
    MAX(d, 6)


if __name__ == '__main__':
    # test()
    generator.generate_full(6, 30)
    generator.generate_miss(6, 30)
    generator.generate_joint(6, 15, 5, 15)
    generator.generate_drand(10, 110)

    inst = Instances()
    inst.generate_full_instances()
    inst.generate_miss_instances()
    inst.generate_joint_instances()
    inst.generate_drand_instances()
