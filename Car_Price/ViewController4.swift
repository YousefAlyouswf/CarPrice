//
//  ViewController4.swift
//  Car_Price
//
//  Created by yousef_lab1 on 9/21/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewController4: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource  {
   
    

    var cartype3=String()
    var carmodel3=String()
    var caryear3=String()
    var imagecar=UIImage()
    
    var mile=["عدد الكيلومترات"]
    
    @IBOutlet weak var carimage: UIImageView!
    @IBOutlet weak var lacarype: UILabel!
    @IBOutlet weak var lacarmodel: UILabel!
    @IBOutlet weak var lacaryear: UILabel!
    @IBOutlet weak var lacarmileage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lacarype.text=cartype3
        lacarmodel.text=carmodel3
        lacaryear.text=caryear3
        carimage.image=imagecar
        
        
        mile.append("5000")
        mile.append("10000")
        mile.append("20000")
        mile.append("30000")
        mile.append("40000")
        mile.append("60000")
        mile.append("80000")
        mile.append("100000")
        mile.append("125000")
        mile.append("150000")
        mile.append("175000")
        mile.append("200000")
        mile.append("300000")
       
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mile.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mile[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(mile[row]=="عدد الكيلومترات"){
            lacarmileage.text=""
        }
        else{
        lacarmileage.text=mile[row]
        }
        
    }
    
    
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second=segue.destination as! ViewController5
        second.cartype4=lacarype.text!
        second.carmodel4=lacarmodel.text!
        second.caryear4=lacaryear.text!
        second.mileage4=lacarmileage.text!
    }
    
    @IBAction func getprice(_ sender: Any) {
        if(lacarmileage.text==""||lacarmileage.text=="عدد الكيلومترات"){
            showToast(controller: self, message : "ادخل عدد الكيلومترات", seconds: 1.0)
        }
        else{
 performSegue(withIdentifier: "segue4", sender: self)        }
       

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
