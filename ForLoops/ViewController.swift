//
//  ViewController.swift
//  ForLoops
//
//  Created by Emmett Hasley on 10/8/18.
//  Copyright © 2018 John Heresy High School. All rights reserved.
//

import UIKit
var list = ["here"]


class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var textFeeeld: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func whenButtonPressed(_ sender: Any) {
        list.removeAll()
        for x in textFeeeld.text! {
            list.append(String(x))
        }
        var list2 = ["J"]
        var nubmers = list.count
        list2.removeAll()
        while nubmers > 0 {
            list2.append(list[nubmers - 1])
            nubmers -= 1
        }
        nubmers = list2.count
        if nubmers == 0 {
            result.text = "Nope"
        } else {
            
            list2[nubmers - 1] = list2[nubmers - 1].lowercased()
            list2[0] = list2[0].uppercased()
            let wwww = list2.joined(separator: "")
            result.text = "\(wwww)"
        }
        
    }
    
}

