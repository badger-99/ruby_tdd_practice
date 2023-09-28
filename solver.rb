class Solver
  def factorial(int)
    result = 1
    num = 1
    while num <= int do
      result *= num
      num += 1
    end
    result
  end
end
