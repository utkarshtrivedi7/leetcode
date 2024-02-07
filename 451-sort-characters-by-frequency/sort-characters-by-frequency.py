class Solution:
    def frequencySort(self, s: str) -> str:

        mp = Counter(s)
        r = OrderedDict(sorted(mp.items(), key=lambda x:x[1], reverse=True))
        ss = ''.join([char * freq for char, freq in r.items()])
        return ss


    
        