//
//  Producto1Slide4ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 04-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto1Slide4ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var fondo: SpringImageView!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    @IBOutlet var item5: SpringImageView!
    @IBOutlet var item6: SpringImageView!
    @IBOutlet var item7: SpringImageView!
    @IBOutlet var item8: SpringImageView!
    
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
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

        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        producto.opacity      = 0.0
        producto.animation    = "fadeIn"
        producto.curve        = "easeIn"
        producto.delay        = 0.8
        producto.duration     = 0.5
        producto.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "slideUp"
        item1.curve        = "easeIn"
        item1.delay        = 1.2
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideUp"
        item2.curve        = "easeIn"
        item2.delay        = 1.6
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "slideUp"
        item3.curve        = "easeIn"
        item3.delay        = 2.0
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "slideUp"
        item4.curve        = "easeIn"
        item4.delay        = 2.4
        item4.duration     = 0.5
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "slideUp"
        item5.curve        = "easeIn"
        item5.delay        = 2.8
        item5.duration     = 0.5
        item5.animate()
        
        
        item6.opacity      = 0.0
        item6.animation    = "slideUp"
        item6.curve        = "easeIn"
        item6.delay        = 3.2
        item6.duration     = 0.5
        item6.animate()
        
        item7.opacity      = 0.0
        item7.animation    = "slideUp"
        item7.curve        = "easeIn"
        item7.delay        = 3.6
        item7.duration     = 0.5
        item7.animate()
        
        item8.opacity      = 0.0
        item8.animation    = "slideUp"
        item8.curve        = "easeIn"
        item8.delay        = 4.0
        item8.duration     = 0.5
        item8.animate()
        
        btnAlgo.opacity      = 0.0
        btnAlgo.animation    = "fadeIn"
        btnAlgo.curve        = "easeIn"
        btnAlgo.delay        = 4.5
        btnAlgo.duration     = 0.5
        btnAlgo.animate()
        
        delay(delay:5.0){
            // botones
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false

        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
         if segue.identifier == "next" {
         let nextScene =  segue.destination as! ForteDPopAViewController
         // Pass the selected object to the new view controller.
         nextScene.a = 1
         }
 
        
    }
    
  
    
}
