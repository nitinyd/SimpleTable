//
//  ItemSectionModel.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import Foundation

struct ItemSectionModel {
    let sectionTitle: String
    let cellsData: [ItemModel] = [ItemModel(primaryImage1: "", primaryImage2: "", secondaryImage: "", title: "")]
}
