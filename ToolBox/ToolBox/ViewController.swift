//
//  ViewController.swift
//  ToolBox
//
//  Created by 김수현 on 2017. 9. 22..
//  Copyright © 2017년 김수현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cmToInchLB:UILabel!
    @IBOutlet var inchToCmLB:UILabel!
    @IBOutlet var m2ToPLB:UILabel!
    @IBOutlet var pToM2LB:UILabel!
    @IBOutlet var fToCLB:UILabel!
    @IBOutlet var cToFLB:UILabel!
    @IBOutlet var timeToSecLB:UILabel!
    @IBOutlet var secToTimeLB:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var cmToIn:Double = cmToInchFn(cmNum: 3)
        cmToInchLB.text = String("3cm = \(cmToIn)inch")
        
        var inTocm:Double = inchToCmFn(inchNum: 3)
        inchToCmLB.text = String("3inch = \(inTocm)cm")
        
        
        var m2ToP:Double = m2ToPFn(meterNum: 5)
        m2ToPLB.text = String("5m2 = \(m2ToP)평")
        
        var PToM2:Double = Ptom2(PNum: 1)
        pToM2LB.text = String("1평 = \(PToM2)m2")
        
        
        var fToC:Double = fToCFn(fNum: 1)
        fToCLB.text = String("1F = \(fToC) C")
        
        var cToF:Double = cToFFn(cNum: 1)
        cToFLB.text = String("1C = \(cToF)F")
        
        var timeToSec:Int = timeToSecFn(time: 11320)
        timeToSecLB.text = String("1시13분20초 = \(timeToSec)초")
        
        var secToTime:Int = secToTimeFn(sec: 4400)
        secToTimeLB.text = String("4400초 = \(secToTime)초")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //cm inch
    func cmToInchFn(cmNum:Int) -> Double{
        var Inch:Double = 0.393701
        return Inch * Double(cmNum)
    }
    func inchToCmFn(inchNum:Int) -> Double{
        var cm:Double = 2.54
        return cm * Double(inchNum)
    }
    
    //m2 평
    func m2ToPFn(meterNum:Int) -> Double{
        var PNum = 0.3025
        return PNum * Double(meterNum)
    }
    
    func Ptom2(PNum:Int) -> Double{
        var meterNum:Double = 3.305785
        return meterNum * Double(PNum)
    }
    
    //화씨 섭씨
    func fToCFn(fNum:Double) -> Double{
        var cNum:Double = (fNum-32)/1.8
        return cNum
    }
    
    func cToFFn(cNum:Int) -> Double{
        var fNum:Double = Double(cNum) * 1.8 + 32
        return fNum
    }
    
    //시간을 초단위
    func timeToSecFn(time:Int) -> Int{
        var second:Int = time % 100
        var tempMinute:Int = time / 100
        var minute:Int = tempMinute % 100 * 60
        var hour:Int = tempMinute / 100 * 3600
        
        return hour + minute + second
    }

    func secToTimeFn(sec:Int) -> Int{
        var hour:Int = sec / 3600 * 10000
        var tempMinute = sec % 3600
        var minute = tempMinute / 60 * 100
        var second = tempMinute % 60
        
        return hour + minute + second
    }

}

