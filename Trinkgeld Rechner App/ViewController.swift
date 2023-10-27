//
//  ViewController.swift
//  Trinkgeld Rechner App
//
//  Created by Dirk Meyer on 27.10.23.
//

import UIKit

class ViewController: UIViewController {
        
    // Variablen & Constanten
    
    @IBOutlet weak var betragTextField: UITextField!
    @IBOutlet weak var personenAnzahlTextField: UITextField!
    @IBOutlet weak var prozentLabel: UITextField!
    @IBOutlet weak var prozentSlider: UISlider!
    @IBOutlet weak var trinkgeldLabel: UITextField!
    @IBOutlet weak var gesamtkostenLabel: UITextField!
    @IBOutlet weak var KostenProPersonLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Function here
    
    @IBAction func prozentButtonAction(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "3%"{
            prozentLabel.text = "3%"
        }
        
        if sender.titleLabel?.text == "5%"{
            prozentLabel.text = "5%"
        }
        
        if sender.titleLabel?.text == "7%"{
            prozentLabel.text = "7%"
        }
        
    }
    

    
}
