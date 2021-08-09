//
//  Jishu2.swift
//  algorithm
//
//  Created by andyccc on 2021/8/6.
//

import Foundation

/**
 基数排序->桶 ： 讲整数按位分割，然后按位数用桶排序
 
 */
class Jishu2 {
    static func run() {
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]
        
        nums = radixSort(arr: nums)
        
        print("nums : \(nums)")
    }
    
    static func radixSort(arr: [Int]) -> [Int] {
        // 1 分配0-9个桶数组
        var bucketList = [[Int]]()
        for _ in 0 ..< 10 {
            bucketList.append([Int]())
        }
        
        print(bucketList.count)
        
        // 2 找出数组中最大的整数
        var max = 0
        for num in arr {
            if num > max {
                max = num
            }
        }
        
        // 3 计算出最大位数
        var maxCount = 1
        var tmp = max / 10
        while tmp != 0 {
            maxCount += 1
            tmp = tmp / 10
        }
        
        print("maxCount : \(maxCount)")
        
        var orignArr = arr
        
        // 4 按位数排序
        for i in 1 ... maxCount {
            print("开始处理位数 === \(i)")
            
            // 4.1 先排序
            for j in orignArr {
                // 4.2 获取数字所在的索引
                var digitNum = i
                var index = 0
                if digitNum == 1 {
                    index = j % 10
                } else {
                    var divisor = 1
                    while digitNum > 1 {
                        divisor = divisor * 10
                        digitNum -= 1
                    }
                    index = j / divisor
                }
                print(index)
                bucketList[index].append(j)
            }
            
            print(bucketList)
            
            // 4.3 替换
            var totalIndex = 0
            for arr in bucketList {
                for ele in arr {
                    orignArr[totalIndex] = ele
                    totalIndex += 1
                }
            }
            bucketList = [[Int]]()
            for _ in 0 ..< 10 {
                bucketList.append([Int]())
            }
            
            print(bucketList)
            print(orignArr)
        }
        print(orignArr)
        
        return orignArr
    }
    
}
