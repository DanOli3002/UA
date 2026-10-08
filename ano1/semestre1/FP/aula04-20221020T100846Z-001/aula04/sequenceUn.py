
# This program generates 20 terms of a sequence by a recurrence relation.
                   # Un = each term of the sequence. Initially = U0
   # Set Un to the next term of the sequence

def main():
    Un = 100
    x = 0
    while Un > 0:
        print(Un)
        Un = 1.01*Un - 1.01
        x = x +1
    print(x)

main()