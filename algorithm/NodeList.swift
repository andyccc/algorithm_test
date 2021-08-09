//
//  NodeList.swift
//  algorithm
//
//  Created by andyccc on 2021/8/9.
//

import Foundation

// 定义链表节点
class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

/**
 https://www.jianshu.com/p/24b2c51bc3dc
 数据结构之 swift 实现链表反转

 */
class ReverList {
    
    static func run() {
        
        let alist = ListNode(1)
        let blist = ListNode(2)
        let clist = ListNode(3)
        let dlist = ListNode(4)
        
        alist.next = blist
        blist.next = clist
        clist.next = dlist
        
        let newlist = reverList(node: alist)
        print("==== \(newlist.val)")
        print("---- \(newlist.next!.val)")
        print("---- \(newlist.next!.next!.val)")

    }
    
    static func reverList(node: ListNode) -> ListNode {
        var last: ListNode?
        var next: ListNode?
        var nodeH: ListNode? = node
        
        while nodeH != nil { // nodeH 一次尾部移动，nodeH.next 总是last，中间变量next为了记录nodeH要向前移动的位置
            next = nodeH?.next
            nodeH?.next = last
            last = nodeH
            nodeH = next
        }
        // 循环结束的条件是nodeH == nil 所以头节点是last
        return last!
        
        
    }
    
}


