//
//  MovieCollectionViewCell.swift
//  PressPlay
//
//  Created by mcor on 09/07/22.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(title:String, image: UIImage) {
        titleLabel.text = title
        imageView.image = image
    }
    
}
