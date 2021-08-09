//
//  Diguimaopao.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/6.
//

import Foundation

/**
 递归冒泡
 
 */
class Diguimaopao {
    static func run() {
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]
        
        nums = bubbleSort(nums, nums.count)
        
        print("nums : \(nums)")
    }
    
    static func bubbleSort(_ a :[Int], _ n :Int) -> [Int] {
        var nums = a
        var tmp :Int
        if n > 0 {
            bubbleSort(nums, n - 1) //递归最底层是a[0]和a[1]在比较,等同非递归内层for循环比较一遍
            if nums[n] < nums[n - 1] {
                tmp = nums[n]
                nums[n] = nums[n - 1]
                nums[n-1] = tmp
            }
            bubbleSort(nums, n - 1) //等同非递归时while(n--)作用
        }
        return nums
    }
    
    
}
