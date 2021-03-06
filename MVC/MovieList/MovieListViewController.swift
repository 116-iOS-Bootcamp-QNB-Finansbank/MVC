//
//  ViewController.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet var movieListView: MovieListView! {
        didSet {
            movieListView.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getMovies()
    }
    
    var service: ClientNetworkServiceProtocol!
    var movies: [Result] = []

    func getMovies() {
        service.movies { response, error in
            guard let results = response?.feed.results else { return }
            self.movies = results
            self.movieListView.showMovies(results.map(MovieListPresentation.init))
        }
    }
}

extension MovieListViewController: MovieListViewDelegate {
    func didSelectRow(indexPath: IndexPath) {
        let movie = self.movies[indexPath.row]
        let viewController = MovieDetailBuilder.build(with: movie)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
