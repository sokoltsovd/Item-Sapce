//
//  ViewController.swift
//  Item Sapce
//
//  Created by Dmitry Sokoltsov on 18.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let dotaButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("DOTA 2", for: .normal)
        button.backgroundColor = .black
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let csgoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("CS:GO", for: .normal)
        button.backgroundColor = .black
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 30
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let selectItemImageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .black
        image.image = UIImage(named: "chest")
        image.contentMode = .scaleAspectFit
        image.layer.borderWidth = 5
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        
        
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        SetConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        selectItemImageView.layer.cornerRadius = selectItemImageView.frame.width / 2
    }
    
    private func setupViews() {
        view.backgroundColor = .black
        view.addSubview(selectItemImageView)
    }
    
    
}

//MARK: - SetConstraints

extension ViewController {
    
    private func SetConstraints() {
        
        NSLayoutConstraint.activate([
            selectItemImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            selectItemImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            selectItemImageView.heightAnchor.constraint(equalToConstant: 300),
            selectItemImageView.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            
        ])
        
        NSLayoutConstraint.activate([
            
        ])
    }
}
