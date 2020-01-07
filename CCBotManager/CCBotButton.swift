//
//  CCBotButton.swift
//  CCBotManager
//
//  Created by 羅翊修 on 2020/1/7.
//  Copyright © 2020 羅翊修. All rights reserved.
//

import UIKit

public class CCBotButton: UIButton {
    
    var superVC: UIViewController
    var bottomSpace: CGFloat
    
    public required init(belongVC: UIViewController, bottomSpace: CGFloat = 50) {
        self.superVC = belongVC
        self.bottomSpace = bottomSpace
        
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func build() {
        setAutoLayout(into: superVC.view)
        buttonImage()
        setAction()
    }
    
    private func setAutoLayout(into superView: UIView?) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let superView = superView {
            superView.addSubview(self)
            self.bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: -self.bottomSpace).isActive = true
            self.trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: 0).isActive = true
        }
    }
    
    private func buttonImage(_ name: String = "iconUdnMember") {
        self.setImage(UIImage(named: name), for: .normal)
        self.imageView?.contentMode = .scaleAspectFill
    }
    
    private func setAction() {
        self.addTarget(self, action: #selector(toNextPage), for: .touchUpInside)
    }

    @objc
    private func toNextPage() {
        superVC.present(CCBotViewController.shared, animated: true, completion: nil)
    }
}
