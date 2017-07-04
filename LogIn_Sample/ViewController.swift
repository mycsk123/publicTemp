//
//  ViewController.swift
//  LogIn_Sample
//
//  Created by 0000 on 04/07/2017.
//  Copyright © 2017 0000. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //계정 선언 및 관리자 계정 생성(int 0은 관리 권한 1은 일반)
    var account: [String:(String, Int)] = ["admin":("0000", 0)]
    
    @IBOutlet weak var tfID: UITextField!
    
    @IBOutlet weak var tfPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //접속(로그인) 버튼
    @IBAction func btnLogin(_ sender: UIButton) {
        
        if(checkAccount(id: tfID.text!, pass: tfPass.text!))
        {
//            //계정 권한에 따라 화면 이동
//            if()
//            {
//                //관리자 모드
//            }
//            else
//            {
//                //일반 모드
//            }
            
        }
        else
        {
            
        }
        
    }
    
    //회원 가입 버튼
    @IBAction func btnJoin(_ sender: UIButton) {
    }
    
    
    //계정 검사
    func checkAccount(id:String, pass:String) -> Bool{
        
        //계정이 존재하나?
        if(account[id] == nil)
        {
            //계정이 존재하지 않는다.
            message(tempmessage: "계정이 존재하지 않습니다")
            return false
        }
        else
        {
            //비번이 맞나?
            if(account[id]?.0 == pass)
            {
                message(tempmessage: "로그인 성공")
                return true
                
            }
            else
            {
                message(tempmessage: "비밀번호가 틀립니다.")
            }
            return false
        }
    }
    
    
    //메시지창
    func message(tempmessage: String){
        let mAlert = UIAlertController(title: "정보", message: tempmessage, preferredStyle: UIAlertControllerStyle.alert)
        let Action = UIAlertAction(title: "확인", style: .default, handler: nil)
        mAlert.addAction(Action)
        present(mAlert, animated: true, completion: nil)
    }

}

