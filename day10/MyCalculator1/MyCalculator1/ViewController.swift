//
//  ViewController.swift
//  MyCalculator1
//
//  Created by 김수현 on 2017. 9. 14..
//  Copyright © 2017년 김수현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var displayLabel:UILabel!
  
    var resultNumber:Int = 0
    var oper:String = ""
    var isErase:Bool = false //연산자 눌렀을때 새로운 값을 받는 변수

    //숫자 및 AC버튼 눌렀을 경우
    @IBAction func numberKeyClick(btn:UIButton){
        
        //AC버튼을 눌렀을 경우 0 이되도록
        if(btn.titleLabel!.text == "c"){
            displayLabel.text = "0"
            //숫자를 눌렀을경우
        }else {
            //숫자 중 0을 경우 또는 연산자눌렀을때 숫자 초기화 필요 경우
            if(displayLabel.text == "0" || isErase){
                displayLabel.text = btn.titleLabel!.text
                isErase = false
                //숫자를 눌렀을경우 입력받은값을 Label에 추가해준다
            }else{
                displayLabel.text! += btn.titleLabel!.text!
            }
        }
    }
    
    //연산자 버튼을 눌렀을 경우
    @IBAction func operatorKeyClick(btn:UIButton){
        //=을 입력받으면 값을 연산한다
        if(btn.titleLabel!.text! == "="){
            //oper 변수 값에 따른 연산 조건문
            if(oper == "+"){
                resultNumber += Int(displayLabel.text!)!
            }else if(oper == "-"){
                resultNumber -= Int(displayLabel.text!)!
            }else if(oper == "x"){
                resultNumber *= Int(displayLabel.text!)!
            }else if(oper == "/"){
                resultNumber /= Int(displayLabel.text!)!
            }
            displayLabel.text = String(resultNumber)
            isErase = true
        }else {
            //+ - x / 연산자를 입력했을 경우
            //resultNumber 변수에 값을 저장
            //oper변수에 입력받은 연산자를 저장
            //다음 입력값을 받기위해 값을 지워줌
            resultNumber = Int(displayLabel.text!)!
            oper = btn.titleLabel!.text!
            isErase = true
        }
        
    }

    



}

