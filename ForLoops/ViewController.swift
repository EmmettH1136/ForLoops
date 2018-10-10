//
//  ViewController.swift
//  ForLoops
//
//  Created by Emmett Hasley on 10/8/18.
//  Copyright © 2018 John Heresy High School. All rights reserved.
//

import UIKit
var list = ["here"]
struct Word {
    var imagee : String
    var correct : String
    init(_ beep : String, _ weep : String) {
        self.imagee = beep
        self.correct = weep
    }
}
let bee = Word("Bee", "Bee")
let death = Word("Death", "Death")
let gate = Word("Gate", "Gate")
let leg = Word("Leg", "Leg")
let circle = Word("Circle", "Circle")
let coal = Word("Coal", "Coal")
let feast = Word("Feast", "Feast")
let lizards = Word("Lizards", "Lizards")
let rice = Word("Rice", "Rice")
let stop = Word("STOP", "Stop")
let umbrella = Word("Umbrella", "Umbrella")
let elements = [bee, death, gate, leg, circle, coal, feast, lizards, rice, stop, umbrella]
var currentQ = bee

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var textFeeeld: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQ = elements.randomElement()!
        imageView.image = UIImage(named: currentQ.imagee)
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
            if result.text == currentQ.correct {
                rightImage.image = UIImage(named: "check")
                currentQ = elements.randomElement()!
                imageView.image = UIImage(named: currentQ.imagee)
            } else {
                rightImage.image = UIImage(named: "X")
            }
        }
        
    }
    
}

