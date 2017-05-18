//
//  PTBac2.swift
//  SwiftAppSkeleton
//
//  Created by Kien Nguyen Duc on 5/18/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit

class PTBac2: UIViewController {
    
    @IBOutlet weak var lbl_a: UITextField!
    
    @IBOutlet weak var lbl_b: UITextField!
    
    @IBOutlet weak var lbl_c: UITextField!
    
    
    @IBAction func btn_tinhtoan(_ sender: UIButton) {
        nhapso()
        inketqua()
        }
    
    
    @IBOutlet weak var lbl_x2: UILabel!
    @IBOutlet weak var lbl_x1: UILabel!
    
    var a : Double!
    var b : Double!
    var c : Double!
    var PTBac2 : PhuongTrinhBac2!
    var inkq : PhuongTrinhBac2!

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    
    func nhapso() {
        PTBac2 = PhuongTrinhBac2()
        
        a = Double(lbl_a.text!)!
        b = Double(lbl_b.text!)!
        c = Double(lbl_c.text!)!

        }
    func inketqua() {
        inkq = PhuongTrinhBac2()
        do {
            let(x1, x2) = try inkq.phuongTrinhBac2(a: a, b: b, c: c)
            lbl_x1.text = String(x1)
            lbl_x2.text = String(x2)
            
        } catch PhuongTrinhBac2Error.voNghiem {
            lbl_x1.text = String("Phương trình vô nghiệm")
            
        } catch PhuongTrinhBac2Error.aBangKhong {
            lbl_x1.text = String("a = 0.0 phương trình tuyến tính")
            
        } catch {
        lbl_x1.text = String("Lỗi không rõ lỗi gì")
        }
        
        
        
}
    
    
            
        
        
        
        
        
        
        
        
    }
    

