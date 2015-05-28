# @param {Integer} n
# @return {Integer}
def count_primes(n)
    return 0 if n<3
    primes = [true]*n
    primes[0] = primes[1] = false
    sqrn = Math.sqrt(n).to_i
    for i in 1..sqrn do
        next if !primes[i]
        for j in (i*i..n-1).step(i) do
            primes[j]=false
        end
    end
    primes.count(true)
end