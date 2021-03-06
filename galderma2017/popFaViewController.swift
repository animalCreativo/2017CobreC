//
//  popFaViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 10-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class popFaViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    var timer1: Timer!
    
    @IBOutlet var swipeLeft: UISwipeGestureRecognizer!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
  

    
    func slide(){
        
        btnExit.isHidden = true
         self.view.removeGestureRecognizer(self.swipeLeft)
        
        self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
  
        delay(delay: 1.0){
            self.btnExit.isHidden = false
             self.view.addGestureRecognizer(self.swipeLeft)
           
        }
        
    }
    func animation1() {
        
        self.titulo.animation    = "wobble"
        self.titulo.curve        = "easeIn"
        self.titulo.delay        = 0
        self.titulo.duration     = 1.2
        self.titulo.animate()
        
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
