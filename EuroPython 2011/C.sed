#!/bin/sed
#
# Problem: Irregular Expressions
# Language: sed
# Author: KirarinSnow
# Usage: sed -f thisfile.sed <input.in >output.out



# Initialize case counter to 0 and store to hold space.
# Include digits for incrementing the case counter.
1 s/.*/0<>0123456789/
1 h
1 d


# Handle test case.
s/.*\(.*[aeiou].*[aeiou].*\).*[aeiou].*\1.*/Spell!/
s/^[^S].*/Nothing./


# Swap spaces and increment case number, then reswap.
x
: caseincr
s/9</<0/
t caseincr
s/^</0</
s/\(.\?\)<\(.*\)\(>.*\1\(.\)\)/\4\2<\3/
x

# Copy case number from hold space and reorganize into output format.
G
s/\(.*\)\n\(.*\)<.*/Case #\2: \1/
