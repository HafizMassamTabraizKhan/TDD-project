class Solver
  def factorial(num)
    raise ArgumentError, 'Factorial is not defined for negative integers' if num.negative?
    return 1 if num.zero?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
