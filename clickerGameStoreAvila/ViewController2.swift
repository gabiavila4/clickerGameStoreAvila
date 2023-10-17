//
//  ViewController2.swift
//  clickerGameStoreAvila
//
//  Created by GABRIELA AVILA on 10/3/23.
//

import UIKit

class ViewController2: UIViewController {

    var numCandy = 0
    var i1 : Int!
    weak var delegate : ViewController!
    
    @IBOutlet weak var errorOutlet: UILabel!
    @IBOutlet weak var pointsOutlet: UILabel!
    
    @IBOutlet weak var candyOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pointsOutlet.text = "Points: \(i1!)"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1Action(_ sender: UIButton) {
        if i1 >= 5
        {
            i1 = i1 - 5
            pointsOutlet.text = "Points: \(i1!)"
        }else
        {
            errorOutlet.text = "NOT ENOUGH POINTS!"
            
            let alert = UIAlertController(title: "Error", message: "Not Enough Points", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           
            alert.addAction(okAction)
           
            present(alert, animated: true, completion: nil)
            
            
            
        }
        delegate.clicks = i1
        numCandy = numCandy + 1
        candyOutlet.text = "# Candy: \(numCandy)"
    }
    
    @IBAction func button2Action(_ sender: UIButton) {
        
        if i1 >= 10
        {
            i1 = i1 - 10
            pointsOutlet.text = "Points: \(i1!)"
        }else
        {
            errorOutlet.text = "NOT ENOUGH POINTS!"
            
            let alert2 = UIAlertController(title: "Error", message: "Not Enough Points", preferredStyle: .alert)
            
            let okAction2 = UIAlertAction(title: "OK", style: .default, handler: nil)
           
            alert2.addAction(okAction2)
           
            present(alert2, animated: true, completion: nil)
        }
        delegate.clicks = i1
        
        
    }
    
    

    
}
