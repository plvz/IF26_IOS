//
//  CalculatorViewController.swift
//  Pourboire
//
//  Created by Admin on 21/11/2017.
//  Copyright © 2017 utt. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var pourboireLabel: UILabel!

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
   
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    @IBAction func controlValueChanged(_ sender: UISegmentedControl) {
    }
    let tauxPourboire = 0.12
    func updateDisplay(){
        let montantAddition = slider.value
        let montantPourboire = Double(montantAddition) * tauxPourboire
        additionLabel.text = String(montantAddition)
        pourboireLabel.text = String(montantPourboire)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
