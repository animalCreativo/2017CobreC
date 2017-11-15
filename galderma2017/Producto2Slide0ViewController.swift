//
//  Producto2Slide0ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 04-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide0ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!

    var a=0,b=0,c=0,d=0,e=0
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var sp1: SpringImageView!
    @IBOutlet var lblSp1: SpringImageView!

    @IBOutlet var sp2: SpringImageView!
    @IBOutlet var lblSp2: SpringImageView!
    
    @IBOutlet var sp3: SpringImageView!
    @IBOutlet var lblSp3: SpringImageView!
    
    @IBOutlet var sp4: SpringImageView!
    @IBOutlet var lblSp4: SpringImageView!
    
    @IBOutlet var sp5: SpringImageView!
    @IBOutlet var lblSp5: SpringImageView!
    
    @IBOutlet var btnNext: UIButton!
    
    
    @IBOutlet var btn1: UIButton!
    @IBAction func btn1(_ sender: Any) {
        self.lblSp1.isHidden = false
        self.a = 1
        lblSp1.opacity      = 0.0
        lblSp1.animation    = "animalPop"
        lblSp1.curve        = "easeIn"
        lblSp1.delay        = 0.2
        lblSp1.duration     = 0.5
        lblSp1.animate()
        self.btn1.isHidden = true
        delay(delay: 0.7){
            self.test()
        }
    }
    
    @IBOutlet var btn2: UIButton!
    
    @IBAction func btn2(_ sender: Any) {
        self.lblSp2.isHidden = false
        self.b = 1
        lblSp2.opacity      = 0.0
        lblSp2.animation    = "animalPop"
        lblSp2.curve        = "easeIn"
        lblSp2.delay        = 0.2
        lblSp2.duration     = 0.5
        lblSp2.animate()
        self.btn2.isHidden = true
        delay(delay: 0.7){
            self.test()
        }
    }
    
    @IBOutlet var btn3: UIButton!
    
    
    @IBAction func btn3(_ sender: Any) {
        self.lblSp3.isHidden = false
        self.c = 1
        lblSp3.opacity      = 0.0
        lblSp3.animation    = "animalPop"
        lblSp3.curve        = "easeIn"
        lblSp3.delay        = 0.2
        lblSp3.duration     = 0.5
        lblSp3.animate()
        self.btn3.isHidden = true
        delay(delay: 0.7){
            self.test()
        }
        
    }
    
    @IBOutlet var btn4: UIButton!
    
    
    @IBAction func btn4(_ sender: Any) {
        self.lblSp4.isHidden = false
        self.d=1
        lblSp4.opacity      = 0.0
        lblSp4.animation    = "animalPop"
        lblSp4.curve        = "easeIn"
        lblSp4.delay        = 0.2
        lblSp4.duration     = 0.5
        lblSp4.animate()
        self.btn4.isHidden = true
        delay(delay: 0.7){
            self.test()
        }
    }
    
    @IBOutlet var btn5: UIButton!
    
    @IBAction func btn5(_ sender: Any) {
        self.lblSp5.isHidden = false
        self.e = 1
        lblSp5.opacity      = 0.0
        lblSp5.animation    = "animalPop"
        lblSp5.curve        = "easeIn"
        lblSp5.delay        = 0.2
        lblSp5.duration     = 0.5
        lblSp5.animate()
        self.btn5.isHidden = true
        delay(delay: 0.7){
         self.test()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        slide()
        
    }
    
    func slide(){
     
        self.btnNext.isHidden = true
        self.btn1.isHidden = true
        self.btn2.isHidden = true
        self.btn3.isHidden = true
        self.btn4.isHidden = true
        self.btn5.isHidden = true
        
        self.lblSp1.isHidden = true
        self.lblSp2.isHidden = true
        self.lblSp3.isHidden = true
        self.lblSp4.isHidden = true
        self.lblSp5.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.2
        titulo.duration     = 0.5
        titulo.animate()
   
        sp1.opacity      = 0.0
        sp1.animation    = "pop"
        sp1.curve        = "easeIn"
        sp1.delay        = 0.4
        sp1.duration     = 0.5
        sp1.repeatCount  = Float.infinity
        sp1.animate()
        
        sp2.opacity      = 0.0
        sp2.animation    = "pop"
        sp2.curve        = "easeIn"
        sp2.delay        = 0.8
        sp2.duration     = 0.5
        sp2.repeatCount  = Float.infinity
        sp2.animate()
        
        sp3.opacity      = 0.0
        sp3.animation    = "pop"
        sp3.curve        = "easeIn"
        sp3.delay        = 1.2
        sp3.duration     = 0.5
        sp3.repeatCount  = Float.infinity
        sp3.animate()
        
        sp4.opacity      = 0.0
        sp4.animation    = "pop"
        sp4.curve        = "easeIn"
        sp4.delay        = 1.6
        sp4.duration     = 0.5
        sp4.repeatCount  = Float.infinity
        sp4.animate()
        
        sp5.opacity      = 0.0
        sp5.animation    = "pop"
        sp5.curve        = "easeIn"
        sp5.delay        = 2.0
        sp5.duration     = 0.5
        sp5.repeatCount  = Float.infinity
        sp5.animate()
        
        delay(delay:2.5){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            self.btn5.isHidden = false
            
        }
        
    }
    
    func test() {
        
        print("a:",a)
        print("b:",b)
        print("c:",c)
        print("d:",d)
        print("e:",e)
        
        if ( a == 1 && b == 1 && c == 1 && d == 1 && e == 1){
            self.btnNext.isHidden = false
            self.btnNext.sendActions(for: .touchUpInside)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         if segue.identifier == "play" {
         let nextScene =  segue.destinationViewController as! DaylongSun00ViewController
         // Pass the selected object to the new view controller.
         nextScene.video = "play"
         }
         */
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

