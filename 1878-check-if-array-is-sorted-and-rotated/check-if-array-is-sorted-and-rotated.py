class Solution(object):
    def check(self, nums):
        """
        :type nums: List[int]
        :rtype: bool
        """
        count_drops = 0
        n = len(nums)
        
        for i in range(n):
            # Compare current element with the next element
            # (i + 1) % n wraps the last element back to the first element
            if nums[i] > nums[(i + 1) % n]:
                count_drops += 1
                
            # Optimization: If we see more than 1 drop, it's already invalid
            if count_drops > 1:
                return False
                
        return True
        