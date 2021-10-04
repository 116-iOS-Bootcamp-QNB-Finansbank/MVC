//
//  MovieDetailView.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import UIKit

class MovieDetailView: UIView, MovieDetailViewProtocol {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    func showMovieDetail(_ movie: MovieDetailPresentation) {
        nameLabel.text = movie.name
        releaseDateLabel.text = movie.releaseDate
        genreLabel.text = movie.genre
    }
}
