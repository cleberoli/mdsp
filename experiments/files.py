import os


def save_solution(filename: str):
    if os.path.exists(f'{filename}.lp.bak'):
        os.remove(f'{filename}.lp.bak')

    if os.path.exists(f'{filename}.sol.bak'):
        os.remove(f'{filename}.sol.bak')

    os.rename(f'{filename}.lp', f'{filename}.lp.bak')
    os.rename(f'{filename}.sol', f'{filename}.sol.bak')
    update_time(filename)


def update_time(filename: str):
    if os.path.exists(f'{filename}.time.bak'):
        os.rename(f'{filename}.time.bak', f'{filename}.time.tmp')

    os.rename(f'{filename}.time', f'{filename}.time.bak')

    if os.path.exists(f'{filename}.time.tmp'):
        with open(f'{filename}.time.bak', 'a') as outfile:
            with open(f'{filename}.time.tmp') as infile:
                outfile.write(infile.read())
                infile.close()
            outfile.close()
        os.remove(f'{filename}.time.tmp')


def restore_solution(filename: str):
    if os.path.exists(f'{filename}.lp'):
        os.remove(f'{filename}.lp')

    if os.path.exists(f'{filename}.sol'):
        os.remove(f'{filename}.sol')

    if os.path.exists(f'{filename}.time'):
        os.remove(f'{filename}.time')

    os.rename(f'{filename}.lp.bak', f'{filename}.lp')
    os.rename(f'{filename}.sol.bak', f'{filename}.sol')
    os.rename(f'{filename}.time.bak', f'{filename}.time')
