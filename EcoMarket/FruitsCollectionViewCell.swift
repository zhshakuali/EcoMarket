//
//  FruitsCollectionViewCell.swift
//  EcoMarket
//
//  Created by Жансая Шакуали on 17.12.2023.
//

import UIKit

class FruitsCollectionViewCell: UICollectionViewCell {
    static let identifier = "FruitsCollectionViewCell"

    
    private let titlePosterUIImageView: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.image = UIImage(named: "category card")
        image.layer.cornerRadius = 16
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
//    private let titleLabel: UILabel = {
//       let label = UILabel()
//        label.text = "фрукты"
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(titlePosterUIImageView)
//        contentView.addSubview(titleLabel)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titlePosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titlePosterUIImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titlePosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titlePosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            
//            titleLabel.topAnchor.constraint(equalTo: titlePosterUIImageView.bottomAnchor, constant: 10),
//            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16)
        
            
        ])
    }
}
