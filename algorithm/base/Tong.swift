//
//  Tong.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/2.
//

import Foundation


/**
 桶排序：将有序序列拆分到若干桶中，然后在对每个非空桶进行排序，然后整合输出得到有序序列
 时间复杂度：O(N+K)
 最优情况：O(n+K)
 最差情况：O(n平方)
 空间复杂度：O(n+k)
 排序方式：Out
 稳定性：True
  
 */
class Tong {
    static func run() {
        var nums = [5, 7, 8, 3, 1, 2, 4, 6]
        
        nums = bucketSort(arr: nums, grap: 1 )
        
        print("nums : \(nums)")
        

    }
    
    /**
     1 首先找出数组中max和min
     2 确定gap，确定桶的个数
     3 将数据填充到桶中
     4 对非空桶进行排序
     5 合并桶
     */
    static func bucketSort(arr: [Int], grap: Int) -> [Int] {
        // 1
        var min = Int.max
        var max = Int.min
        
        for num in arr {
            if num < min {
                min = num
            } else if num > max {
                max = num
            }
        }
        
        // 2 确定桶数量
        let bucketCount = (max - min) / grap + 1
        var bucketArr = [[Int]]()
        for _ in 0..<bucketCount {
            bucketArr.append([Int]())
        }
        
        // 3 将数据填入桶中
        for num in arr {
            let index = (num - min) / grap
            bucketArr[index].append(num)
        }
        
        // 4 对非空桶进行排序
        for (index, var subArr) in bucketArr.enumerated() {
            if subArr.count > 0 {
                // 进行排序（可以选择冒泡排序，选择排序，插入排序，希尔排序，归并排序，计数排序）
                let len = subArr.count - 1
                for i in 0 ..< len {
                    let k = len - 1
                    for j in 0 ..< k {
                        if subArr[j] > subArr[j+1] {
                            let tmp = subArr[j]
                            subArr[j] = subArr[j + 1]
                            subArr[j + 1] = tmp
                        }
                    }
                }
                bucketArr[index] = subArr
            }
        }
        print(bucketArr)
        
        // 5 输出
        var results = [Int]()
        for subArr in bucketArr {
            if subArr.count > 0 {
                results.append(contentsOf: subArr)
            }
        }
        
        return results
    }
    
    
}
