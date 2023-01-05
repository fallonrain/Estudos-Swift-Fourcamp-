//
//  PopularMoviesCell.swift
//  DesafioMobile2019Teste14
//
//  Created by user220270 on 9/28/22.
//

import Foundation
import UIKit

class PopularMoviesCell: UICollectionViewCell{
    
    var reuseId = "cell"
    
    
    lazy var movieBanner:UIImageView = {
        let movieBanner = UIImageView()
         movieBanner.translatesAutoresizingMaskIntoConstraints = false
        movieBanner.image = UIImage(named: "download")
        return movieBanner
    }()
    lazy var labelDate: UILabel = {
        let labelDate = UILabel()
        labelDate.translatesAutoresizingMaskIntoConstraints = false
        labelDate.text = "06/06/06"
        labelDate.textColor = .white
        labelDate.font = .boldSystemFont(ofSize: 10)
        
        return labelDate
    }()
    
    lazy var creditsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelDate])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        //stackView.alignment = .center
        stackView.layoutMargins = UIEdgeInsets(top: 5, left: 7, bottom: 5, right: 7)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        stackView.layer.borderWidth = 1
        
        
        
        return stackView
    }()
    
    lazy var labelTitle: UILabel = {
        let labelTitle = UILabel()
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        labelTitle.text = "Teste"
        labelTitle.textColor = .white
        labelTitle.font = .systemFont(ofSize: 12)
        labelTitle.numberOfLines = 3
        labelTitle.adjustsFontSizeToFitWidth = true
        
        return labelTitle
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        contentView.addSubview(movieBanner)
        
        
        contentView.addSubview(creditsStackView)
        contentView.addSubview(labelTitle)
        setupConstrants()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupConstrants () {
        NSLayoutConstraint.activate([
        movieBanner.topAnchor.constraint(equalTo: contentView.topAnchor),
        movieBanner.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        movieBanner.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
       // movieBanner.bottomAnchor.constraint(equalTo: labelTitle.topAnchor),
        
        creditsStackView.bottomAnchor.constraint(equalTo: movieBanner.bottomAnchor, constant: -5),
        creditsStackView.centerXAnchor.constraint(equalTo: movieBanner.centerXAnchor),
        
        
        labelTitle.topAnchor.constraint(equalTo: movieBanner.bottomAnchor,constant: 10),
        labelTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 5),
        labelTitle.widthAnchor.constraint(equalTo: contentView.widthAnchor),
        labelTitle.heightAnchor.constraint(equalToConstant: 30),
        labelTitle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
      ])
    }
}
