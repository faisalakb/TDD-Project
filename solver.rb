class Solver
    def factorial(n)
      raise ArgumentError, "Input must be a non-negative integer" if n < 0
      return 1 if n == 0
      (1..n).reduce(:*)
    end
  

  end
  
  # Example usage:
  solver = Solver.new
  puts solver.factorial(5)     # Output: 120

