//
//  FourLabel.swift
//  ViewEmViewCode2
//
//  Created by user218968 on 5/25/22.
//

import UIKit

class FourLabel: UILabel {
    private let title: String
    init(title: String, frame: CGRect = .zero) {
        self.title = title
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
    
    func setup () {
        text = title
        numberOfLines = 0
        backgroundColor = .systemBlue
        textAlignment = .center
        textColor = .systemPink
        layer.cornerRadius = 25
        layer.masksToBounds = true
        font = .preferredFont(forTextStyle: .headline)
    }
}
