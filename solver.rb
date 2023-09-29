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

  def reverse(str)
    char_arr = str.chars
    mid_point = (char_arr.length / 2) - 1
    char_arr[0..mid_point].each_with_index do |_char, index|
      opposite_idx = str.length - index - 1
      # swap
      temp = char_arr[index]
      char_arr[index] = char_arr[opposite_idx]
      char_arr[opposite_idx] = temp
    end
    char_arr.join
  end

  def fizzbuzz(int)
    if int % 3 == 0 && int % 5 == 0
      'fizzbuzz'
    elsif int % 3 == 0
      'fizz'
    else
      int.to_s
    end
  end
end
