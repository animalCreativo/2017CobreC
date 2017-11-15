//
//  Producto2Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 04-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide3ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
 
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    
    @IBOutlet var swipeLeft: UISwipeGestureRecognizer!
    
    
    @IBOutlet var splashTitulo: SpringImageView!
    @IBOutlet var splashTexto: SpringImageView!
    
    @IBOutlet var titulo: SpringImageView!
   var timer1: Timer!
    
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
     
        splash()

    }
    
    
    func splash(){
        self.view.removeGestureRecognizer(self.swipeLeft)
        self.btn1.isHidden = true
        self.btn3.isHidden = true
        self.btn4.isHidden = true
        
        splashTitulo.opacity      = 0.0
        splashTitulo.animation    = "animalPop"
        splashTitulo.curve        = "easeIn"
        splashTitulo.delay        = 0.1
        splashTitulo.duration     = 0.6
        splashTitulo.animate()
        
        splashTexto.opacity      = 0.0
        splashTexto.animation    = "zoomIn"
        splashTexto.curve        = "easeIn"
        splashTexto.delay        = 0.4
        splashTexto.duration     = 0.8
        splashTexto.animate()
        
        self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)

        delay(delay: 1.2){
            self.btn1.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
            
            self.view.addGestureRecognizer(self.swipeLeft)
            
        }
        
    }
    
    func animation1() {
        
        titulo.animation    = "pop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 1.5
        titulo.animate()
        
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
