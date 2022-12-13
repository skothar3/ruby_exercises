def fibs(num)
  return [0] if num <= 1
  return fibs(num - 1) + [1] if num == 2
  return fibs(num - 1) << fibs(num - 1)[-1] + fibs(num - 1)[-2]

end

p fibs(18)