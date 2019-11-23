import os
import shutil
from generator.instances import Instances
from experiments.solver import Solver


PATH = 'logs'
TYPES = ['full', 'miss', 'joint', 'drand']
MODELS = ['qp', 'rlt', 'ip', 'feas', 'max']


def generate_instances():
    inst = Instances(True)
    inst.generate_full_instances()
    inst.generate_miss_instances()
    inst.generate_joint_instances()
    inst.generate_drand_instances()


def create_log_directories(reset=False):
    if reset:
        if os.path.isdir(PATH):
            shutil.rmtree(PATH)

    if not os.path.isdir(PATH):
        os.makedirs(PATH)

    for t in TYPES:
        if not os.path.isdir(f'{PATH}/{t}'):
            os.makedirs(f'{PATH}/{t}')

        for m in MODELS:
            if not os.path.isdir(f'{PATH}/{t}/{m}'):
                os.makedirs(f'{PATH}/{t}/{m}')


def is_done(filename: str, t: str, m: str):
    return os.path.exists(f'logs/{t}/{m}/{filename}.time')


def clear_logs(filename: str, t: str, m: str):
    fn = f'logs/{t}/{m}/{filename}'

    if os.path.exists(f'{fn}.log'):
        os.remove(f'{fn}.log')

    if os.path.exists(f'{fn}.lp'):
        os.remove(f'{fn}.lp')

    if os.path.exists(f'{fn}.sol'):
        os.remove(f'{fn}.sol')

    if os.path.exists(f'{fn}.time'):
        os.remove(f'{fn}.time')


def run_experiments(t: str, m: str):
    for filename in os.listdir(f'instances/{t}'):
        simple_filename = filename.rsplit(".", 1)[0]

        if not is_done(simple_filename, t, m):
            print(filename)
            clear_logs(simple_filename, t, m)
            d = Instances.read_instance(f'instances/{t}/{filename}')
            solver = Solver(m, d, f'logs/{t}/{m}/{simple_filename}')
            solver.solve()


if __name__ == '__main__':
    generate_instances()
    create_log_directories()

    # for t in TYPES:
    #     run_experiments(t, 'max')
    #
    # for t in TYPES:
    #     run_experiments(t, 'feas')
    #
    # for t in TYPES:
    #     run_experiments(t, 'ip')
