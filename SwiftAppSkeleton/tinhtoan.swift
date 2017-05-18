//
//  tinhtoan.swift
//  SwiftAppSkeleton
//
//  Created by Kien Nguyen Duc on 5/18/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit
enum PhuongTrinhBac2Error: Error {
    case voNghiem
    case aBangKhong
}

class PhuongTrinhBac2  {

    /*
     a * x^2 + b * x + c = 0
     trả về nghiệm (x1, x2) tuple
     */
    func phuongTrinhBac2(a:Double, b:Double, c:Double) throws -> (Double, Double) {
        if a == 0 {
            
            if b == 0 {
                throw PhuongTrinhBac2Error.voNghiem
            }
            throw PhuongTrinhBac2Error.aBangKhong
        }
        let delta = b * b - 4 * a * c
        
        if delta < 0 {
            throw PhuongTrinhBac2Error.voNghiem
        }
        
        let sqrtDelta = delta.squareRoot()
        
        return ((sqrtDelta - b) / (2 * a), (-sqrtDelta - b) / (2 * a))
        
    }
}
