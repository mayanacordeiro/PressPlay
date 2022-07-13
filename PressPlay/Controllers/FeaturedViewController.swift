//
//  FeaturedViewController.swift
//  PressPlay
//
//  Created by mcor on 09/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let popularMovies = Movie.popularMovies()
    let nowPlayingMovies = Movie.nowPlayingMovies()
    let upcomingMovies = Movie.upcomingMovies()
    

    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var nowPlayingCollectionView: UICollectionView!
    @IBOutlet weak var upcomingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popularCollectionView.dataSource = self
        popularCollectionView.delegate = self
        
        nowPlayingCollectionView.dataSource = self
        nowPlayingCollectionView.delegate = self
        
        upcomingCollectionView.dataSource = self
        upcomingCollectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.popularCollectionView {
            return popularMovies.count
        } else if collectionView == self.nowPlayingCollectionView {
            return nowPlayingMovies.count
        } else if collectionView == self.upcomingCollectionView {
            return upcomingMovies.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
            cell?.titleLabel.text = popularMovies[indexPath.item].title
            cell?.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
                return cell ?? UICollectionViewCell()
        } else if collectionView == self.nowPlayingCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
            cell?.titleLabel.text = nowPlayingMovies[indexPath.item].title
            cell?.image.image = UIImage(named:  nowPlayingMovies[indexPath.item].poster)
            cell?.dateLabel.text = nowPlayingMovies[indexPath.item].releaseDate
            return cell ?? UICollectionViewCell()
        } else if collectionView == self.upcomingCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "upcomingCell", for: indexPath) as? UpcomingCollectionViewCell
            cell?.titleLabel.text = upcomingMovies[indexPath.item].title
            cell?.image.image = UIImage(named: upcomingMovies[indexPath.item].poster)
            return cell ?? UICollectionViewCell()
        } else {
            return UICollectionViewCell()
        }
        
    }
    
}
