//
//  Registration_VC.swift
//  ImageEdify
//
//  Created by Vikrant on 7/15/18.
//  Copyright © 2018 Vikrant. All rights reserved.
//

import UIKit

class Registration_VC: UIViewController
{
    @IBOutlet weak var viewOfHeader: UIView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var btnBackOutlet: UIButton!
    
    @IBOutlet weak var imgHeader: UIImageView!
    
    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBOutlet weak var viewOfBottom: UIView!
    
    @IBOutlet weak var viewOfFullname: UIView!
    
    @IBOutlet weak var imgFullname: UIImageView!
    
    @IBOutlet weak var txtFullname: UITextField!
    
    @IBOutlet weak var viewOfBoaderForFullname: UIView!
    
    
    @IBOutlet weak var viewOfEmail: UIView!
    
    @IBOutlet weak var imgEmail: UIImageView!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var viewOfBoaderForEmail: UIView!
    
    @IBOutlet weak var viewOfPassword: UIView!
    
    @IBOutlet weak var imgPassword: UIImageView!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    @IBOutlet weak var viewOfBoaderForPassword: UIView!
    
    
    @IBOutlet weak var btnSignupOutlet: UIButton!
    
    @IBOutlet weak var btnAlreadySignupOutlet: UIButton!
    
    let app_Controller = App_Controller()
    let app_Delegate = AppDelegate()
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = "Registration"
        lblTitle.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_White)
        
        txtFullname.placeholder = "Enter your fullname"
        txtFullname.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Dark_Gray)
        
        
        viewOfBoaderForFullname.alpha = 0.7
        viewOfBoaderForFullname.backgroundColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Light_Gray)

        txtEmail.placeholder = "Enter your email"
        txtEmail.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Dark_Gray)
        
        viewOfBoaderForEmail.alpha = 0.7
        viewOfBoaderForEmail.backgroundColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Dark_Gray)
        
        txtPassword.placeholder = "Enter your password"
        txtPassword.textColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Dark_Gray)
        
        
        viewOfBoaderForPassword.alpha = 0.7
        viewOfBoaderForPassword.backgroundColor = self.app_Delegate.hexStringToUIColor(hex: self.app_Controller.App_Color_Dark_Gray)
    }

    @IBAction func btnSignupAction(_ sender: Any)
    {
        if txtFullname.text?.isEmpty == true || txtEmail.text?.isEmpty == true || txtPassword.text?.isEmpty == true || txtConfirmPassword.text?.isEmpty == true
        {
            let alertController = UIAlertController(title: "Alert", message: "Please enter all details", preferredStyle:.alert)
            
            let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                
            }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
            
        }
        else
        {
            userDefaults.set(txtFullname.text, forKey: "Fullname")
            userDefaults.set(txtEmail.text, forKey: "Email")
            userDefaults.set(txtPassword.text, forKey: "Password")
            userDefaults.set(txtConfirmPassword.text, forKey: "ConfirmPassword")
            
            let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Login_VC") as! Login_VC
            self.navigationController?.pushViewController(controller, animated: true)
            
            let alertController = UIAlertController(title: "Alert", message: "Successfully Registrated...", preferredStyle:.alert)
            
            let action1 = UIAlertAction(title: "Okay", style: .default){(action:UIAlertAction) in
                
            }
            alertController.addAction(action1)
            self.present(alertController, animated: true, completion: nil)
            
            
            
        }
        
    }
    

}
