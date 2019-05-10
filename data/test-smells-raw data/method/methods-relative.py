import pandas as pd 

def main():
    tools = ['evosuite', 'randoop', 'jtexpert']
    smells = ['AssertionRoulette', 'EagerTest', 'MysteryGuest', 'SensitiveEquality', 'ResourceOptimism', 'IndirectTesting']
    build_randoop()
    for tool in tools:
        print('*****\nTool -> {}'.format(tool))
        frame = pd.read_csv('test-smell-statistics-{}-methods.csv'.format(tool))
        for smell in smells:
            tot_per_smell = frame[smell].sum()
            total = frame['number-of-smelly-junit'].sum()
            print('Test Smell -> {} = {}'.format(smell, tot_per_smell/total))


def build_randoop():
    chunk1 = pd.read_csv('test-smells-randoop-methods-chunk1.csv')
    chunk2 = pd.read_csv('test-smells-randoop-methods-chunk2.csv', names=chunk1.columns.tolist())
    chunk3 = pd.read_csv('test-smells-randoop-methods-chunk3.csv', names=chunk1.columns.tolist())
    randoop = pd.concat([chunk1,chunk2,chunk3])
    randoop.to_csv('test-smells-randoop-methods.csv')


if __name__ == '__main__':
    main()
