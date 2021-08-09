//
//  Maopao.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation

/**
 冒泡排序思想：依次比较相邻元素，然后按条件进行元素交换
 时间复杂度 o(n平方)
 最优情况 o(n)
 最差情况 o(n平方)
 空间复杂度 o(1)
 排序方式 In
 稳定性 true
 
 
 */
class MaoPao {
    
    static func run() {
        var nums = [8, 7, 6, 1, 2, 3, 4, 5];
        let len = nums.count - 1
        for i in 0 ..< len {
            for j in 0 ..< len - i {
                if nums[j] > nums[j+1] {
                    let tmp = nums[j]
                    nums[j] = nums[j+1]
                    nums[j+1] = tmp
                }
            }
        }
        print("nums : \(nums)")
    }
    
}
