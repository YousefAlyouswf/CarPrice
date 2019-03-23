//
//  ViewControllerEn.swift
//  Car_Price
//
//  Created by yousef_lab1 on 9/23/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewControllerEn: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
  
    var Cars=["Select a car"]
    @IBOutlet weak var carpicker: UIPickerView!
    
    @IBOutlet weak var cartype: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Cars.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Cars[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cartype.text=Cars[row]
    }
   

}
