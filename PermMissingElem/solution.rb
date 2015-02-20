def solution(a)
  n = a.size
  sum = (n + 2) * (n + 1) / 2
  for i in 0..n
     sum -= a[i].to_i
  end
  sum
end