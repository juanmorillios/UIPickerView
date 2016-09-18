//
//  ViewController.swift
//  UIPickerView
//
//  Created by Juan Morillo on 18/9/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
    var arrayPickerDataSource = ["One", "Two", "Three", "Four"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //PRAMARK: UIPickerView Delegates
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPickerDataSource.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayPickerDataSource[row]
    }
    
    
    //Detectar fila seleccionada y cambiar color fondo pantalla
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (row == 0) {
            
            self.view.backgroundColor = UIColor.white
        } else if (row == 1) {
            
            self.view.backgroundColor = UIColor.blue
        } else if (row == 2) {
            
            self.view.backgroundColor = UIColor.yellow
            
            
        }else {
            
            self.view.backgroundColor = UIColor.cyan
            
        }
    }
    
    
}

