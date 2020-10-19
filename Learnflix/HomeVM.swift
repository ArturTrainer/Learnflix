//
//  HomeVM.swift
//  Learnflix
//
//  Created by Artur Akhmetshin on 19.10.2020.
//

import Foundation

class HomeVM: ObservableObject {
    //String == Category
    @Published var movies:[String: [Movie]] = [:]
    
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0) })
    }
    
   
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Tending Now"] = exampleMovies
        movies["Stand Up Comedy"] = exampleMovies.shuffled()
        movies["Science"] = exampleMovies.shuffled()
        movies["Horror"] = exampleMovies.shuffled()
        movies["Drama"] = exampleMovies.shuffled()

    }
}
