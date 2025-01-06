class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        strs = sorted(strs)
        res = ""
        for char in range(len(strs[0])):
            if strs[0][char] == strs[len(strs)-1][char]:
                res += strs[0][char]
            else:
                return res
        return res
        