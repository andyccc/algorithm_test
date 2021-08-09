//
//  Charu.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation

/**
 插入排序：勾线有序序列，对于未排序的数据，在已排序序列中从后向前扫描，找到相应的位置插入，直到排序完成
 时间复杂度：O（n平方）
 最优情况：O（n）
 最差情况：O（n平方）
 空间复杂度：O（1）
 排序方式：In
 稳定性：True
 
 */
class Charu {
    
    static func run() {
        var nums = [5, 4, 3, 2]

        let count = nums.count
        
        // 外层循环需要多少次才能排好
        for i in 1 ..< count {
            
            var preIndex = i - 1
            let currentEle = nums[i]
            while preIndex >= 0, nums[preIndex] > currentEle {
                // 向后移动一位
                nums[preIndex + 1] = nums[preIndex]
                preIndex -= 1
                
            }
            
            // 将新元素插入
            print(preIndex)
            nums[preIndex + 1] = currentEle
            
        }
        
        print("nums : \(nums)")

        
    }
    
    
}
