import os
import shutil
from generator import generator


class Instances:

    PATH = 'instances'
    TYPES = ['full', 'miss', 'joint', 'drand']

    def __init__(self, reset=False):
        self.create_directories(reset)

    def create_directories(self, reset: bool):
        if reset:
            if os.path.isdir(self.PATH):
                shutil.rmtree(self.PATH)

        if not os.path.isdir(self.PATH):
            os.makedirs(self.PATH)

            for t in self.TYPES:
                if not os.path.isdir(f'{self.PATH}/{t}'):
                    os.makedirs(f'{self.PATH}/{t}')

    def generate_full_instances(self):
        n = [5, 6, 7]
        m = [15, 30]

        for n_ in n:
            for m_ in m:
                for id_ in range(3):
                    d = generator.generate_full(n_, m_)
                    filename = f'{self.PATH}/full/full-{n_:02d}-{m_:02d}-{id_}.txt'
                    self.write_instance(filename, d)

    def generate_miss_instances(self):
        n = [5, 6, 7]
        m = [15, 30]

        for n_ in n:
            for m_ in m:
                for id_ in range(3):
                    d = generator.generate_miss(n_, m_)
                    filename = f'{self.PATH}/miss/miss-{n_:02d}-{m_:02d}-{id_}.txt'
                    self.write_instance(filename, d)

    def generate_joint_instances(self):
        n = [(5, 5), (6, 5), (7, 5)]
        m = [(15, 15), (30, 30)]

        for n_ in n:
            for m_ in m:
                for id_ in range(3):
                    d = generator.generate_joint(n_[0], m_[0], n_[1], m_[1])
                    filename = f'{self.PATH}/joint/joint-{n_[0]:02d}-{m_[0]:02d}-{n_[1]:02d}-{m_[1]:02d}-{id_}.txt'
                    self.write_instance(filename, d)

    def generate_drand_instances(self):
        k = [5, 7, 10]
        n = [75, 110]

        for k_ in k:
            for n_ in n:
                for id_ in range(3):
                    d = generator.generate_drand(k_, n_)
                    filename = f'{self.PATH}/drand/drand-{k_:02d}-{n_:03d}-{id_}.txt'
                    self.write_instance(filename, d)

    @staticmethod
    def write_instance(filename: str, d: list):
        with open(filename, 'w') as file:
            file.write(f'{len(d)}\n')
            file.write(' '.join(str(item) for item in d))
            file.close()

    @staticmethod
    def read_instance(filename: str):
        with open(filename, 'r') as file:
            file.readline()
            d = [int(number) for number in file.readline().split(' ')]
            file.close()

        return d
