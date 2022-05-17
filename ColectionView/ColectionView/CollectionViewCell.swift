//
//  CollectionViewCell.swift
//  ColectionView
//
//  Created by user218968 on 5/16/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var collectionView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.collectionView.layer.borderColor = .init(red: 55, green: 55, blue: 55, alpha: 55)
        
        
    }
}
extension UIView{
        public func addViewBorder(borderColor:CGColor,borderWidth:CGFloat,borderCornerRadius:CGFloat){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        self.layer.cornerRadius = borderCornerRadius
        }
}

