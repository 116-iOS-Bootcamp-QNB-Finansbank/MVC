//
//  MovieListView.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import UIKit

class MovieListView: UIView, MovieListViewProtocol  {
    @IBOutlet weak var tableView: UITableView!
    
    weak var delegate: MovieListViewDelegate?
    
    private var movies: [MovieListPresentation] = []
    
    func showMovies(_ movies: [MovieListPresentation]) {
        self.movies = movies
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension MovieListView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectRow(indexPath: indexPath)
    }
}

extension MovieListView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListTableViewCell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row].title
        return cell
    }
}
