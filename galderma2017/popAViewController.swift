//
//  popAViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 11-09-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class popAViewController: UIViewController {

    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var imgA: SpringImageView!
    @IBOutlet var imgB: SpringImageView!
    @IBOutlet var imgC: SpringImageView!
    
 
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    
    @IBAction func btn1(_ sender: Any) {
       
        imgA.animation    = "wobble"
        imgA.curve        = "easeIn"
        imgA.delay        = 0.8
        imgA.duration     = 0.5
        imgA.animate()
        
    }
    
    @IBAction func btn2(_ sender: Any) {
        
       
        imgB.animation    = "wobble"
        imgB.curve        = "easeIn"
        imgB.delay        = 0.8
        imgB.duration     = 0.5
        imgB.animate()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = true

        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "zoomIn"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        imgA.opacity      = 0.0
        imgA.animation    = "animalPop"
        imgA.curve        = "easeIn"
        imgA.delay        = 0.8
        imgA.duration     = 0.5
        imgA.animate()
        
        imgB.opacity      = 0.0
        imgB.animation    = "animalPop"
        imgB.curve        = "easeIn"
        imgB.delay        = 1.2
        imgB.duration     = 0.5
        imgB.animate()
        
        imgC.opacity      = 0.0
        imgC.animation    = "animalPop"
        imgC.curve        = "easeIn"
        imgC.delay        = 1.6
        imgC.duration     = 0.5
        imgC.animate()
        
        delay(delay: 2.1){
            self.btnExit.isHidden = false
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            
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
