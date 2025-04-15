= Two Sum
\
From leetcode: https://leetcode.com/problems/two-sum/\

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.



Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

\
Such a simple problem to solve using loops but I was interested in how to solve this problem in a loopless manner.
\
\

```j
   twosum=: 4 : '{. 4 $. $. x = (= i. # y) + +/~ y'
   9 twosum 2 7 11 15
0 1
   6 twosum 3 2 4
1 2
   6 twosum 3 3
0 1

```

