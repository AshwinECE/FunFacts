//
//  ViewController.swift
//  FunFacts
//
//  Created by Ashwin Iyer on 2015-11-20.
//  Copyright © 2015 Ashwin Iyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factModel : FactModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        let randomColour = ColourModel().getRandomColour()
        view.backgroundColor = randomColour
        funFactButton.tintColor = randomColour
        funFactLabel.text = factModel.getRandomFact()
        
    }
}

