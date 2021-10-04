//
//  MovieDetailViewController.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet var movieDetailView: MovieDetailView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieDetailView.showMovieDetail(MovieDetailPresentation(movie: movie))
    }

    var movie: Result!
}
