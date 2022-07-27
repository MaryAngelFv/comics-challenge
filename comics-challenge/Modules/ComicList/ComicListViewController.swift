//
//  ComicListViewController.swift
//  comics-challenge
//
//  Created by Brayam Mora on 26/07/22.
//

import UIKit

class ComicListViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    private var presenter = ComicListPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
        configureTableView()
    }
    
    func configureTableView() {
        tableView.backgroundColor = .black
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ComicListTableViewCell.self, forCellReuseIdentifier: "ComicListTableViewCell")
    }
}

extension ComicListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ComicListTableView") as? ComicListTableViewCell else {
            return UITableViewCell()
        }
        let comic: Comic = presenter.getComic(at: indexPath.row)
        cell.configureData(image: comic.thumbnail, titleText: comic.title)
        return cell
    }
}

extension ComicListViewController: ComicListViewDelegate {
    
}

