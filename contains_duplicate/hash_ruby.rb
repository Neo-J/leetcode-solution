# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    hash = {}
    nums.each do |x|
        return true if hash[x]
        hash[x] = x;
    end
    false
end