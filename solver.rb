class Solver
    def factorial(n)
        raise ArgumentError, "Factorial is not defined for negative integers" if n < 0
        return 1 if n == 0
        result = 1
        (1..n).each { |i| result *= i }
        result
      end
end