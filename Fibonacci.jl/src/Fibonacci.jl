module Fibonacci

  export fib_i
  export fib_r
  export fib_m

  "Returns n^th value of fibonacci sequence using iterative method"
  function fib_i(n)

    if n < 3
      fib = n - 1
    else
      a1 = 0; a2 = 1
      for i = 3:n
        fib = a2 + a1
        a1 = a2
        a2 = fib
      end
    end

    return fib

  end

  "Returns n^th value of fibonacci sequence using recursive method"
  function fib_r(n)

    if n < 3
      fib = n-1
    else
      fib = fib_r(n-1) + fib_r(n-2)
    end
    
    return fib

  end

  "Returns n^th value of fibonacci sequence using memoization method"
  function fib_m(n,memo)

    if !(n in keys(memo))
      memo[n] = fib_m(n-1,memo) + fib_m(n-2,memo)
    end
    
    return memo[n]

  end

end
