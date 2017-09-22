//
//  ViewController.swift
//  Operation
//
//  Created by 김수현 on 2017. 9. 22..
//  Copyright © 2017년 김수현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var plusLB:UILabel!
    @IBOutlet var minusLB:UILabel!
    @IBOutlet var squareLB:UILabel!
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var plus:Int = plusFunc(plusNum1: 5,plusNum2: 2)
        plusLB.text = String(plus)
        //plusLB.text = String("\(plusNum1)"+"\(plusNum2)"="\(plus)")
        
        var minus:Int = minusFunc(minusNum1: 10, minusNum2: 5)
        minusLB.text = String(minus)
        
        var square:Int = SquareFunc(type: "P", s: 5)
        squareLB.text = String(square)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func plusFunc(plusNum1:Int, plusNum2:Int) -> Int{
        return plusNum1 + plusNum2
    }
    
    func minusFunc(minusNum1:Int, minusNum2:Int) -> Int{
        return minusNum1 - minusNum2
    }
    
    func SquareFunc(type:String,s:Int) -> Int{
        var result:Int = 0
        if type == "A"{
            result = s*s
        }else if type == "P"{
            result = 4*s
        }
        return result
    }


}

