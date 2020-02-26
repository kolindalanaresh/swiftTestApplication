//
//  WebViewController.swift
//  sample
//
//  Created by admin on 26/02/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit
import WebKit
class WebViewController: UIViewController, WKNavigationDelegate, WKUIDelegate  {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet var webViewContainer: UIView!
    var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //unhide navigation bar
        self.navigationController?.navigationBar.isHidden = false
        
        //Load url in webview
//           let url = URL(string: "https://www.youtube.com")
//           webView.load(URLRequest(url: url!))
        
        //delegate method for webview
        webView.navigationDelegate = self
        webView.uiDelegate = self
        
        
        activityIndicator = UIActivityIndicatorView()
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = UIActivityIndicatorView.Style.gray

        self.view.addSubview(activityIndicator)
        
        webView.load(URLRequest(url: URL(string: "https://www.youtube.com")!))


    }
    
    
    //webview delegate methods
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
    {
          print(error.localizedDescription)
        activityIndicator.stopAnimating()
     }
     func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
     {
          //        UIApplication.shared.isNetworkActivityIndicatorVisible = true
          print("Strat to load")
        activityIndicator.startAnimating()
     }
     

    
   func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
    }

}
