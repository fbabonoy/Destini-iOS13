//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLable()

    }

    @IBAction func ChoicePath(_ sender: UIButton) {
        if let name = sender.titleLabel?.text {
            storyBrain.findPath(name)
        }
        updateLable()
       
    }
    
    func updateLable(){
        storyLabel.text = storyBrain.getCurrentStory()
        choice1Button.setTitle(storyBrain.getCurrentChoice(), for: .normal)
        choice2Button.setTitle(storyBrain.getCurrentChoice2(), for: .normal)

    }
}

