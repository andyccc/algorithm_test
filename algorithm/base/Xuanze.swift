//
//  Xuanze.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation

/**
 选择排序：如果是升序排序，首先从未排序序列中找出最小值放在第一位，然后继续在剩下未排序的序列中找出最小值放在第二位，依次类推知道排序完成
 
 时间复杂度：o(n平方)
 最优情况：o(n平方)
 最差情况：o(n平方)
 空间复杂度：o(1)
 排序方式：In
 稳定性：False
 */
class Xuanze {
    
    static func run() {
        var min = Int.max
        var minIndex = 0
        var nums = [3, 5, 3, 11]
        
        for i in 0 ..< nums.count - 1 {
            let k = i
            for j in k ..< nums.count {
                if nums[j] < min {
                    min = nums[j]
                    minIndex = j
                }
            }
            
            print("循环次数 === i = \(i)")
            print("最小数值的索引值 minIndex= \(minIndex)")
            
            // 在这里进行替换
            let tmp = nums[i]
            nums[i] = min
            nums[minIndex] = tmp
            
            // 交换完成记得修改min
            min = Int.max
        }
        
        print("nums : \(nums)")
    }
    
    
}
