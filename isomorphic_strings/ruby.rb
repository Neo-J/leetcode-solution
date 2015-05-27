# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    sLen = s.length
    tLen = t.length
    hash_s = {}
    hash_t = {}
    if sLen != tLen
        false
    else
        for i in 0..sLen do
            tmp_s = hash_s[s[i]]
            tmp_t = hash_t[t[i]]
            if tmp_s or tmp_t
                next if (tmp_s == t[i]) and (tmp_t == s[i]) 
                return false
            else
                hash_s[s[i]] = t[i]
                hash_t[t[i]] = s[i]
            end
        end
    end
    true
end