//
//  ItemCell.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import UIKit

class ItemCell: UITableViewCell {

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
        setupFonts()
        setupColors()
        DispatchQueue.main.async { self.setupLayers()}
    }
    private func setupFonts() {
        
    }
    private func setupLayers() {
        
    }
    private func setupColors() {
        
    }
    private func refreshView() {
        setupText()
        setupImages()
    }
    private func setupImages() {
        
    }
    private func setupText() {
        
    }
}
