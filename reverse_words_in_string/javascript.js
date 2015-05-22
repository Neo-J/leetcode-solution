/**
 * @param {string} str
 * @returns {string}
 */
var reverseWords = function(str) {
    var result = str.split(" ");
    for(var i = result.length - 1; i >= 0; i--) {
        if(result[i] === "") {
            result.splice(i, 1);
        }
    }
    return result.reverse().join(" ");
};