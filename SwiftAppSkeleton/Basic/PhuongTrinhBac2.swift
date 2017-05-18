//
//  PhuongTrinhBac2.swift
//  SwiftAppSkeleton
//
//  Created by cuong on 5/16/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit
enum PhuongTrinhBac2Error: Error {
    case voNghiem
    case aBangKhong
}

class PhuongTrinhBac2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            let (x1, x2) =  try self.phuongTrinhBac2(a: 1, b: 2, c: 1)
            print("x1 = ", x1, "x2 = ", x2)
        } catch PhuongTrinhBac2Error.voNghiem {
            print("Phương trình vô nghiệm");
        } catch PhuongTrinhBac2Error.aBangKhong {
            print("a = 0.0 phương trình tuyến tính");
        } catch {
            print("Lỗi không rõ lỗi gì")
        }
    }
    /*
     a * x^2 + b * x + c = 0
     trả về nghiệm (x1, x2) tuple
    */
    func phuongTrinhBac2(a:Double, b:Double, c:Double) throws -> (Double, Double) {
        if a == 0 {
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
