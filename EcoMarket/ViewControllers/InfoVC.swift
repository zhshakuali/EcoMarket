//
//  InfoVC.swift
//  EcoMarket
//
//  Created by Жансая Шакуали on 15.12.2023.
//

import UIKit

class InfoVC: UIViewController {
    
    
    private let imageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "infoImage")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Эко Маркет"
        label.font = UIFont(name: "TTNormsPro-Bold", size: 24)
        label.textColor = UIColor(red: 0.121, green: 0.121, blue: 0.121, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textLabel: UILabel = {
       let label = UILabel()
        label.text = "Фрукты, овощи, зелень, сухофрукты а так же сделанные из натуральных ЭКО продуктов (варенье, салаты, соления, компоты и т.д.) можете заказать удобно, качественно и по доступной цене. Готовы сотрудничать взаимовыгодно с магазинами. Наши цены как на рынке. Мы заинтересованы в экономии ваших денег и времени. Стоимость доставки 150 сом и ещё добавлен для окраину города. При отказе подтвержденного заказа более 2-х раз Клиент заносится в чёрный список!!"
        label.font = UIFont(name: "TTNormsPro-Regular", size: 16)
        label.textColor = UIColor(red: 0.673, green: 0.671, blue: 0.679, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let callButton: UIButton = {
       let button = UIButton()
        button.setTitle("Позвонить", for: .normal)
        button.setTitleColor(UIColor(red: 0.121, green: 0.121, blue: 0.121, alpha: 1), for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 16
        button.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let whatsAppButton: UIButton = {
       let button = UIButton()
        button.setTitle("WhatsApp", for: .normal)
        button.setTitleColor(UIColor(red: 0.121, green: 0.121, blue: 0.121, alpha: 1), for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 16
        button.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let instaButton: UIButton = {
       let button = UIButton()
        button.setTitle("Instagram", for: .normal)
        button.setTitleColor(UIColor(red: 0.121, green: 0.121, blue: 0.121, alpha: 1), for: .normal)
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 16
        button.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = .systemBackground
        title = "Инфо"
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(textLabel)
        view.addSubview(callButton)
        view.addSubview(whatsAppButton)
        view.addSubview(instaButton)
        setConstraints()
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 270),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 24),
            
            textLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            callButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 33),
            callButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            callButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            callButton.heightAnchor.constraint(equalToConstant: 54),
            
            whatsAppButton.topAnchor.constraint(equalTo: callButton.bottomAnchor, constant: 12),
            whatsAppButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            whatsAppButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            whatsAppButton.heightAnchor.constraint(equalToConstant: 54),
            
            instaButton.topAnchor.constraint(equalTo: whatsAppButton.bottomAnchor, constant: 12),
            instaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            instaButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            instaButton.heightAnchor.constraint(equalToConstant: 54)
            
        ])
       
    }
    

}
