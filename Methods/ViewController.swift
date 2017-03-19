//
//  ViewController.swift
//  Methods
//
//  Created by Yusuf Timson on 2016-05-03.
//  Copyright © 2016 Yusuf Timson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var score:Int = 0
    
    func didScore(_ points:Int) {
        score += points
        label.text = "Score is: \(score)"
    }
    
    @IBAction func didShootAllien(_ Sender:AnyObject){
        didScore(1)
    }
    
    @IBAction func didShootShip(_ Sender:AnyObject){
        didScore(5)
    }
    
    @IBAction func didShootBigShip(_ Sender:AnyObject){
        didScore(10)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.didScore(1)
        self.didScore(5)
        self.didScore(1)
        self.didScore(1)
        self.didScore(5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

