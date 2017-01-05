# Sieve of Eratosthenes

module Eratosthenes
  class << self

    def sieve(max=100)
      candidates = Array.new max + 1, true
      candidates.fill false, 0..1
      
      2.upto Math.sqrt( candidates.size ).ceil do |n|
        if candidates[n]

          ( 2 * n..candidates.size - 1 ).step n do |f|
            candidates[f] = false 
          end
        end
      end

      primes = []
      candidates.each_index {|i| ( primes << i ) if candidates[i]}
      primes

    end
  end
end

