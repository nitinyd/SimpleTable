//
//  ItemSectionModel.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import Foundation

struct ItemSectionModel {
    let sectionTitle: String
    let cellsData: [ItemModel] = [ItemModel(primaryImage1: "Primary Image 1", primaryImage2: "Primary Image 2", secondaryImage: "Secondary Image", title: "Bunch of Images")]
}
