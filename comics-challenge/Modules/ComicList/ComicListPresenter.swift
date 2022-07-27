//
//  ComicListPresenter.swift
//  comics-challenge
//
//  Created by Brayam Mora on 26/07/22.
//

import Foundation

protocol ComicListViewDelegate: AnyObject {
    
}

class ComicListPresenter {
    
    weak var delegate: ComicListViewDelegate?
    private var comics: [Comic] = []
    
    init() { }
    
    func numberOfRows() -> Int {
        return comics.count
    }
    
    func getComic(at index: Int) -> Comic {
        return comics[index]
    }
}
