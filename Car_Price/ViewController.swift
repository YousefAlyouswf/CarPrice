//
//  ViewController.swift
//  Car_Price
//
//  Created by yousef_lab1 on 9/21/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
   
   
    var Cars=["أختار سياره"]  //arrayof car types
    
    
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var carlable: UILabel!//car label to show the car type in text
    
    @IBOutlet weak var car_type: UIPickerView!// picker view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Cars.append("تويوتا")
        Cars.append("مرسيدس بنز")
        Cars.append("كيا")
        Cars.append("نيسان")
        Cars.append("فورد")
        Cars.append("لكزس")
        Cars.append("هيونداي")
        Cars.append("بي ام دبليو")
        Cars.append("شفروليه")
        Cars.append("بورش")
        Cars.append("رينو")
        Cars.append("هوندا")
        Cars.append("اودي")
        Cars.append("فولكس واجن")
        Cars.append("جي ام سي")
        Cars.append("انفينيتي")
        Cars.append("جيلي")
        Cars.append("لينكولن")
        Cars.append("كاديلاك")
        Cars.append("جاغور")
        Cars.append("دودج")
        Cars.append("جيب")
        Cars.append("رانج روفر")
        Cars.append("ميتسوبيشي")
        Cars.append("مازدا")
        Cars.append("بيجو")
        Cars.append("جينيسيس")
        Cars.append("سوزوكي")
        Cars.append("سوبارو")
        Cars.append("شانجان")
        Cars.append("ام جي")
        Cars.append("كاريسلر")
        Cars.append("سانج يونج")
        Cars.append("بي واي دي")
        Cars.append("سكودا")
        Cars.append("ميني")
        Cars.append("ايسوزو")
        Cars.append("الفا روميو")
        Cars.append("لاند روفر")
        Cars.append("فاو")
        Cars.append("مازيراتي")
        Cars.append("ليفان")
        Cars.append("فيات")
        Cars.append("هافال")
        Cars.append("رام")
        Cars.append("بايك")
        Cars.append("تاتا")
        Cars.append("استون مارتن")
    }
   

    @IBAction func backbu(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {// number of picker in this page
        return 1 ;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {// number of row in this picker
        return Cars.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {// to show the array in this picker
       
        return Cars[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {// to show what user selected in the label
        if(Cars[row]=="أختار سياره"){
            carlable.text=""
        }
        else{
        carlable.text=Cars[row]
        }
        if(Cars[row]=="تويوتا"){
            imageview.image=UIImage.init(named: "Toyota")
        }
        else if(Cars[row]=="مرسيدس بنز")
        {
            imageview.image=UIImage.init(named: "Mercedes")
        }
        else if(Cars[row]=="كيا")
        {
            imageview.image=UIImage.init(named: "Kia")
        }
        else if(Cars[row]=="نيسان")
        {
            imageview.image=UIImage.init(named: "nissan")
        }
        else if(Cars[row]=="فورد")
        {
            imageview.image=UIImage.init(named: "ford")
        }
        else if(Cars[row]=="لكزس")
        {
            imageview.image=UIImage.init(named: "lexus")
        }
        else if(Cars[row]=="هيونداي")
        {
            imageview.image=UIImage.init(named: "Hyundai")
        }
        else if(Cars[row]=="بي ام دبليو")
        {
            imageview.image=UIImage.init(named: "bmw")
        }
        else if(Cars[row]=="شفروليه")
        {
            imageview.image=UIImage.init(named: "Chevrolet")
        }
        else if(Cars[row]=="بورش")
        {
            imageview.image=UIImage.init(named: "porsche")
        }
        else if(Cars[row]=="رينو")
        {
            imageview.image=UIImage.init(named: "renault")
        }
        else if(Cars[row]=="هوندا")
        {
            imageview.image=UIImage.init(named: "honda")
        }
        else if(Cars[row]=="اودي")
        {
            imageview.image=UIImage.init(named: "audi")
        }
        else if(Cars[row]=="فولكس واجن")
        {
            imageview.image=UIImage.init(named: "volks")
        }
        else if(Cars[row]=="جي ام سي")
        {
            imageview.image=UIImage.init(named: "gmc")
        }
        else if(Cars[row]=="انفينيتي")
        {
            imageview.image=UIImage.init(named: "Infiniti")
        }
        else if(Cars[row]=="جيلي")
        {
            imageview.image=UIImage.init(named: "geely")
        }
        else if(Cars[row]=="لينكولن")
        {
            imageview.image=UIImage.init(named: "lincoln")
        }
        else if(Cars[row]=="كاديلاك")
        {
            imageview.image=UIImage.init(named: "cadillac")
        }
        else if(Cars[row]=="جاغور")
        {
            imageview.image=UIImage.init(named: "jaguar")
        }
        else if(Cars[row]=="دودج")
        {
            imageview.image=UIImage.init(named: "dodge")
        }
        else if(Cars[row]=="جيب")
        {
            imageview.image=UIImage.init(named: "jeep")
        }
        else if(Cars[row]=="رانج روفر")
        {
            imageview.image=UIImage.init(named: "range")
        }
        else if(Cars[row]=="ميتسوبيشي")
        {
            imageview.image=UIImage.init(named: "mitsu")
        }
        else if(Cars[row]=="مازدا")
        {
            imageview.image=UIImage.init(named: "mazda")
        }
        else if(Cars[row]=="بيجو")
        {
            imageview.image=UIImage.init(named: "Peugeot")
        }
        else if(Cars[row]=="جينيسيس")
        {
            imageview.image=UIImage.init(named: "gen")
        }
        else if(Cars[row]=="سوزوكي")
        {
            imageview.image=UIImage.init(named: "suzuki")
        }
        else if(Cars[row]=="سوبارو")
        {
            imageview.image=UIImage.init(named: "subaru")
        }
        else if(Cars[row]=="شانجان")
        {
            imageview.image=UIImage.init(named: "changan")
        }
        else if(Cars[row]=="ام جي")
        {
            imageview.image=UIImage.init(named: "mg")
        }
        else if(Cars[row]=="كاريسلر")
        {
            imageview.image=UIImage.init(named: "chry")
        }
        else if(Cars[row]=="سانج يونج")
        {
            imageview.image=UIImage.init(named: "sang")
        }
        else if(Cars[row]=="بي واي دي")
        {
            imageview.image=UIImage.init(named: "byd")
        }
        else if(Cars[row]=="سكودا")
        {
            imageview.image=UIImage.init(named: "skuda")
        }
        else if(Cars[row]=="ميني")
        {
            imageview.image=UIImage.init(named: "mini")
        }
        else if(Cars[row]=="ايسوزو")
        {
            imageview.image=UIImage.init(named: "isuzu")
        }
        else if(Cars[row]=="الفا روميو")
        {
            imageview.image=UIImage.init(named: "alfa")
        }
        else if(Cars[row]=="لاند روفر")
        {
            imageview.image=UIImage.init(named: "landrover")
        }
        else if(Cars[row]=="فاو")
        {
            imageview.image=UIImage.init(named: "faw")
        }
        else if(Cars[row]=="مازيراتي")
        {
            imageview.image=UIImage.init(named: "masrate")
        }
        else if(Cars[row]=="ليفان")
        {
            imageview.image=UIImage.init(named: "lifan")
        }
        else if(Cars[row]=="فيات")
        {
            imageview.image=UIImage.init(named: "fiat")
        }
        else if(Cars[row]=="هافال")
        {
            imageview.image=UIImage.init(named: "haval")
        }
        else if(Cars[row]=="رام")
        {
            imageview.image=UIImage.init(named: "ram")
        }
        else if(Cars[row]=="بايك")
        {
            imageview.image=UIImage.init(named: "baic")
        }
        else if(Cars[row]=="تاتا")
        {
            imageview.image=UIImage.init(named: "tata")
        }
        else if(Cars[row]=="استون مارتن")
        {
            imageview.image=UIImage.init(named: "aston")
        }
        else{
            imageview.image=UIImage.init(named: "logo")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let second=segue.destination as! ViewController2
        second.carstring=carlable.text!
    }
    @IBAction func carbutton(_ sender: Any) {
        if(carlable.text==""||carlable.text=="أختار سياره"){
            showToast(controller: self, message : "ادخل نوع السياره", seconds: 1.0)
        }
        else{
        performSegue(withIdentifier: "segue", sender: self)
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

