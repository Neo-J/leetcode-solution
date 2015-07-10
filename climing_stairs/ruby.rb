# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    a = b = 1
    n.times { a, b = b, a+b }
    a
end