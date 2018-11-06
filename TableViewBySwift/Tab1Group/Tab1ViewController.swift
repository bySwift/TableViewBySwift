//
//  Tab1ViewController.swift
//  TableViewBySwift
//
//  Created by lecco on 2018/10/29.
//  Copyright © 2018 lecco. All rights reserved.
//

import UIKit

class Tab1ViewController: LEBaseViewController, UITableViewDelegate, UITableViewDataSource{
    
    fileprivate lazy var table:UITableView = {
        let table = UITableView(frame: UIScreen.main.bounds, style: .plain)
        table.backgroundColor = UIColor.groupTableViewBackground
        table.delegate = self
        table.dataSource = self
        table.register(UINib.init(nibName: "LENormalTableViewCell", bundle: nil), forCellReuseIdentifier: "LENormalTableViewCellIdentifier")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.table)
        self.table.reloadData()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LENormalTableViewCellIdentifier", for: indexPath)
        print(indexPath.row)
        let row = indexPath.row
        print(row)
        cell.textLabel?.text = "\(indexPath.section), \(indexPath.row)"
//            String(format: "%d section , %d row", arguments: [indexPath.section,indexPath.row])
        
        cell.detailTextLabel?.text = "\(indexPath.section), \(indexPath.row)"
        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



