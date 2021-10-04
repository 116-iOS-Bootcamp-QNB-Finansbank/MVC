//
//  MovieDetailBuilder.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import Foundation

class MovieDetailBuilder {
    static func build(with movie: Result) -> MovieDetailViewController {
        let viewController = MovieDetailViewController()
        viewController.movie = movie
        return viewController
    }
}
