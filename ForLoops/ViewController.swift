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
    var alternate : String
    var alternate2 : String
    var alreadyUsed : Bool
    init(_ beep : String, _ weep : String,_ sheep : String,_ yoop : Bool) {
        self.imagee = beep
        self.correct = beep
        self.alternate = weep
        self.alternate2 = sheep
        self.alreadyUsed = yoop
    }
    func reset() {
        for value in 0...(elements.count - 1) {
            elements[value].alreadyUsed = false
        }
    }
}
let bee = Word("Bee", "Bee", "Bumble Bee", false)
let death = Word("Death", "Death", "Death", false)
let gate = Word("Gate", "Gate", "Gate", false)
let leg = Word("Leg", "Leg", "Pelvis", false)
let circle = Word("Circle", "Circle", "Circle", false)
let coal = Word("Coal", "Rocks", "Coal", false)
let feast = Word("Feast", "Food", "Feast", false)
let lizards = Word("Lizards", "Geckos", "Lizard", false)
let rice = Word("Rice", "Rice", "Rice", false)
let stop = Word("STOP", "Stop", "Stop", false)
let umbrella = Word("Umbrella", "Umbrella", "Umbrella", false)
var elements = [bee, death, gate, leg, circle, coal, feast, lizards, rice, stop, umbrella]
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
            if result.text == currentQ.correct || result.text == currentQ.alternate || result.text == currentQ.alternate2 {
                rightImage.image = UIImage(named: "check")
                currentQ.alreadyUsed = true
                currentQ = elements.randomElement()!
                var quirch = 10
                if currentQ.alreadyUsed {
                    currentQ = elements.randomElement()!
                } else {
                    imageView.image = UIImage(named: currentQ.imagee)
                            
                }
                quirch -= 1
            } else {
                    rightImage.image = UIImage(named: "X")
                }
            }
        }
}




