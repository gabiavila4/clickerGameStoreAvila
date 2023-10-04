//
//  ViewController.swift
//  clickerGameStoreAvila
//
//  Created by GABRIELA AVILA on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pointsOutlet: UILabel!
    var clicks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func clickerAction(_ sender: UIButton) {
        clicks = clicks + 1
        print(clicks)
        pointsOutlet.text = "Points: \(clicks)"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.i1 = clicks
    }
    
    @IBAction func storeAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toShop", sender: self)
       
    }
    
    
    
}

