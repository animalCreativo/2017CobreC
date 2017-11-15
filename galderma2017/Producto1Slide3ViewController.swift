//
//  Producto1Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 04-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto1Slide3ViewController: UIViewController {

    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var fondo: SpringImageView!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var itemA: SpringImageView!
    @IBOutlet var itemB: SpringImageView!
    
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn4: UIButton!
    
    
    @IBOutlet var fondo2: SpringImageView!
    
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
        btn4.isHidden = true
        
        fondo2.opacity      = 0.0
        fondo2.animation    = "fadeIn"
        fondo2.curve        = "easeIn"
        fondo2.delay        = 0.3
        fondo2.duration     = 0.5
        fondo2.animate()
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.6
        titulo.duration     = 0.5
        titulo.animate()

        itemA.opacity      = 0.0
        itemA.animation    = "animalPop"
        itemA.curve        = "easeIn"
        itemA.delay        = 1.0
        itemA.duration     = 0.5
        itemA.animate()
        
        itemB.opacity      = 0.0
        itemB.animation    = "animalPop"
        itemB.curve        = "easeIn"
        itemB.delay        = 1.4
        itemB.duration     = 0.5
        itemB.animate()
        
        producto.opacity      = 0.0
        producto.animation    = "slideLeft"
        producto.curve        = "easeIn"
        producto.delay        = 1.8
        producto.duration     = 0.5
        producto.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "fadeIn"
        texto.curve        = "easeIn"
        texto.delay        = 2.2
        texto.duration     = 0.5
        texto.animate()
        
        
        delay(delay:2.7){
            // botones
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn4.isHidden = false
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
