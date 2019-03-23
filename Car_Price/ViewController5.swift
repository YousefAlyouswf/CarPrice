//
//  ViewController5.swift
//  Car_Price
//
//  Created by yousef_lab1 on 9/21/18.
//  Copyright © 2018 Shahad Almashaabi. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    var cartype4=String()
    var carmodel4=String()
    var caryear4=String()
    var mileage4=String()
    
    @IBOutlet weak var cartype: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var mileage: UILabel!
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var ladate: UILabel!
    
    @IBAction func startOver(_ sender: Any) {
//        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: false, completion: nil)

    }
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter=DateFormatter()
        //formatter.dateStyle = .long
        formatter.dateFormat="YYYY"
        let str=formatter.string(from: Date())
        ladate.text=str
        
        cartype.text=cartype4
        model.text=carmodel4
        year.text=caryear4
        mileage.text=mileage4
        
        

        if(model.text=="كورولا")
        {
            ToyotapriceFormla(newprice: 80000)
        
        }
        else if(model.text=="افالون")
        {
            ToyotapriceFormla(newprice: 155000)
            
        }
        else if(model.text=="كامري")
        {
            ToyotapriceFormla(newprice: 120000)
            
        }
        else if(model.text=="يارس")
        {
            ToyotapriceFormla(newprice: 55000)
            
        }
        else if(model.text=="راف فور")
        {
            ToyotapriceFormla(newprice: 105000)
            
        }
        else if(model.text=="انوفا")
        {
            ToyotapriceFormla(newprice: 100000)
            
        }
        else if(model.text=="راش")
        {
            ToyotapriceFormla(newprice: 63000)
            
        }
        else if(model.text=="لاندكروزر vxr")
        {
            ToyotapriceFormla(newprice: 300000)
            
        }
        else if(model.text=="لاندكروزر gxr")
        {
            ToyotapriceFormla(newprice: 220000)
            
        }
        else if(model.text=="برادو")
        {
            ToyotapriceFormla(newprice: 155000)
            
        }
        else if(model.text=="فورتشنر")
        {
            ToyotapriceFormla(newprice: 125000)
            
        }
        else if(model.text=="برويس")
        {
            ToyotapriceFormla(newprice: 91000)
            
        }
        else if(model.text=="شاص")
        {
            ToyotapriceFormla(newprice: 126000)
            
        }
        else if(model.text=="هايلكس")
        {
            ToyotapriceFormla(newprice: 84000)
            
        }
        else if(model.text=="افانزا")
        {
            ToyotapriceFormla(newprice: 90000)
            
        }
        else if(model.text=="اوريون")
        {
            ToyotapriceFormla(newprice: 110000)
            
        }
        else if(model.text=="اف جي")
        {
            ToyotapriceFormla(newprice: 150000)
            
        }
        else if(model.text=="سيكويا")
        {
            ToyotapriceFormla(newprice: 180000)
            
        }
        else if(model.text=="بريفيا")
        {
            ToyotapriceFormla(newprice: 180000)
            
        }
        else if(model.text=="باترول"){
            NissanToyotapriceFormla(newprice: 260600)
        }

    }
    
    func ToyotapriceFormla(newprice:Double){
        
        let currentYear:Int?=Int(ladate.text!)
        let carYear:Int?=Int(year.text!)
        let numberOfYear=currentYear!-carYear!
        
        var currentprice:Double=newprice-(newprice*0.20)
        

        if(numberOfYear>0)
        {
        var counter=1
        while counter<=numberOfYear {
            currentprice=currentprice-(currentprice*0.10)
            counter+=1
        }
        }

        
        if(mileage.text==("5000"))
        {
            currentprice=currentprice-(currentprice*0.05)
        }
        else if(mileage.text==("10000"))
        {
            currentprice=currentprice-(currentprice*0.1)
        }
        else if(mileage.text==("20000"))
        {
            currentprice=currentprice-(currentprice*0.15)
        }
        else if(mileage.text==("30000"))
        {
            currentprice=currentprice-(currentprice*0.17)
        }
        else if(mileage.text==("40000"))
        {
            currentprice=currentprice-(currentprice*0.19)
        }
        else if(mileage.text==("60000"))
        {
            currentprice=currentprice-(currentprice*0.21)
        }
        else if(mileage.text==("80000"))
        {
            currentprice=currentprice-(currentprice*0.24)
        }
        else if(mileage.text==("100000"))
        {
            currentprice=currentprice-(currentprice*0.26)
        }
        else if(mileage.text==("125000"))
        {
            currentprice=currentprice-(currentprice*0.28)
        }
        else if(mileage.text==("150000"))
        {
            currentprice=currentprice-(currentprice*0.3)
        }
        else if(mileage.text==("175000"))
        {
            currentprice=currentprice-(currentprice*0.34)
        }
        else if(mileage.text==("200000"))
        {
            currentprice=currentprice-(currentprice*0.40)
        }
        else
        {
            currentprice=currentprice-(currentprice*0.40)
        }
        
        price.text="السعر التقريبي هو: "+String(format: "%.0f", currentprice)+" ريال "
    }
    //Nissan Formla
    func NissanToyotapriceFormla(newprice:Double){
        
        let currentYear:Int?=Int(ladate.text!)
        let carYear:Int?=Int(year.text!)
        let numberOfYear=currentYear!-carYear!
        
        var currentprice:Double=newprice-(newprice*0.113)
        
        
        if(numberOfYear>0)
        {
            var counter=1
            while counter<=numberOfYear {
                currentprice=currentprice-(currentprice*0.10)
                counter+=1
            }
        }
        
        
        if(mileage.text==("5000"))
        {
            currentprice=currentprice-(currentprice*0.05)
        }
        else if(mileage.text==("10000"))
        {
            currentprice=currentprice-(currentprice*0.1)
        }
        else if(mileage.text==("20000"))
        {
            currentprice=currentprice-(currentprice*0.15)
        }
        else if(mileage.text==("30000"))
        {
            currentprice=currentprice-(currentprice*0.17)
        }
        else if(mileage.text==("40000"))
        {
            currentprice=currentprice-(currentprice*0.19)
        }
        else if(mileage.text==("60000"))
        {
            currentprice=currentprice-(currentprice*0.21)
        }
        else if(mileage.text==("80000"))
        {
            currentprice=currentprice-(currentprice*0.24)
        }
        else if(mileage.text==("100000"))
        {
            currentprice=currentprice-(currentprice*0.26)
        }
        else if(mileage.text==("125000"))
        {
            currentprice=currentprice-(currentprice*0.28)
        }
        else if(mileage.text==("150000"))
        {
            currentprice=currentprice-(currentprice*0.37)
        }
        else if(mileage.text==("175000"))
        {
            currentprice=currentprice-(currentprice*0.47)
        }
        else if(mileage.text==("200000"))
        {
            currentprice=currentprice-(currentprice*0.57)
        }
        else if(mileage.text==("300000"))
        {
            currentprice=currentprice-(currentprice*0.67)
        }
        else
        {
            currentprice=currentprice-(currentprice*0.67)
        }
        
        price.text="السعر التقريبي هو: "+String(format: "%.0f", currentprice)+" ريال "
    }
    
   

}

//&&(year.text=="1990"||year.text=="1991"||year.text=="1992"||year.text=="1993"||year.text=="1994"||year.text=="1995"||year.text=="1996"||year.text=="1997"||year.text=="1998"||year.text=="1999"||year.text=="2000"||year.text=="2001"||year.text=="2002"||year.text=="2003"||year.text=="2004"||year.text=="2005"||year.text=="2006"||year.text=="2007"||year.text=="2008"||year.text=="2009"||year.text=="2010"||year.text=="2011"||year.text=="2012"||year.text=="2013"||year.text=="2014"||year.text=="2015"||year.text=="2016"||year.text=="2017"||year.text=="2018")
