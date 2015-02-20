# Test score
# 100%
# 100 out of 100 points

# Detected time complexity:
# O(1)
# test  time  result
# Example tests
# example 
# example test  0.044 s OK
# Correctness tests
# simple1 
# simple test 0.044 s OK
# simple2 0.044 s OK
# extreme_position 
# no jump needed  0.044 s OK
# small_extreme_jump 
# one big jump  0.044 s OK
# Performance tests
# many_jump1 
# many jumps, D = 2 0.044 s OK
# many_jump2 
# many jumps, D = 99  0.056 s OK
# many_jump3 
# many jumps, D = 1283  0.044 s OK
# big_extreme_jump 
# maximal number of jumps 0.044 s OK
# small_jumps 
# many small jumps  0.044 s OK

# If y - x is divisible by d, then it takes (y - x) / d jumps
# If y - x is not divisible by d, then it takes (y - x) / d + 1 jumps


def solution1 (x, y, d)
  return (y - x) / d if (y - x) % d == 0
  (y - x) / d + 1
end

def solution2 (x, y ,d)
    (y - x) / d + ((y - x) % d == 0 ? 0 : 1)
end