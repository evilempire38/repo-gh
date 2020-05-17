//
//  VKLoginFormController.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 13.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit
import WebKit
import Alamofire

class VKLoginFormController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "oauth.vk.com"
        urlComponents.path = "/authorize"
        urlComponents.queryItems = [
            URLQueryItem(name: "client_id", value: "7464021"),
            URLQueryItem(name: "display", value: "mobile"),
            URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
            URLQueryItem(name: "scope", value: "262150"),
            URLQueryItem(name: "response_type", value: "token"),
            URLQueryItem(name: "v", value: "5.103")
        ]
        
        let request = URLRequest(url: urlComponents.url!)
        
        webView.load(request)
        
        
        print(request)
        webView.navigationDelegate = self
    }
    
}
extension VKLoginFormController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        
        guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {
            decisionHandler(.allow)
            return
        }
        let params = fragment
            .components(separatedBy: "&")
            .map { $0.components(separatedBy: "=") }
            .reduce([String: String]()) { result, param in
                var dict = result
                let key = param[0]
                let value = param[1]
                dict[key] = value
                return dict
        }
        
        guard let token = params["access_token"],
            let userId = Int(params["user_id"]!)
            else {decisionHandler(.cancel)
                return}
       
        Session.connect.token = token
        Session.connect.userId = userId
        print(Session.connect.token)
        
        
        
        
        performSegue(withIdentifier: "VKLogin", sender: nil)
        decisionHandler(.cancel)
        
    }
    
} 
