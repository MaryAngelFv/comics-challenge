//
//  ComicListTableViewCell.swift
//  comics-challenge
//
//  Created by Brayam Mora on 26/07/22.
//

import UIKit

class ComicListTableViewCell: UITableViewCell {
    
    private var comicImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        contentView.addSubview(comicImage)
        let comicImageConstraints = [
            comicImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            comicImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            comicImage.widthAnchor.constraint(equalToConstant: 40),
            comicImage.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(comicImageConstraints)
        
        contentView.addSubview(titleLabel)
        let titleLabelConstraints = [
            titleLabel.centerYAnchor.constraint(equalTo: comicImage.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: comicImage.trailingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(titleLabelConstraints)
    }
    
    func configureData(image: String, titleText: String) {
        titleLabel.text = titleText
        
    }
}
