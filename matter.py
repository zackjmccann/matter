from canned.space import solar
from canned.waves import tide

def run():
    print('enter matter')
    solar.run()
    tide.run()

if __name__ == '__main__':
    run()
