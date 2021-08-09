//
//  Guibin.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation


/**
 归并排序：分而治之，先排序拆分子序列，保证子序列有序，然后再将各个子序列进行合并
 时间复杂度：O（n log n）
 最优情况：O（n log方 n）
 最差情况：O（n log方 n）
 空间复杂度：O（n）
 排序方式：Out
 稳定性：True
 
 
 */
class Guibin {
    
    static func run() {
//        var nums = [5, 4, 3, 2]
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]

        nums = sort(arr: nums)
        
        print("nums : \(nums)")
    }
    
    static func sort(arr: [Int]) -> [Int] {
        if arr.count <= 1 { // 1.如果传入数组为空或者只有一个元素，我们就不需要继续拆分，直接返回
            return arr
        }
        
        let midIndex = arr.count / 2
        
        // 左边差分
        let leftArray = sort(arr: Array(arr[0..<midIndex]))
        // 右边拆分
        let rightArray = sort(arr: Array(arr[midIndex..<arr.count]))
        
        print("leftArray = \(leftArray)")
        print("rightArray = \(rightArray)")

        return merge(leftArr: leftArray, rightArr: rightArray)
    }
    
    static func merge(leftArr: [Int], rightArr: [Int]) -> [Int] {
        // 1.定义个左右两个索引
        var leftIndex = 0
        var rightIndex = 0
        
        // 2.定义一个临时数组
        var tmpArr = [Int]()
        
        // 3.开始合并
        while leftIndex < leftArr.count , rightIndex < rightArr.count {
            if leftArr[leftIndex] < rightArr[rightIndex] {
                // 左边元素小于右边
                tmpArr.append(leftArr[leftIndex])
                leftIndex += 1
            } else if leftArr[leftIndex] > rightArr[rightIndex] {
                // 左边元素大于右边
                tmpArr.append(rightArr[rightIndex])
                rightIndex += 1
            } else {
                tmpArr.append(leftArr[leftIndex])
                leftIndex += 1
                
                tmpArr.append(rightArr[rightIndex])
                rightIndex += 1
            }
        }
        
        // 4.添加为添加完的
        while leftIndex < leftArr.count {
            tmpArr.append(leftArr[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightArr.count {
            tmpArr.append(rightArr[rightIndex])
            rightIndex += 1
        }
        
        return tmpArr
    }
    
    
    
}
