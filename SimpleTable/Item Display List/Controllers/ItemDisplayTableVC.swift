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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return feed.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feed.sections[section].cellsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemCell = tableView.dequeueReusableCell(withIdentifier: "\(ItemCell.self)") as! ItemCell
        itemCell.cellData = feed.sections[indexPath.section].cellsData[indexPath.row]
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
        let nib = UINib(nibName: "\(ItemCell.self)", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "\(ItemCell.self)")
    }
}

