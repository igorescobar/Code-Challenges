# https://codility.com/demo/results/demoT3AEFZ-WTH/

def solution(a)
	head = a.first
	tail = a[1..a.size].inject(:+)
	min_diff = (head - tail).abs

	for i in (1..(a.size-1)).to_a do
		head += a[i]
		tail -= a[i]
		min_diff = (head - tail).abs if (head - tail).abs < min_diff
	end

	min_diff
end