//
//  ItemDisplayHeader.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import UIKit

class ItemDisplayHeader: UITableViewHeaderFooterView {

    //Elements
    @IBOutlet private var xibContentView: UIView!
    @IBOutlet private var titleLabel: UILabel!

    //MARK: Properties
    var title: String? {
        didSet { refreshView() }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
}

//MARK: Helpers
extension ItemDisplayHeader {
    private func setupUI() {
        setupColors()
        titleLabel.sizeToFit()
    }
    private func setupColors() {
        titleLabel.backgroundColor = .clear
        titleLabel.textColor = .black
    }
    private func refreshView() {
        titleLabel.isHidden = (title ?? "").isEmpty
        titleLabel.text = title
    }
}

//MARK: Custom Height
extension ItemDisplayHeader {
    static func calculateHeaderViewHeight(title: String) -> CGFloat {
        var totalHeaderHeight: CGFloat = 0
        totalHeaderHeight += 10
        if !title.isEmpty {
            let font = UIFont.systemFont(ofSize: 20)
            totalHeaderHeight += font.singleLineHeight()
        }
        totalHeaderHeight += 16
        return totalHeaderHeight
    }
}
