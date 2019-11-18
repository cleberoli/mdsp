import random


def generate_full(n: int, m: int):
    d = random.sample(range(1, m), n - 1)
    distances = []

    for s in range(1, n):
        for i in range(n - s):
            distances.append(sum(d[i:i + s]))

    distances.sort()
    print(distances)
    return distances


def generate_miss(n: int, m: int):
    d = random.sample(range(1, m), n - 1)
    distances = []

    for s in range(1, n):
        for i in range(n - s):
            distances.append(sum(d[i:i + s]))

    random.shuffle(distances)

    for _ in range(n):
        distances.pop()

    distances.sort()
    print(distances)
    return distances


def generate_joint(n1: int, m1: int, n2: int, m2:int):
    d1 = generate_full(n1, m1)
    d2 = generate_full(n2, m2)
    distances = d1 + d2

    distances.sort()
    print(distances)
    return distances


def generate_drand(k: int, d: int):
    distances = random.sample(range(1, d), k)
    distances.sort()
    print(distances)
    return distances


