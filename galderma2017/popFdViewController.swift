//
//  popFdViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 10-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class popFdViewController: UIViewController {
    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var img: SpringImageView!
    var timer1: Timer!

    @IBOutlet var swipeRight: UISwipeGestureRecognizer!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
  
        self.view.removeGestureRecognizer(self.swipeRight)
        
        self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
        
        
        img.opacity      = 0.0
        img.animation    = "animalPop"
        img.curve        = "easeIn"
        img.delay        = 0.1
        img.duration     = 0.5
        img.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.8
        titulo.duration     = 0.5
        titulo.animate()
        
        
        
       
        delay(delay: 1.3){
            self.btnExit.isHidden = false
       
            self.view.addGestureRecognizer(self.swipeRight)
        }
        
    }
    func animation1() {
        
        titulo.animation    = "swing"
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
