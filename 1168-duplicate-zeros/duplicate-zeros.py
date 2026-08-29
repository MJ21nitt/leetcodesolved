class Solution(object):
    def duplicateZeros(self, arr):
        """
        :type arr: List[int]
        :rtype: None Do not return anything, modify arr in-place instead.
        """
        length=len(arr)
        newarr=[]
        for i in arr:
            if i==0:
                newarr.append(i)
                newarr.append(0)
            else:
                newarr.append(i)
        arr[:]=newarr[:length]