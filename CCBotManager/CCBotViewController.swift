//
//  CCBotViewController.swift
//  CCBotManager
//
//  Created by 羅翊修 on 2020/1/7.
//  Copyright © 2020 羅翊修. All rights reserved.
//

import UIKit
import WebKit

public class CCBotViewController: UIViewController {
    
    public static let shared = CCBotViewController()
    
    let webView: WKWebView = WKWebView(frame: .zero)
    public var url: String = ""
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupWebView(url: url)
    }
    
    func setupWebView(url: String) {
        view.addSubview(webView)

        let layoutGuide = view.safeAreaLayoutGuide
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true

        if let url = URL(string: url) {
            webView.load(URLRequest(url: url))
        }
    }
}
