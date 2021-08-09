//
//  Xier.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation


/**
 希尔排序：希尔排序是插入排序的改进版本，将整个待排序序列分割成若干个子序列，分别对子序列进行排序
 时间复杂度：O（n log n）
 最优情况：O（n log平方 n）
 最差情况：O（n log平方 n）
 空间复杂度：O（1）
 排序方式：In
 稳定性：False
  
 */
class Xier {
    static func run() {
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]
        let len = nums.count
        let per = 2
        var grap = len / per
        
        while grap > 0 {
            // 对各个分组进行插入排序
            for i in grap ..< len {
                print("i ==== \(i)")
                /**
                 4 5 6 7 8
                 */
                var preIndex = i - grap
                let currentEle = nums[i]
                while preIndex >= 0, nums[preIndex] > currentEle {
                    nums[preIndex+grap] = nums[preIndex]
                    preIndex -= grap
                }
                nums[preIndex + grap] = currentEle
                
            }
            grap = grap / per
        }
        
        print("nums : \(nums)")

    }
}
