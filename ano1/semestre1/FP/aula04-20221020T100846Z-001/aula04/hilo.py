# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101)
    print("Can you guess my secret?")
    # put your code here
    guess = int(input('Your Guess? '))
    g = 1
    while guess != secret:
        if guess > secret:
            print('High')
        else:
            print('Low')
        guess = int(input('Your Guess? '))
        g += 1
    print('Good Job!')
    print('Tentativas', g)


main()
