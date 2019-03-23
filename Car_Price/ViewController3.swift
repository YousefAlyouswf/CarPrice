//
//  ViewController3.swift
//  Car_Price
//
//  Created by yousef_lab1 on 9/21/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewController3: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource  {
   
    

    var cartype2=String()
    var carmodel2=String()
    var imagecar=UIImage()
    
    var year=["أختر السنه"]
    
    @IBOutlet weak var carimage: UIImageView!
    @IBOutlet weak var cartype: UILabel!
    @IBOutlet weak var carmodel: UILabel!
    @IBOutlet weak var caryear: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        cartype.text=cartype2
        carmodel.text=carmodel2
        carimage.image=imagecar
        
        year.append("2018")
        year.append("2017")
        year.append("2016")
        year.append("2015")
        year.append("2014")
        year.append("2013")
        year.append("2012")
        year.append("2011")
        year.append("2010")
        year.append("2009")
        year.append("2008")
        year.append("2007")
        year.append("2006")
        year.append("2005")
        year.append("2004")
        year.append("2003")
        year.append("2002")
        year.append("2001")
        year.append("2000")
        year.append("1999")
        year.append("1998")
        year.append("1997")
        year.append("1996")
        year.append("1995")
        year.append("1994")
        year.append("1993")
        year.append("1992")
        year.append("1991")
        year.append("1990")
    }

    @IBAction func Backbu(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return year.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return year[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(year[row]=="أختر السنه"){
            caryear.text=""
        }
        else{
            caryear.text=year[row]
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second=segue.destination as! ViewController4
        second.cartype3=cartype.text!
        second.carmodel3=carmodel.text!
        second.caryear3=caryear.text!
        second.imagecar=carimage.image!
        
    }
  
    @IBAction func Nexttomileage(_ sender: Any) {
        if(caryear.text==""||caryear.text=="أختر السنه"){
            showToast(controller: self, message : "ادخل سنه صنع السياره", seconds: 1.0)
        }
        else{
            performSegue(withIdentifier: "segue3", sender: self)
        }
        
    }
    func showToast(controller: UIViewController, message : String, seconds: Double) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        
        controller.present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
        }
    }
    
}
