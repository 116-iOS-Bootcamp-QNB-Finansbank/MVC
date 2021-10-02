//
//  MovieListContracts.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import Foundation

protocol MovieListViewDelegate: NSObject {
    func didSelectRow(indexPath: IndexPath)
}

protocol MovieListViewProtocol: NSObject {
    func showMovies(_ movies: [MovieListPresentation])
}
