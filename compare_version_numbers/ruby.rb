# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    v1 = version1.split(".").map!{|x| x.to_i} 
    v2 = version2.split(".").map!{|x| x.to_i}
    while v1.size != v2.size
        v1.size > v2.size ? v2.push(0) : v1.push(0)
    end
    for i in 0..v1.size-1
        return 1 if v1[i] > v2[i]
        return -1 if v1[i] < v2[i]
    end
    0
end