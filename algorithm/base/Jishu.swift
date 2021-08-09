//
//  Jishu.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation


/**
 计数排序：找到序列A中的max和min，创建一个max-min+1 大小的数组B，数组B中记录A中某匀速出现的次数，然后按B中次数一次输出元素，得到有序数组
 时间复杂度：O(N+K)
 最优情况：O(N+K)
 最差情况：O(N+K)
 空间复杂度：O(k)
 排序方式：Out
 稳定性：True
 
 */

class Jishu {
    static func run() {
        
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]
        
        nums = countSort(nums: nums)
        
        print("nums : \(nums)")

        
    }
    
    static func countSort(nums: [Int]) -> [Int] {
        var max = Int.min
        var min = Int.max
        
        // 1. 找到最大值
        for num in nums {
            if num > max {
                max = num
            } else if num < min {
                min = num
            }
        }
        
        // 2.创建一个长度为 max - min + 1的数组
        let len = max - min + 1
        var tmpArr = Array.init(repeating: 0, count: len)
        
        for num in nums {
            let tmpIndex = num - min
            
            // 统计元素出现的次数
            tmpArr[tmpIndex] = tmpArr[tmpIndex] + 1
        }
        
        var resultArr = [Int]()
        for (index, var num) in tmpArr.enumerated() {
            let value = index + min
            while num > 0 {
                resultArr.append(value)
                num -= 1
            }
        }
        return resultArr
    }
    
    
    
}
