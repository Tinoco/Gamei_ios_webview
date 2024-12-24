//
//  ViewController.swift
//  readtimepro
//
//  Created by Jean Carlos.
//  Copyright © 2019 Jean Carlos. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self as? WKNavigationDelegate
        view = webView
        
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://readtime.pro)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

