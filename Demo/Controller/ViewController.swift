//
//  ViewController.swift
//  Demo
//
//  Created by Pratt, Benjamin on 10/6/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstButton: UIButton!
    
    
    @IBAction func firstMethod(_ sender: UIButton) {
        
        view.backgroundColor = createRandomColor()
        
        if(firstButton.backgroundColor == .red){
            firstButton.backgroundColor = .blue
        }
        else{
            firstButton.backgroundColor = .red
        }
    }
    private func createRandomColor() -> UIColor{
        
        let redValue: CGFloat = CGFloat (Double (arc4random_uniform(256))/255.00)
        let blueValue: CGFloat = CGFloat (Double (arc4random_uniform(256))/255.00)
        let greenValue: CGFloat = CGFloat (Double (arc4random_uniform(256))/255.00)
        
        return UIColor(red: redValue,  green: greenValue, blue: blueValue, alpha: CGFloat(1))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}

