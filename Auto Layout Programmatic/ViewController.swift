//
//  ViewController.swift
//  Auto Layout Programmatic
//
//  Created by Nix on 11/2/18.
//  Copyright © 2018 NXN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let candyImageView: UIImageView = {
        let image = UIImage(named: "candyBar")
        let imageView = UIImageView(image: image)
        
        // enables autolayout for imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "This is a candy bar!"
        textView.textColor = .white
        textView.backgroundColor = .black
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        positionCandyImageView()
        positionDescriptionTextView()
    }
    
    private func positionCandyImageView() -> Void {
        view.addSubview(candyImageView)
        
        NSLayoutConstraint.activate([
            candyImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            candyImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            candyImageView.widthAnchor.constraint(equalToConstant: 300),
            candyImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func positionDescriptionTextView() -> Void {
        view.addSubview(descriptionTextView)
        
        
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: candyImageView.bottomAnchor, constant: 100),
            descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor),
            descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor),
            descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

}

