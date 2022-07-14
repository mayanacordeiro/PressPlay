//
//  DetailsViewController.swift
//  PressPlay
//
//  Created by mcor on 14/07/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var backdropImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let movie = movie else {
            return
        }
        
        title = movie.title
        backdropImage.image = UIImage(named: movie.poster)
        titleLabel.text = movie.title
        posterImage.image = UIImage(named: movie.poster)
        ratingLabel.text = "Rating:\(movie.voteAverage)/10"
        overviewLabel.text = movie.overview

    }
    

    
}
