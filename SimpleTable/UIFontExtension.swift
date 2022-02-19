//
//  UIFontExtension.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import UIKit

extension UIFont {
    func singleLineHeight() -> CGFloat {
        let frame = CGRect(x: 0, y: 0, width: 50, height: CGFloat.greatestFiniteMagnitude)
        let label = UILabel(frame: frame)
        label.numberOfLines = 1
        label.font = self
        label.text = "TestString"
        label.sizeToFit()
        return label.frame.height
    }
}
