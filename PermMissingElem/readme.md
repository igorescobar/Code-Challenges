# PermMissingElem
## Find the missing element in a given permutation.
## level: easy
```
Detected time complexity:
O(N) or O(N * log(N))
test  time  result
Example tests
example 
example test  0.044 s OK
Correctness tests
empty_and_single 
empty list and single element 0.044 s OK
missing_first_or_last 
the first or the last element is missing  0.044 s OK
single 
single element  0.044 s OK
double 
two elements  0.044 s OK
simple 
simple test 0.044 s OK
Performance tests
medium1 
medium test, length = ~10,000 0.048 s OK
medium2 
medium test, length = ~10,000 0.048 s OK
large_range 
range sequence, length = ~100,000 0.072 s OK
large1 
large test, length = ~100,000 0.104 s OK
large2 
large test, length = ~100,000 0.080 s OK
```
A zero-indexed array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
Your goal is to find that missing element.
Write a function:
def solution(a)
that, given a zero-indexed array A, returns the value of the missing element.
For example, given array A such that:
  A[0] = 2
  A[1] = 3
  A[2] = 1
  A[3] = 5
the function should return 4, as it is the missing element.
Assume that:
N is an integer within the range [0..100,000];
the elements of A are all distinct;
each element of array A is an integer within the range [1..(N + 1)].
Complexity:
expected worst-case time complexity is O(N);
expected worst-case space complexity is O(1), beyond input storage (not counting the storage required for input arguments).
Elements of input arrays can be modified.