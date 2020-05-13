//
//  LoginFormController.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 26.03.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class LoginFormController: UIViewController {
    @IBOutlet weak var scrollBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var loginTitleView: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(
                    self,
                    selector: #selector(keyboardWasShown(notification:)),
                    name: UIResponder.keyboardWillShowNotification,
                    object: nil)
                NotificationCenter.default.addObserver(
                    self,
                    selector: #selector(keyboardWillBeHidden(notification:)),
                    name: UIResponder.keyboardWillHideNotification,
                    object: nil)
            }

            
            override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                navigationController?.setNavigationBarHidden(false, animated: true)
                
            }

          override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            
                let checkResult = checkUserData()
                if !checkResult {
                    showLoginError()
                }
                return checkResult
            }
            
            func checkUserData() -> Bool {
                guard let login = loginField.text,
                    let password = passField.text else { return false }
                if login == "admin" && password == "123456" {
                    return true
                } else {
                    return false
                }
            }
            
            func showLoginError() {
                
                let alter = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alter.addAction(action)
                present(alter, animated: true, completion: nil)
            }

                
            @objc func keyboardWasShown(notification: Notification) {
                let userInfo = (notification as NSNotification).userInfo as! [String: Any]
                let frame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                
                scrollBottomConstraint.constant = -frame.height
            }
            
            @objc func keyboardWillBeHidden(notification: Notification) {
                scrollBottomConstraint.constant = 0
            }

    }
    
    
    


    




