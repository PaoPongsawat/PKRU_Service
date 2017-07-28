//
//  SignUpViewController.swift
//  PKRU_Service
//
//  Created by Com422Mac10 on 7/28/2560 BE.
//  Copyright © 2560 Com422Mac10. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //Impliclit
    
    let strBlankAlert = "Please Fill All Every Blank"
    let strFontPHP = "http://androidthai.in.th/pkru/addDataPao.php?isAdd=true&Name="
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    
    @IBAction func saveButton(_ sender: Any) {
        let strName: String = nameTextField.text!
        let strUser: String = userTextField.text!
        let strPassword: String = passwordTextField.text!
        
        
        //Show Log
        print("strName ==>\(strName)")
        print("strUser ==> \(strUser)")
        print("strPassword ==> \(strPassword)")
        
        
        //Check Space
        if (strName == "") || (strUser == "") || (strPassword == "") {
            //have space
            
            alertLabel.text = strBlankAlert
        }else{
            
            //No space
            
            uploadToServer(strName: strName, strUser: strUser, strPassword: strPassword)
        }
        
        
        
        
        
    }//saveButton
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        
        
        
        
        
     // Do any additional setup after loading the view.
    }//viewLoad:oad

    func uploadToServer(strName:String,strUser:String,strPassword:String) -> Void {
        let strPHP:String = strFontPHP + "\(strName)&User=\(strUser)&Password=\(strPassword)"
        print("strPHP ==> \(strPHP)")
        
    }//UploadToServer
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
