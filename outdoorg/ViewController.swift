//
//  ViewController.swift
//  outdoorg
//
//  Created by Student P_04 on 13/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var gameArray = ["khokho","football","cricket","kabddi","hocky","tennis"]

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  gameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell :TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")as!TableViewCell
        cell.lbl.text =  gameArray[indexPath.row]
         return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as!DetailViewController
        detail.strlbl = gameArray[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

