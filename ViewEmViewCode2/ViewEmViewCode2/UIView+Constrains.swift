//
//  UIView+Constrains.swift
//  ViewEmViewCode2
//
//  Created by user218968 on 5/25/22.
//

import UIKit

struct AnchoredConstrainsts {
    var top, leading, bottom, trailing, width, height: NSLayoutConstraint?
}

extension UIView {
    @discardableResult
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                leading: NSLayoutYAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                trailing: NSLayoutYAxisAnchor? = nil,
                padding: UIEdgeInsets = .zero,
                size: CGSize = .zero) -> AnchoredConstrainsts {
        translatesAutoresizingMaskIntoConstraints = false
        var anchoredConstrains = AnchoredConstrainsts()
        
        if let top = top {
            anchoredConstrains.top = topAnchor.constraint(equalTo: top, constant: padding.top)
        }
        
 //       if let leading = leading {
 //           anchoredConstrains.leading = leadingAnchor.constraint(equalTo: leading, constant: padding.left)
 //       }
        
        if let bottom = bottom {
            anchoredConstrains.bottom = bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom)
        }
        
//        if let trailing = trailing {
//           anchoredConstrains.trailing = trailingAnchor.constraint(equalTo: trailing, constant: -padding.right)
//        }
        
        if size.width != 0 {
            anchoredConstrains.width = widthAnchor.constraint(equalToConstant: size.width)
        }
        
        if size.height != 0 {
            anchoredConstrains.height = heightAnchor.constraint(equalToConstant: size.height)
        }
        
        [anchoredConstrains.top,
         anchoredConstrains.leading,
         anchoredConstrains.bottom,
         anchoredConstrains.trailing,
         anchoredConstrains.width,
         anchoredConstrains.height
        ].forEach {
            $0?.isActive = true
        }
        return anchoredConstrains
    }
}
