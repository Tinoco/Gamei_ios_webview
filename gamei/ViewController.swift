//
//  ViewController.swift
//  Gamei
//
//  Created by Jean Tinoco.
//  Copyright © 2019 Jean Tinoco. All rights reserved.
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
        
        let url = URL(string: "https://gamei.hidedomain.info")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

