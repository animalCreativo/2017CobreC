//
//  ForteDPopAViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteDPopAViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var btnExit2: UIButton!
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var img: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    
    var a = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
        if (a == 0){
            
            self.btnExit2.isHidden = true
        
        }else {
            self.btnExit.isHidden = true
        }
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        img.opacity      = 0.0
        img.animation    = "zoomIn"
        img.curve        = "easeIn"
        img.delay        = 0.9
        img.duration     = 0.5
        img.animate()
        
        
        img1.opacity      = 0.0
        img1.animation    = "zoomIn"
        img1.curve        = "easeIn"
        img1.delay        = 1.4
        img1.duration     = 0.5
        img1.animate()
        
       
        
        delay(delay: 2.0){
            self.btnExit.isHidden = false
           
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
