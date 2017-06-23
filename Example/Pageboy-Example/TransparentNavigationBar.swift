//
//  TransparentNavigationBar.swift
//  Pageboy-Example
//
//  Created by Merrick Sapsford on 15/02/2017.
//  Copyright © 2017 Merrick Sapsford. All rights reserved.
//

import UIKit

class TransparentNavigationBar: UINavigationBar {
    
    private var separatorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

        var titleTextAttributes: [String : Any] = [NSAttributedStringKey.foregroundColor.rawValue : UIColor.white]
        if #available(iOS 8.2, *) {
            titleTextAttributes[NSAttributedStringKey.font.rawValue] = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.regular)
        }
        self.titleTextAttributes = titleTextAttributes
        self.tintColor = UIColor.white.withAlphaComponent(0.7)
        
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
        
        let separatorView = UIView()
        separatorView.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        self.addSubview(separatorView)
        separatorView.frame = CGRect(x: 0.0,
                                     y: self.bounds.size.height - 1.0,
                                     width: self.bounds.size.width, height: 0.5)
        self.separatorView = separatorView
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.separatorView.frame = CGRect(x: 0.0,
                                          y: self.bounds.size.height - 1.0,
                                          width: self.bounds.size.width, height: 0.5)
    }
    
}
