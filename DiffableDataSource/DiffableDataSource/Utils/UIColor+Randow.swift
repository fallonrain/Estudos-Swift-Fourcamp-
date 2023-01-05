//
//  UIColor+Randow.swift
//  DiffableDataSource
//
//  Created by user218968 on 5/26/22.
//

import UIKit

extension CGFloat {
    static func randow() -> CGFloat {
        CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randow() -> UIColor {
        UIColor(red: .randow(),
                green: .randow(),
                blue: .randow(),
                alpha: 1.0)
        
    }
}
