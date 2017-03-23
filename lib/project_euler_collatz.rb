def even_next(n)
  n / 2
end

def odd_next(n)
  n * 3 + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  arr = [n]
  while n > 1
    arr << next_value(n)
    n = arr.last
  end
  arr
end

def longest_collatz
  (800000..999999).to_a.map {|num| collatz(num)}.max_by(&:length).first
end
