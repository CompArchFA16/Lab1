import random, sys

def print_usage(msg=None):
    print " Usage : random_generator.py <DIM> <N> <delimiter>"
    if msg:
        print " Extra Message : {} ".format(msg)
    sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) > 4:
        print_usage("Wrong # of Arguments")

    dim = 1
    n = 1
    delim = ''

    if len(sys.argv) > 1:
        try:
            tmp_dim = int(sys.argv[1])
            dim = tmp_dim
        except:
            print_usage("Invalid Dimension")

    if len(sys.argv) > 2:
        try:
            tmp_n = int(sys.argv[2])
            n = tmp_n
        except:
            print_usage("Invalid Number")

    if len(sys.argv) > 3:
        delim = sys.argv[3]

    for _ in range(n):
        s = ''
        for _ in range(dim):
            s += str(random.choice((0,1))) + delim
        print s[:-1]
