# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    left = m+n-2
    right = [m,n].min-1
    ans = 1.0
    right.times do
        ans *= left
        left -= 1
        ans /= right
        right -= 1
    end
    ans.round
end