//
//  ViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class HomeViewController: StarBucksViewController {
  
  let homeHeaderView = HomeHeaderView()
  var tableView = UITableView()
  
  let cellId = "cellId"
  
  let tiles = [
    "Star balance",
    "Bonus star",
    "Try these",
    "Welcome back",
    "Uplifting"
  ]

  override func viewDidLoad() {
    view.backgroundColor = .systemBackground
    setupTableView()
    style()
    layout()
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "house.fill", title: "Home")
  }

}

extension HomeViewController {
  
  func style() {
    homeHeaderView.translatesAutoresizingMaskIntoConstraints = false
    homeHeaderView.backgroundColor = .systemGray4
    tableView.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    view.addSubview(homeHeaderView)
    view.addSubview(tableView)
    
    NSLayoutConstraint.activate([
      homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      
      tableView.topAnchor.constraint(equalTo: homeHeaderView.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
    ])
  }
  
}

// MARK: - TableView
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
  
  func setupTableView() {
    tableView.dataSource = self
    tableView.delegate = self
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    tableView.tableFooterView = UIView()
  }
  
  // MARK: - UITableViewDataSource
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
    
    cell.textLabel?.text = tiles[indexPath.row]
    cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tiles.count
  }
  
  // MARK: - UITableViewDelegate
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 300
  }
  
}

