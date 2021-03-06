//
//  ViewController.swift
//  SimpleTable
//
//  Created by Nitin Yadav on 19/2/2022.
//

import UIKit

class ItemDisplayTableVC: UIViewController {

    //Elements
    @IBOutlet private var tableView: UITableView!
    //Properties
    private let feed = ItemFeed()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
    }
}

//MARK:- TableView Delegate Methods
extension ItemDisplayTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let sectionHeaderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(ItemDisplayHeader.self)") as? ItemDisplayHeader
        else { return nil }
        sectionHeaderView.title = feed.sections[section].sectionTitle
        return sectionHeaderView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return ItemDisplayHeader.calculateHeaderViewHeight(title: feed.sections[section].sectionTitle)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return feed.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feed.sections[section].cellsData.count
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 4))
        footerView.backgroundColor = .gray
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemCell = tableView.dequeueReusableCell(withIdentifier: "\(ItemCell.self)") as! ItemCell
        var cellData = feed.sections[indexPath.section].cellsData[indexPath.row]
        cellData.title += " in section \(indexPath.section + 1)"
        itemCell.cellData = cellData
        return itemCell
    }
}

//MARK:- Helpers
extension ItemDisplayTableVC {
    private func setupUI() {
        setupColors()
    }
    private func setupColors() {
        tableView.backgroundColor = .clear
    }
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        var nib = UINib(nibName: "\(ItemCell.self)", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "\(ItemCell.self)")
        nib = UINib(nibName: "\(ItemDisplayHeader.self)", bundle: nil)
        tableView.register(nib, forHeaderFooterViewReuseIdentifier: "\(ItemDisplayHeader.self)")
        tableView.sectionHeaderTopPadding = 0
        tableView.contentInsetAdjustmentBehavior = .never
    }
}

