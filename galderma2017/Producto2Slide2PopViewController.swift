//
//  Producto2Slide2PopViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 10-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide2PopViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    
    @IBOutlet var img: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img.opacity      = 0.0
        img.animation    = "zoomIn"
        img.curve        = "easeIn"
        img.delay        = 0.4
        img.duration     = 0.5
        img.animate()
        
        
        img1.opacity      = 0.0
        img1.animation    = "fadeIn"
        img1.curve        = "easeIn"
        img1.delay        = 0.8
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "zoomIn"
        img2.curve        = "easeIn"
        img2.delay        = 1.0
        img2.duration     = 0.5
        img2.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "animalPop"
        footer.curve        = "easeIn"
        footer.delay        = 1.4
        footer.duration     = 0.5
        footer.animate()
                
        delay(delay: 1.5){
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
