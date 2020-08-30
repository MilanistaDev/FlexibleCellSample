//
//  ViewController.swift
//  FlexibleCellSample
//
//  Created by Takuya Aso on 2020/08/31.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    private let cellDataList: [CellData] = [
        CellData(labelText: "1行くらい", imageName: "person.fill"),
        CellData(labelText: "2行くらい\n2行くらい", imageName: "person.2.fill"),
        CellData(labelText: "5行くらい\n5行くらい\n5行くらい\n5行くらい\n5行くらい", imageName: "person.3.fill")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        // セルの登録
        let nib = UINib(nibName: "SampleTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "SampleCell")
        // セルの自動計算
        self.tableView.estimatedRowHeight = 74
        self.tableView.rowHeight = UITableView.automaticDimension
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDataList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell") as? SampleTableViewCell else {
            return UITableViewCell()
        }
        cell.sampleLabel.text = cellDataList[indexPath.row].labelText
        cell.sampleImageView.image = UIImage(systemName: cellDataList[indexPath.row].imageName)
        return cell
    }
}

extension ViewController: UITableViewDelegate { }

struct CellData {
    var labelText: String
    var imageName: String
}
