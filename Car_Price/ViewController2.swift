//
//  ViewController2.swift
//  Car_Price
//
//  Created by yousef_lab1 on 9/21/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var carstring=String()
    
    
    @IBOutlet weak var carlogoimage: UIImageView!
    var ford=["أختر نوع السياره"]
    var toyota=["أختر نوع السياره"]
    var mazda=["أختر نوع السياره"]
    var nissan=["أختر نوع السياره"]
    
    @IBOutlet weak var carType: UILabel!
    @IBOutlet weak var car_model: UIPickerView!
    @IBOutlet weak var model: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carType.text=carstring
        
        //Toyota
        toyota.append("يارس")
        toyota.append("افانزا")
        toyota.append("راش")
        toyota.append("هايلكس")
        toyota.append("راف فور")
        toyota.append("كامري")
        toyota.append("كورولا")
        toyota.append("لاندكروزر gxr")
        toyota.append("لاندكروزر vxr")
        toyota.append("انوفا")
        toyota.append("اوريون")
        toyota.append("فورتشنر")
        toyota.append("افالون")
        toyota.append("اف جي")
        toyota.append("برادو")
        toyota.append("بريفيا")
        toyota.append("سيكويا")
        toyota.append("برويس")
        toyota.append("شاص")
        
        
        //Nissan
        nissan.append("باترول")
    }
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 ;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(carType.text=="مازدا"){
            return mazda.count
        }
        else if(carType.text=="فورد"){
            return ford.count
        }
        else if(carType.text=="تويوتا"){
            return toyota.count
        }
        else{
            return nissan.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if(carType.text=="مازدا"){
            return mazda[row]
        }
        else if(carType.text=="فورد"){
            return ford[row]
        }
        else if(carType.text=="تويوتا"){
            return toyota[row]
        }
        else {
            return nissan[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
            
        
        if(carType.text=="مادزا"){
            if(mazda[row]=="أختر نوع السياره"){
                model.text=""
            }
                else{
            model.text=mazda[row]
            }
            
        }
        else if(carType.text=="فورد"){
            if(ford[row]=="أختر نوع السياره"){
                model.text=""
            }
            else{
                model.text=ford[row]
            }
        }
        else if(carType.text=="تويوتا"){
            if(toyota[row]=="أختر نوع السياره"){
                model.text=""
            }
            else{
                model.text=toyota[row]
            }
            if(toyota[row]=="يارس"){
                carlogoimage.image=UIImage.init(named: "yaris_logo")
            }
            else if(toyota[row]=="افانزا"){
                carlogoimage.image=UIImage.init(named: "avanza")
            }
            else if(toyota[row]=="راش"){
                carlogoimage.image=UIImage.init(named: "rush")
            }
            else if(toyota[row]=="هايلكس"){
                carlogoimage.image=UIImage.init(named: "hilux")
            }
            else if(toyota[row]=="راف فور"){
                carlogoimage.image=UIImage.init(named: "rav4")
            }
            else if(toyota[row]=="كامري"){
                carlogoimage.image=UIImage.init(named: "camry")
            }
            else if(toyota[row]=="كورولا"){
                carlogoimage.image=UIImage.init(named: "corolla")
            }
//            else if(toyota[row]=="لاندكروزر gxr"){
//                carlogoimage.image=UIImage.init(named: "")
//            }
//            else if(toyota[row]=="لاندكروزر vxr"){
//                carlogoimage.image=UIImage.init(named: "")
//            }
            else{
                carlogoimage.image=UIImage.init(named: "logo")
            }
            
        }
        else{
            model.text=nissan[row]
        }
            
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let second=segue.destination as! ViewController3
        second.cartype2=carType.text!
        second.carmodel2=model.text!
        second.imagecar=carlogoimage.image!
    }
    
    @IBAction func carbutton(_ sender: Any) {
        if(model.text==""||model.text=="أختر نوع السياره"){
            showToast(controller: self, message : "أختر نوع السياره", seconds: 1.0)
        }
        else{
            performSegue(withIdentifier: "segue2", sender: self)
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
