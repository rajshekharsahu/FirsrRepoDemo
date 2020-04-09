//
//  ViewController.swift
//  Redkert
//
//  Created by Rajshekhar Sahu on 08/04/20.
//  Copyright © 2020 Rajshekhar Sahu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate,UIWebViewDelegate {
    
    @IBOutlet var spinner: UIActivityIndicatorView!
    @IBOutlet var WKWebVw: WKWebView!
    @IBOutlet var lblLoading: UILabel!
    @IBOutlet var vwHolder: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //New
        // let url = URL(string: "https://google.com")
        let url = URL(string: "https://zcart.incevio.com/")
        //let url = Bundle.main.url(forResource: "terms2", withExtension: "html")
        WKWebVw.load(URLRequest(url: url!))
        //WKWebVw.loadHTMLString("", baseURL: <#T##URL?#>)
        WKWebVw.navigationDelegate = self
        WKWebVw.uiDelegate = self
        
        //WKWebVw.scrollView.bouncesZoom = false
    }

    func webView(_ webView: WKWebView,
                 didFinish navigation: WKNavigation!) {
        print("loaded")
        //WKWebVw.evaluateJavaScript("alert('Hello from evaluateJavascript()')", completionHandler: nil)
        spinner.stopAnimating()
        spinner.isHidden = true
        lblLoading.isHidden = true
        vwHolder.isHidden = true
    }
}

