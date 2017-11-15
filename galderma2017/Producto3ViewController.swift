//
//  Producto3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3ViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    var swipeLeft = UISwipeGestureRecognizer()
    var swipeRight = UISwipeGestureRecognizer()
    
    var a=1
  
    @IBOutlet var vista1: UIView!
    @IBOutlet var vista2: UIView!
    @IBOutlet var vista3: UIView!
    @IBOutlet var vista4: UIView!
    @IBOutlet var vista5: UIView!
    @IBOutlet var vista6: UIView!
    @IBOutlet var vista7: UIView!
    
    @IBOutlet var vistaActual: UIView!

    @IBOutlet var vista3Titulo: SpringImageView!
    
    @IBOutlet var vista3Item1: SpringImageView!
    @IBOutlet var vista3Item2: SpringImageView!
    @IBOutlet var vista3Item3: SpringImageView!
    
    @IBOutlet var vista4Titulo: SpringImageView!
    @IBOutlet var vista4Texto: SpringImageView!
    
    @IBOutlet var vista6Flor1: SpringImageView!
    @IBOutlet var vista6Flor2: SpringImageView!
    @IBOutlet var vista6Titulo: SpringImageView!
    
    @IBOutlet var vista2Img: SpringImageView!
    @IBOutlet var vista2Titulo: SpringImageView!
    @IBOutlet var vista2Fillete: SpringImageView!
    
    @IBOutlet var vista4Producto: SpringImageView!
    
    @IBOutlet var vista4Titulo1: SpringImageView!
    
    @IBOutlet var vista7Img: SpringImageView!
    @IBOutlet var vista7Img2: SpringImageView!
    
    @IBOutlet var vista7item1: SpringImageView!
    @IBOutlet var vista7item2: SpringImageView!
    @IBOutlet var vista7item3: SpringImageView!
    @IBOutlet var vista7item4: SpringImageView!
    


    @IBOutlet var nombre: UITextField!
    
    @IBOutlet var nombreLbl: UILabel!
    @IBOutlet var bullets: UIImageView!
    /*
    @IBOutlet var vista1Img: SpringImageView!
    @IBOutlet var vista1Fillete: SpringImageView!
    @IBOutlet var vista1Titulo: SpringImageView!
    
    
    @IBOutlet var vista2Item1: SpringImageView!
    @IBOutlet var vista2Item2: SpringImageView!
    @IBOutlet var vista2Item3: SpringImageView!
    @IBOutlet var vista2Titulo: SpringImageView!
    @IBOutlet var vista2Img: SpringImageView!
    @IBOutlet var vista2Gato: SpringImageView!
 */
    
    @IBAction func btnSlide2(_ sender: Any) {
        self.vista1.isHidden = true
        slide2()
        
    }
    @IBAction func btnSlide3(_ sender: Any) {
        slide3()
    }
    @IBAction func btnSlide4(_ sender: Any) {
        slide4()
    }
    
    @IBAction func btnSlide6(_ sender: Any) {
        slide6()
    }
    
    @IBAction func btnSlide7(_ sender: Any) {
        slide7()
    }
    
    @IBAction func btnSlide5(_ sender: Any) {
        slide5()
    }
    @IBOutlet var btnSlide3: UIButton!
    @IBOutlet var btnSlide2: UIButton!
    @IBOutlet var btnSlide4: UIButton!
    
    @IBOutlet var btnSlide6: UIButton!
    
    @IBOutlet var btnSlide5: UIButton!
    @IBOutlet var btnSlide7: UIButton!
    
    
    
    var timer1: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
        
        swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
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
        
        self.nombre.delegate = self;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.bullets.isHidden = true
        self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
        
    }
    
    func animation1() {
        
    
        self.vista7item1.animation    = "swing"
        self.vista7item1.curve        = "easeIn"
        self.vista7item1.delay        = 0
        self.vista7item1.duration     = 0.9
        self.vista7item1.animate()

     
        self.vista7item2.animation    = "swing"
        self.vista7item2.curve        = "easeIn"
        self.vista7item2.delay        = 0.3
        self.vista7item2.duration     = 0.9
        self.vista7item2.animate()
        

        self.vista7item3.animation    = "swing"
        self.vista7item3.curve        = "easeIn"
        self.vista7item3.delay        = 0.6
        self.vista7item3.duration     = 0.9
        self.vista7item3.animate()
        
     
        self.vista7item4.animation    = "swing"
        self.vista7item4.curve        = "easeIn"
        self.vista7item4.delay        = 0.3
        self.vista7item4.duration     = 0.9
        self.vista7item4.animate()
        
    }
    
    func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
        if gesture.direction == UISwipeGestureRecognizerDirection.right {
            print("Swipe Right")
            if (a == 7){
                 self.btnSlide6.sendActions(for: .touchUpInside)
                vistaActual.curlRightAnimal3(viewFrom: self.vistaActual, viewto: self.vista6,animationTime: 0.5,efect:{
            
                } )
                a = 6
                self.bullets.image = UIImage(named: "bulletForte5y")
                
                
            }else if (a == 6){
                 self.btnSlide5.sendActions(for: .touchUpInside)
                vistaActual.curlRightAnimal3(viewFrom: self.vistaActual, viewto: self.vista5,animationTime: 0.5,efect:{
        
                } )
                a = 5
                self.bullets.image = UIImage(named: "bulletForte4y")
                
            }else if (a == 5){
                self.btnSlide4.sendActions(for: .touchUpInside)
                vistaActual.curlRightAnimal3(viewFrom: self.vistaActual, viewto: self.vista4,animationTime: 0.5,efect:{
                    
                } )
                a = 4
                self.bullets.image = UIImage(named: "bulletForte3y")
                
            }else if (a == 4){
                self.btnSlide3.sendActions(for: .touchUpInside)
                print("holar")
    
                vistaActual.curlRightAnimal(viewFrom: self.vistaActual, viewto: self.vista3,animationTime: 0.5)
                a = 3
                self.bullets.image = UIImage(named: "bulletForte2y")
             
            }else if ( a == 3) {
             self.btnSlide2.sendActions(for: .touchUpInside)
             vistaActual.curlRightAnimal(viewFrom: self.vistaActual, viewto: self.vista2,animationTime: 0.5)
                a = 2
                self.bullets.image = UIImage(named: "bulletForte1y")
             
            }
            print(a)
        }
        else if gesture.direction == UISwipeGestureRecognizerDirection.left {
            print("Swipe Left")
            if (a == 1){
                 self.btnSlide2.sendActions(for: .touchUpInside)
                  vistaActual.curlLeftAnimal(viewFrom: self.vistaActual, viewto: self.vista2,animationTime: 0.5)
                a = 2
                 self.bullets.isHidden = false
                 self.bullets.image = UIImage(named: "bulletForte1y")
                
            }else if ( a == 2) {
                self.btnSlide3.sendActions(for: .touchUpInside)
                print("holal")
                vistaActual.curlLeftAnimal(viewFrom: self.vistaActual, viewto: self.vista3,animationTime: 0.5)
                
                a = 3
                self.bullets.image = UIImage(named: "bulletForte2y")
             
            }else if ( a == 3) {
       
                 self.btnSlide4.sendActions(for: .touchUpInside)
                vistaActual.curlLeftAnimal3(viewFrom: self.vistaActual, viewto: self.vista4,animationTime: 0.5,efect:{

                } )
                a = 4
                self.bullets.image = UIImage(named: "bulletForte3y")
                
            }else if ( a == 4) {
            
                 self.btnSlide5.sendActions(for: .touchUpInside)
                vistaActual.curlLeftAnimal3(viewFrom: self.vistaActual, viewto: self.vista5,animationTime: 0.5,efect:{
             
                } )
                
                a = 5
                self.bullets.image = UIImage(named: "bulletForte4y")
                
            }else if ( a == 5) {
                self.btnSlide6.sendActions(for: .touchUpInside)
                vistaActual.curlLeftAnimal(viewFrom: self.vistaActual, viewto: self.vista6,animationTime: 0.5)
                a = 6
                self.bullets.image = UIImage(named: "bulletForte5y")
                
            }else if ( a == 6) {
                self.btnSlide7.sendActions(for: .touchUpInside)
                vistaActual.curlLeftAnimal(viewFrom: self.vistaActual, viewto: self.vista7,animationTime: 0.5)
                a = 7
                self.bullets.image = UIImage(named: "bulletForte6y")
                
            }
              print(a)
            
        }
    }

    func slide1(){
        
    }
  
    func slide2(){
        
      
        
        self.vista2Img.opacity      = 0.0
        self.vista2Img.animation    = "zoomIn"
        self.vista2Img.curve        = "easeIn"
        self.vista2Img.delay        = 0
        self.vista2Img.duration     = 6.0
        self.vista2Img.repeatCount  = 1
        self.vista2Img.animate()
 /*
        self.vista2Titulo.animation    = "animalPop"
        self.vista2Titulo.curve        = "easeIn"
        self.vista2Titulo.delay        = 0
        self.vista2Titulo.duration     = 2.0
        self.vista2Titulo.repeatCount  = 1
        self.vista2Titulo.animate()
      
        self.vista2Fillete.animation    = "flash"
        self.vista2Fillete.curve        = "easeIn"
        self.vista2Fillete.delay        = 0
        self.vista2Fillete.duration     = 4.3
        self.vista2Fillete.repeatCount  = 1
        self.vista2Fillete.animate()
          */
        
    }

    
    func slide3() {
        self.view.removeGestureRecognizer(self.swipeLeft)
        self.view.removeGestureRecognizer(self.swipeRight)
        
    
        
        self.vista3Item1.opacity      = 0.0
        self.vista3Item1.animation    = "animalPop"
        self.vista3Item1.curve        = "easeIn"
        self.vista3Item1.delay        = 0
        self.vista3Item1.duration     = 0.5
        self.vista3Item1.repeatCount  = 1
        self.vista3Item1.animate()
        
        self.vista3Item2.opacity      = 0.0
        self.vista3Item2.animation    = "animalPop"
        self.vista3Item2.curve        = "easeIn"
        self.vista3Item2.delay        = 0
        self.vista3Item2.duration     = 1.0
        self.vista3Item2.repeatCount  = 1
        self.vista3Item2.animate()
        
        self.vista3Item3.opacity      = 0.0
        self.vista3Item3.animation    = "animalPop"
        self.vista3Item3.curve        = "easeIn"
        self.vista3Item3.delay        = 0.0
        self.vista3Item3.duration     = 1.5
        self.vista3Item3.repeatCount  = 1
        self.vista3Item3.animate()
        
        delay(delay:1.2){
            // botones
            self.view.addGestureRecognizer(self.swipeLeft)
            self.view.addGestureRecognizer(self.swipeRight)
        }
    }
    
    func slide5(){
        
        self.vista4Titulo.animation    = "pop"
        self.vista4Titulo.curve        = "easeIn"
        self.vista4Titulo.delay        = 0
        self.vista4Titulo.duration     = 3.4
        self.vista4Titulo.repeatCount  = 1
        self.vista4Titulo.animate()
        
        self.vista4Texto.opacity      = 0.0
        self.vista4Texto.animation    = "animalPop"
        self.vista4Texto.curve        = "easeIn"
        self.vista4Texto.delay        = 0
        self.vista4Texto.duration     = 2.3
        self.vista4Texto.repeatCount  = 1
        self.vista4Texto.animate()
        
        self.nombreLbl.text = self.nombre.text
    }
    func slide4(){
        
     
        self.vista4Titulo1.animation    = "pop"
        self.vista4Titulo1.curve        = "easeIn"
        self.vista4Titulo1.delay        = 0
        self.vista4Titulo1.duration     = 3.4
        self.vista4Titulo1.repeatCount  = 1
        self.vista4Titulo1.animate()
        
        self.vista4Producto.opacity      = 0.0
        self.vista4Producto.animation    = "animalPop"
        self.vista4Producto.curve        = "easeIn"
        self.vista4Producto.delay        = 0
        self.vista4Producto.duration     = 2.3
        self.vista4Producto.repeatCount  = 1
        self.vista4Producto.animate()
    }
    
    func slide6(){
  
        self.vista6Titulo.animation    = "pop"
        self.vista6Titulo.curve        = "easeIn"
        self.vista6Titulo.delay        = 0
        self.vista6Titulo.duration     = 3.4
        self.vista6Titulo.repeatCount  = 6
        self.vista6Titulo.animate()
        
        self.vista6Flor1.animation    = "swing"
        self.vista6Flor1.curve        = "easeInOut"
        self.vista6Flor1.delay        = 0
        self.vista6Flor1.duration     = 3.8
        self.vista6Flor1.velocity     = 0.5
        self.vista6Flor1.repeatCount  = 3
        self.vista6Flor1.animate()
        
        self.vista6Flor2.animation    = "swing"
        self.vista6Flor2.curve        = "easeIn"
        self.vista6Flor2.delay        = 0
        self.vista6Flor2.duration     = 1.5
        self.vista6Flor2.velocity     = 0.5
        self.vista6Flor2.repeatCount  = 3
        self.vista6Flor2.animate()
        
    }
    
    func slide7(){
       
        self.vista7Img.opacity      = 0
        self.vista7Img.animation    = "zoomIn"
        self.vista7Img.curve        = "easeIn"
        self.vista7Img.delay        = 0
        self.vista7Img.duration     = 4.0
        self.vista7Img.velocity     = 0.1
        self.vista7Img.repeatCount  = 1
        self.vista7Img.animate()
        
       
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true);
        return false;
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let aux = 100
        ViewUpanimateMoving(up: true, upValue: CGFloat(aux))
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        let aux = 100
        ViewUpanimateMoving(up: false, upValue: CGFloat(aux))

    }
    func ViewUpanimateMoving (up:Bool, upValue :CGFloat){
        let durationMovement:TimeInterval = 0.3
        let movement:CGFloat = ( up ? -upValue : upValue)
        UIView.beginAnimations( "animateView", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(durationMovement)
        self.view.frame = self.view.frame.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
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

public extension UIView {
    
    func curlLeftAnimal(viewFrom:UIView,viewto:UIView,animationTime:Float){
 
            let position = CGPoint(x: 0, y:0)
            viewto.frame.origin = position
            
            UIView.animate(withDuration: TimeInterval(animationTime), animations: {
    
                let animation = CATransition()
                animation.duration = 1.2
                animation.startProgress = 0.0
                animation.endProgress = 1.2
                animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                animation.type = "pageCurl"
                animation.subtype = "fromRight"
                animation.isRemovedOnCompletion = true
                animation.fillMode = "extended"
                viewFrom.layer.add(animation, forKey: "pageFlipAnimation")
             
                viewFrom.addSubview(viewto)
            
            },completion: { (finished) -> Void in
                // ....
            })
            
            
    }
    
    func curlLeftAnimal3(viewFrom:UIView,viewto:UIView,animationTime:Float, efect:@escaping () -> ()){
        
        let position = CGPoint(x: 0, y:0)
        viewto.frame.origin = position
        
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            
            let animation = CATransition()
            animation.duration = 1.2
            animation.startProgress = 0.0
            animation.endProgress = 1.2
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            animation.type = "pageCurl"
            animation.subtype = "fromRight"
            animation.isRemovedOnCompletion = true
            animation.fillMode = "extended"
            viewFrom.layer.add(animation, forKey: "pageFlipAnimation")
            
            viewFrom.addSubview(viewto)
         
            
            
        },completion: { (finished) -> Void in
           
            efect()
        })
        
        
    }
    
    func curlRightAnimal3(viewFrom:UIView,viewto:UIView,animationTime:Float, efect:@escaping () -> ()){
        
        let position = CGPoint(x: 0, y:0)
        viewto.frame.origin = position
        
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            
            let animation = CATransition()
            animation.duration = 1.2
            animation.startProgress = 0.0
            animation.endProgress = 1.2
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            animation.type = "pageCurl"
            animation.subtype = "fromLeft"
            animation.isRemovedOnCompletion = true
            animation.fillMode = "extended"
            viewFrom.layer.add(animation, forKey: "pageFlipAnimation")
            
            viewFrom.addSubview(viewto)
            
            
            
        },completion: { (finished) -> Void in
            
            efect()
        })
        
        
    }
    
    
    func curlRightAnimal(viewFrom:UIView,viewto:UIView,animationTime:Float){
        // set a transition style
        // let transitionOptions = UIViewAnimationOptions.transitionCurlDown
        
        //viewFrom.transition(from: viewFrom, to: viewto, duration: TimeInterval(animationTime), options: transitionOptions, completion: nil)
        //tempUIView=[[UIView, alloc],initWithFrame,:self.animatedUIView.bounds];
        
        
        
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            
            
            //let tempUIView = UIView(frame: viewFrom.bounds)
            
            // tempUIView.backgroundColor = UIColor(red: 254, green: 0, blue: 0, alpha: 1)
            let position = CGPoint(x: 0, y:0)
            viewto.frame.origin = position
 
            let animation = CATransition()
            animation.duration = 1.2
            animation.startProgress = 0.0
            animation.endProgress = 1.2
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
            animation.type = "pageCurl"
            animation.subtype = "fromLeft"
            animation.isRemovedOnCompletion = true
            animation.fillMode = "extended"
            viewFrom.layer.add(animation, forKey: "pageFlipAnimation")
            viewFrom.addSubview(viewto)
            
            
        },completion: nil)
        
        
        
    }

}


