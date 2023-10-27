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
    
    var essenKosten = 0.0
    var trinkgeldProzent = 0.0
    var trinkgeldKosten = 0.0
    var gesamtKosten = 0.0
    var kostenProPerson = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //Function here
    @IBAction func prozentButtonAction(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "3%"{
            prozentLabel.text = "3%"
            prozentSlider.value = 3.0
            ausrechnenDerKosten()
            return
        }
        
        if sender.titleLabel?.text == "5%"{
            prozentLabel.text = "5%"
            prozentSlider.value = 5.0
            ausrechnenDerKosten()
            return
        }
        
        if sender.titleLabel?.text == "7%"{
            prozentLabel.text = "7%"
            prozentSlider.value = 7.0
            ausrechnenDerKosten()
            return
        }
        
    }
    
    // Slider schreibt ins Label drüber %0f --> bedeutet keine Nachkommastalle
    @IBAction func prozentSliderAction(_ sender: UISlider) {
        let prozentAsString = String(format: "%.0f", sender.value)
        // fügt % zur Anzeige hinzu
        prozentLabel.text = prozentAsString + "%"
        
        ausrechnenDerKosten()
    }
        
    func ausrechnenDerKosten() {
        essenKosten = Double(betragTextField.text!)!
        trinkgeldProzent = Double(prozentSlider.value)
        trinkgeldKosten = (essenKosten * trinkgeldProzent) / 100
        gesamtKosten = essenKosten + trinkgeldKosten
        kostenProPerson = gesamtKosten / Double(personenAnzahlTextField.text!)!
        
        printUiElements()
    }
    
    // Ausgabe des Trinkgeld - Umwandlung wieder in String
    func printUiElements() {
        let stringTrinkgeld = String(format: "%.2f", trinkgeldKosten)
        let stringGesamtKosten = String(format: "%.2f", gesamtKosten)
        let kostenProPerson = String(format: "%.2f", kostenProPerson)
        
        trinkgeldLabel.text = "Trinkgeld: " + stringTrinkgeld + " €"
        gesamtkostenLabel.text = "Gesamtkosten: " + stringGesamtKosten + " €"
        KostenProPersonLabel.text = "Kosten Pro Person: " + kostenProPerson + " €"
    }
    
}
