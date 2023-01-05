//
//  DetailsViewCell.swift
//  DesafioMobile2019Teste14
//
//  Created by user218968 on 9/28/22.
//


import UIKit

class DetailsViewCell: UICollectionViewCell, SetupView {
    
    let movieImage: UIImageView = {
        let movieImage = UIImageView()
        movieImage.backgroundColor = #colorLiteral(red: 0.1215686426, green: 0.1215686426, blue: 0.1215686426, alpha: 1)
        
        return movieImage
    }()
    
    let actorsNameLabel: UILabel = {
        let movieDateLabel = UILabel()
        movieDateLabel.text = "TEST1"
        movieDateLabel.numberOfLines = 3
        movieDateLabel.font = .systemFont(ofSize: 12, weight: .bold)
        movieDateLabel.textColor = .white
        
        return movieDateLabel
        
    }()
    
    lazy var actorsRoleLabel: UILabel = {
        let actorsRoleLabel = UILabel(frame: .zero)
        actorsRoleLabel.text = "TEST2"
        actorsRoleLabel.numberOfLines = 4
        actorsRoleLabel.font = .systemFont(ofSize: 12, weight: .bold)
        actorsRoleLabel.textColor = .white
        actorsRoleLabel.translatesAutoresizingMaskIntoConstraints = false
        return actorsRoleLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    
    func setupView() {
        
        contentView.backgroundColor = #colorLiteral(red: 0.1215686426, green: 0.1215686426, blue: 0.1215686426, alpha: 1)
        
    }
    
    func setupConstraints() {
        
        contentView.addSubview(movieImage)
        contentView.addSubview(actorsNameLabel)
        contentView.addSubview(actorsRoleLabel)
        
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        actorsNameLabel.translatesAutoresizingMaskIntoConstraints = false
        actorsRoleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        movieImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        movieImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        movieImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        movieImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
        actorsNameLabel.centerXAnchor.constraint(equalTo: movieImage.centerXAnchor).isActive = true
        actorsNameLabel.bottomAnchor.constraint(equalTo: actorsRoleLabel.topAnchor).isActive = true
        actorsNameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
        
        actorsRoleLabel.centerXAnchor.constraint(equalTo: movieImage.centerXAnchor).isActive = true
        actorsRoleLabel.bottomAnchor.constraint(equalTo: movieImage.bottomAnchor, constant: -10).isActive = true
        actorsRoleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.8).isActive = true
    
    }
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
}
