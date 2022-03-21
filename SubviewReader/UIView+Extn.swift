//
//  UIView+Extn.swift
//  SubviewReader
//
//  Created by Piyush Priyadarshi on 21/03/22.
//

import Foundation

import UIKit
extension UIView {
    public var allSubviews: [UIView] {
        return self.subviews.flatMap { [$0] + $0.allSubviews }
    }
}

extension UIView{
    var globalPoint :CGPoint? {
        return self.superview?.convert(self.frame.origin, to: nil)
    }
    
    var globalFrame :CGRect? {
        return self.superview?.convert(self.frame, to: nil)
    }
}
