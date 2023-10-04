//
//  ViewController2.swift
//  clickerGameStoreAvila
//
//  Created by GABRIELA AVILA on 10/3/23.
//

import UIKit

class ViewController2: UIViewController {

    var i1 : Int!
    
    @IBOutlet weak var errorOutlet: UILabel!
    @IBOutlet weak var pointsOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsOutlet.text = "Points: \(i1)"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1Action(_ sender: UIButton) {
        if i1 >= 5
        {
            i1 = i1 - 5
        }else
        {
            errorOutlet.text = "NOT ENOUGH POINTS!"
        }
    }
    
    @IBAction func button2Action(_ sender: UIButton) {
        
    }
    
    

    
}
