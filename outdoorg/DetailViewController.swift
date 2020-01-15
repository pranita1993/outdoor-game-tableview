//
//  DetailViewController.swift
//  outdoorg
//
//  Created by Student P_04 on 13/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var strlbl:String!

    @IBOutlet weak var lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       lbl1.text = strlbl
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
