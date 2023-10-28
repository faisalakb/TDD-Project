class Solver
    def factorial(n)
      raise ArgumentError, "Input must be a non-negative integer" if n < 0
      return 1 if n == 0
      (1..n).reduce(:*)
    end
  
    def reverse(word)
      word.reverse
    end
  
    def fizzbuzz(n)
      case
      when n % 3 == 0 && n % 5 == 0
        "fizzbuzz"
      when n % 3 == 0
        "fizz"
      when n % 5 == 0
        "buzz"
      else
        n.to_s
      end
    end
  end
  
  
  solver = Solver.new
  puts solver.factorial(5)     
  puts solver.reverse("hello")
  puts solver.fizzbuzz(15)     
  puts solver.fizzbuzz(7)      
  