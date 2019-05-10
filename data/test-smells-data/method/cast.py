import pandas as pd 

def main():
    tools = ['evosuite', 'randoop', 'jtexpert']
    smells = ['isAssertionRoulette', 'isEagerTest', 'isMysteryGuest', 'isSensitiveEquality', 'isResourceOptimism', 'isIndirectTesting']
    for tool in tools:
        print('*****\nTool -> {}'.format(tool))
        frame = pd.read_csv('test-smells-{}-methods.csv'.format(tool))
        for smell in smells:
            frame[smell] = frame[smell].apply(lambda x: 1 if x > 0 else 0)
        frame = frame[smells]
        frame.to_csv('{}.csv'.format(tool),index=False, header=False)


if __name__ == '__main__':
    main()
