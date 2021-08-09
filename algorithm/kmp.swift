//
//  kmp.swift
//  Swift_Child
//
//  Created by andyccc on 2021/8/6.
//

import Foundation

/**
 参考
 https://www.cnblogs.com/PyLearn/p/10145107.html
 https://blog.csdn.net/feiyanaffection/article/details/79304199
 
 */
class Kmp {
    
    static func run() {
        var t1 = "abcde"
        var t2 = "cde"
        var ret = kmp(t1, t2)
        
        print("ret = \(ret)")
    }
    
    static func kmp(_ s : String, _ p : String) -> Int { // 时间复杂度 O(m) + O(n) ==> O(m + n)
        var ret = -1
        let slen = s.count
        let plen = p.count
        
        let pmt = make_pmt(p)
        
        if (pmt.count > 0) && (plen > 0) && (plen <= slen) {
            var j = 0
            for i in 0 ..< slen {
                let cs = s[s.index(s.startIndex, offsetBy: i)]
                let cp = p[p.index(p.startIndex, offsetBy: j)]
                while j > 0 && ( cs != cp) {
                    j = pmt[pmt.index(pmt.startIndex, offsetBy: j - 1)]
                }
             
                if cs == cp {
                    j += 1
                }
                
                if j == plen {
                    ret = i + 1 - plen
                    break
                }
            }
        }
        
        return ret
    }
    
    static func make_pmt(_ p: String) -> [Int] { // 时间复杂度O(m)
        
        let len = p.count
        var ret = [Int]()
        
        var ll = 0
        ret.append(0)
//        ret[0] = 0
        
        for i in 1 ..< len {
            while ll > 0 && p[p.index(p.startIndex, offsetBy: ll)] != p[p.index(p.startIndex, offsetBy: i)] {
                ll = ret[ll - 1]
            }
            
            if p[p.index(p.startIndex, offsetBy: ll)] == p[p.index(p.startIndex, offsetBy: i)] {
                ll += 1
            }
            
            ret.append(ll)
//            ret[i] = ll
        }
        
        return ret
    }
    
    
}

