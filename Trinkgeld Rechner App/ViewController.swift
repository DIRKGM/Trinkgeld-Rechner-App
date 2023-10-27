//
//  ViewController.swift
//  Trinkgeld Rechner App
//
//  Created by Dirk Meyer on 27.10.23.
//

import UIKit

class ViewController: UIViewController {
        
    
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
}
