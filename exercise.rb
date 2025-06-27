class Exercise

  # Replace words 5+ letters with "marklar" or "Marklar", preserving punctuation
  def self.marklar(str)
    str.split.map do |word|
      punctuation = word[/[[:punct:]]$/] || ''
      core = word.gsub(/[[:punct:]]$/, '')

      if core.length >= 5
        replacement = core[0] == core[0].upcase ? "Marklar" : "marklar"
        replacement + punctuation
      else
        word
      end
    end.join(" ")
  end

  # Sum even Fibonacci numbers up to the nth term in the sequence
  def self.even_fibonacci(nth)
    fib = [1, 1]
    (nth - 2).times { fib << fib[-1] + fib[-2] } if nth > 2
    fib = fib.first(nth)
    fib.select(&:even?).sum
  end

end
