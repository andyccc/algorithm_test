//
//  Kuaipai.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation


/**
 快速排序：选择一个基数（一边序列中间元素），将大于基数的数放在右边，小于该基数的数放在左边，让后对象左右两个数组重复前面的步骤知道排序好为止
 时间复杂度：O(n log n)
 最优情况：O(n log n)
 最差情况：O（n平方）
 空间复杂度：O(log n)
 排序方式：In
 稳定性：False
 
 */
class Kuaipai {
    
    
    static func run() {
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]
        
        nums = quickSort(nums: nums)
        
        print("nums : \(nums)")

    }
    
    static func quickSort(nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return nums
        }
        
        let  pivot = nums[nums.count / 2]
        var less = [Int]()
        var equal = [Int]()
        var greater = [Int]()
        
        for num in nums {
            if num > pivot {
                greater.append(num)
            } else if num < pivot {
                less.append(num)
            } else {
                equal.append(num)
            }
        }
        return quickSort(nums: less) + equal + quickSort(nums: greater)
    }
    
}
