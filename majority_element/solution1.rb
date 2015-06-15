# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    count = 0
    j=nums[0]
    for i in 0..nums.size do
        j = nums[i] if count == 0
        nums[i]==j ? count+=1 : count-=1
    end
    j
end