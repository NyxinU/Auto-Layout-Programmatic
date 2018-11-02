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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(candyImageView)
        
        NSLayoutConstraint.activate([
            candyImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            candyImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            candyImageView.widthAnchor.constraint(equalToConstant: 300),
            candyImageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }


}

