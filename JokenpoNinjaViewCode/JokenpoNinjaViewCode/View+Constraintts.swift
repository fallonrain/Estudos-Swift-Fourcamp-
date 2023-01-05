//
//  View+Constraintts.swift
//  JokenpoNinjaViewCode
//
//  Created by user218968 on 7/6/22.
//

import UIKit

extension UIView {
    
    open func constraintToItemInside(_ attribute: NSLayoutConstraint.Attribute,
                               _ toItem: Any?,
                               _ constant: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: attribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    open func constraintToItemOutside(_ attribute: NSLayoutConstraint.Attribute,
                               _ toItem: Any?,
                               _ constant: CGFloat = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        
        var itemAttribute: NSLayoutConstraint.Attribute
        
        switch attribute {
            
        case .top: itemAttribute = .bottom
            
        case .bottom: itemAttribute = .top
            
        case .leading: itemAttribute = .trailing
            
        case .trailing: itemAttribute = .leading
            
        default: return NSLayoutConstraint()
            
        }
        
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: itemAttribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    open func addSubviews(_ views: [UIView]) {
        
        for view in views {
            self.addSubview(view)
        }
        
    }
    
}
