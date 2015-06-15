# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums.sort.at(nums.size/2)
end