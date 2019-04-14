//
//  Login_VC.swift
//  ImageEdify
//
//  Created by Vikrant on 7/14/18.
//  Copyright © 2018 Vikrant. All rights reserved.
//

import UIKit


class Login_VC: UIViewController {
    
    @IBOutlet weak var viewOfHeader: UIView!
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var imgHeader: UIImageView!
    
    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBOutlet weak var viewOfBottom: UIView!
    
    @IBOutlet weak var viewOfEmail: UIView!
    
    @IBOutlet weak var imgEmail: UIImageView!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var viewOfBoaderForEmail: UIView!
    
    @IBOutlet weak var viewOfPassword: UIView!
    
    @IBOutlet weak var imgPassword: UIImageView!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var viewOfBoaderForPassword: UIView!
    
    @IBOutlet weak var btnLoginOutlet: UIButton!
    
    @IBOutlet weak var btnSignupOutlet: UIButton!
    
    
    let app_Controller = App_Controller()
    let app_Delegate = AppDelegate()
    let userDefaults = UserDefaults.standard
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        lblTitle.text = "Login"
        lblTitle.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_White)
        
        txtEmail.placeholder = "Enter your email"
        txtEmail.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Light_Gray)
        
        
        viewOfBoaderForEmail.alpha = 0.7
        viewOfBoaderForEmail.backgroundColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Light_Gray)
        
        txtPassword.placeholder = "Enter your password"
        txtPassword.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Light_Gray)
        
        
        viewOfBoaderForPassword.alpha = 0.7
        viewOfBoaderForPassword.backgroundColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Light_Gray)
        
        btnSignupOutlet.titleLabel?.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Main_Color)
        
        
    }

    @IBAction func btnLoginAction(_ sender: Any)
    {
        if txtEmail.text?.isEmpty == true && txtPassword.text?.isEmpty == true
        {
            let alertController = UIAlertController(title: "Alert", message: "Please enter email & password", preferredStyle:.alert)
            
            let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                
            }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
        }
        else
        {
            if txtEmail.text == userDefaults.string(forKey: "Email") && txtPassword.text == userDefaults.string(forKey: "Password")
            {
                
                let alertController = UIAlertController(title: "Alert", message: "Successfully Login", preferredStyle:.alert)
                
                let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                    
                }
                alertController.addAction(action1)
                self.present(alertController, animated: true, completion: nil)
            }
            else
            {
                let alertController = UIAlertController(title: "Alert", message: "Email & Password is wrong", preferredStyle:.alert)
                
                let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                    
                }
                alertController.addAction(action1)
                self.present(alertController, animated: true, completion: nil)
                
            }
            
        }
        
    }
    
    @IBAction func btnSignupAction(_ sender: Any)
    {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Registration_VC") as! Registration_VC
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
