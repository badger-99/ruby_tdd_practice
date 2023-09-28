class Solver
  def factorial(int)
    return 0 if int.zero?

    result = 1
    num = 1
    while num <= int
      result *= num
      num += 1
    end
    result
  end
end
