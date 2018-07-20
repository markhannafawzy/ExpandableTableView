//
//  MoviesModel.swift
//  ExpandableCollectionView
//
//  Created by Mark on 7/18/18.
//  Copyright © 2018 Mark. All rights reserved.
//

import Foundation
class MoviesModel{
    
    private func fileURL() -> URL? {
        var url: URL?
        if let path = Bundle.main.path(forResource: "db", ofType: "json"){
            print(path)
            url = URL(fileURLWithPath: path)
        }
        else{
            print("invalid path for file")
        }
        return url
    }
    
    private func jsonResult() -> MovieList? {
        var movieList: MovieList?
        do {
            let data = try Data(contentsOf: fileURL()!)
            print(data)
            movieList = try JSONDecoder().decode(MovieList.self, from: data)
        } catch {
            print(error)
        }
        return movieList
    }
    
    func moviesSectionedByGenre() -> [Section]{
        var sections: [Section] = [Section]()
        let movies = jsonResult()?.movies
        for movie in movies! {
            for genre in movie.genres{
                var sectiontoBeAdded: Section?
                if !sections.contains(where: {section in
                    sectiontoBeAdded = section as Section?
                    return section.genre == genre}){
                    sectiontoBeAdded = Section(genre: genre , expanded: false)
                    sectiontoBeAdded?.movies.append(movie)
                    sections.append(sectiontoBeAdded!)
                }else{
                    sectiontoBeAdded?.movies.append(movie)
                }
            }
        }
        return sections
    }
}
