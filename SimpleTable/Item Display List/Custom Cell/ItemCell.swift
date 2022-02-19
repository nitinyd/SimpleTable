//
//  ItemCell.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import UIKit

class ItemCell: UITableViewCell {

    //Elements
    @IBOutlet private var primaryImageView1: UIImageView!
    @IBOutlet private var primaryImageView2: UIImageView!
    @IBOutlet private var secondaryImageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    
    
    //Properties
    var cellData: ItemModel? {
        didSet { refreshView() }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
}

//MARK:- Helpers
extension ItemCell {
    private func setupUI() {
        setupColors()
        DispatchQueue.main.async { self.setupLayers()}
    }
    private func setupLayers() {
        primaryImageView1.layer.cornerRadius = LayoutConstants.imageCornerRadius
        primaryImageView2.layer.cornerRadius = LayoutConstants.imageCornerRadius
        secondaryImageView.layer.cornerRadius = LayoutConstants.imageCornerRadius
    }
    private func setupColors() {
        self.backgroundColor = .white
        primaryImageView1.backgroundColor = .gray
        primaryImageView2.backgroundColor = .gray
        secondaryImageView.backgroundColor = .gray
    }
    private func refreshView() {
        setupText()
        setupImages()
    }
    private func setupImages() {
        if let primaryImage1 = cellData?.primaryImage1 { primaryImageView1.image = UIImage(named: primaryImage1) }
        if let primaryImage2 = cellData?.primaryImage1 { primaryImageView1.image = UIImage(named: primaryImage2) }
        if let secondaryImage = cellData?.primaryImage1 { primaryImageView1.image = UIImage(named: secondaryImage) }
    }
    private func setupText() {
        if let title = cellData?.title {
            titleLabel.text = title
        } else {
            titleLabel.isHidden = true
        }
    }
}
