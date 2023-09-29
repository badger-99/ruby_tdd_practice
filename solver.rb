class Solver
  def factorial(int)
    raise ArgumentError, 'Input must be a non-negative integer' if int.negative?
    return 1 if int.zero?

    result = 1
    num = 1
    while num <= int
      result *= num
      num += 1
    end
    result
  end
end
