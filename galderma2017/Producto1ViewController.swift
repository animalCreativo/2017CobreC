//
//  Producto1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto1ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var fondo: SpringImageView!
    
    @IBOutlet var titulo: SpringImageView!

    
    @IBOutlet var itemA: SpringImageView!
    @IBOutlet var itemB: SpringImageView!
    
    @IBOutlet var sello: SpringImageView!
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var imgBtn1: SpringImageView!
    @IBOutlet var imgBtn2: SpringImageView!
    @IBOutlet var imgBtn3: SpringImageView!
    @IBOutlet var imgBtn4: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    
    @IBOutlet var btnAlgo: SpringButton!
    

    
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
        
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = true
        btn4.isHidden = true
        btnAlgo.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
  
        producto.opacity      = 0.0
        producto.animation    = "animalPop"
        producto.curve        = "easeIn"
        producto.delay        = 0.4
        producto.duration     = 0.5
        producto.animate()
        
      
        fondo.opacity      = 0.0
        fondo.animation    = "fadeIn"
        fondo.curve        = "easeIn"
        fondo.delay        = 0.4
        fondo.duration     = 0.5
        fondo.animate()
        
         
        
        sello.opacity      = 0.0
        sello.animation    = "pop"
        sello.curve        = "easeIn"
        sello.delay        = 0.8
        sello.duration     = 0.9
        sello.repeatCount  = Float.infinity
        sello.animate()
        
        
        
        itemA.opacity      = 0.0
        itemA.animation    = "animalPop"
        itemA.curve        = "easeIn"
        itemA.delay        = 1.2
        itemA.duration     = 0.5
        itemA.animate()
        
        itemB.opacity      = 0.0
        itemB.animation    = "animalPop"
        itemB.curve        = "easeIn"
        itemB.delay        = 1.8
        itemB.duration     = 0.5
        itemB.animate()
        
        
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "slideUp"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 2.4
        imgBtn1.duration     = 0.5
        imgBtn1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "slideUp"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 2.6
        imgBtn2.duration     = 0.5
        imgBtn2.animate()
        
        imgBtn3.opacity      = 0.0
        imgBtn3.animation    = "slideUp"
        imgBtn3.curve        = "easeIn"
        imgBtn3.delay        = 2.8
        imgBtn3.duration     = 0.5
        imgBtn3.animate()
        
        imgBtn4.opacity      = 0.0
        imgBtn4.animation    = "slideUp"
        imgBtn4.curve        = "easeIn"
        imgBtn4.delay        = 3.2
        imgBtn4.duration     = 0.5
        imgBtn4.animate()
        

        
        delay(delay:3.5){
          // botones
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            self.btnAlgo.isHidden = false
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

