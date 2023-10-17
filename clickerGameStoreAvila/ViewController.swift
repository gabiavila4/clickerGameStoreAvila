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

    override func viewWillAppear(_ animated: Bool) {
        pointsOutlet.text = "Points: \(clicks)"
    }
    
    
    @IBAction func clickerAction(_ sender: UIButton) {
        clicks = clicks + 1
        print(clicks)
        pointsOutlet.text = "Points: \(clicks)"
        
        if clicks == 100
        {
            let alert = UIAlertController(title: "Warning", message: "You have enough for a TOPHAT!", preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "I need more points!", style: .default, handler: nil)
            let noAction = UIAlertAction(title: "Ok I will go to the store now!", style: .default, handler: nil)
           
            alert.addAction(yesAction)
            alert.addAction(noAction)
           
            present(alert, animated: true, completion: nil)

        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.i1 = clicks
        nvc.delegate = self
    }
    
    @IBAction func storeAction(_ sender: UIButton) {
        
        
        performSegue(withIdentifier: "toShop", sender: self)
        //pointsOutlet.text = "Points: \(clicks)"
       
    }
    
    
    
}

