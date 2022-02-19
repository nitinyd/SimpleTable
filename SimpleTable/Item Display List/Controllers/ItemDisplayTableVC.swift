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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
}

//MARK:- TableView Delegate Methods
extension ItemDisplayTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

//MARK:- Helpers
extension ItemDisplayTableVC {
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

