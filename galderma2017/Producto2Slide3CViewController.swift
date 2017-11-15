//
//  Producto2Slide3CViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide3CViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var footer1: SpringImageView!
    @IBOutlet var footer2: SpringImageView!
    @IBOutlet var footer3: SpringImageView!
    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    
    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    
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
        self.view.removeGestureRecognizer(self.swipeRight)
        
        self.btn1.isHidden = true
        self.btn3.isHidden = true
        self.btn4.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img.opacity      = 0.0
        img.animation    = "slideUp"
        img.curve        = "easeIn"
        img.delay        = 0.4
        img.duration     = 0.5
        img.animate()
        
        footer1.opacity      = 0.0
        footer1.animation    = "slideUp"
        footer1.curve        = "easeIn"
        footer1.delay        = 0.8
        footer1.duration     = 0.5
        footer1.animate()
        
        footer2.opacity      = 0.0
        footer2.animation    = "slideUp"
        footer2.curve        = "easeIn"
        footer2.delay        = 1.2
        footer2.duration     = 0.5
        footer2.animate()
        
        footer3.opacity      = 0.0
        footer3.animation    = "slideUp"
        footer3.curve        = "easeIn"
        footer3.delay        = 1.6
        footer3.duration     = 0.5
        footer3.animate()
        
        delay(delay:2.1){
            
            self.btn1.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            
            self.view.addGestureRecognizer(self.swipeRight)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
