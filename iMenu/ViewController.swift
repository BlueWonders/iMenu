//
//  ViewController.swift
//  iMenu
//
//  Created by apple on 24.08.2016.
//  Copyright © 2016 BlueWonders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   @IBOutlet weak var buttonMenu: UIButton!
    
    var n :CGFloat!
    var totalheight : CGFloat!
    var m :CGFloat! //left
    var btnWidth : CGFloat!
    var btnHeight : CGFloat!
    var fav = false // close now
    
    var button1   = UIButton(type: UIButtonType.custom) as UIButton
    var button2   = UIButton(type: UIButtonType.custom) as UIButton
    var button3   = UIButton(type: UIButtonType.custom) as UIButton
    var button4   = UIButton(type: UIButtonType.custom) as UIButton
    var button5   = UIButton(type: UIButtonType.custom) as UIButton
    var button6   = UIButton(type: UIButtonType.custom) as UIButton
    
    
    @IBAction func MenuButtonTapped(_ sender: UIButton) {
     
        if(fav == true){
            open()
        }
        else {
            close()
        }
    }
    
    
    func open(){
    
        button1.slideInFromRight(0.9, completionDelegate: self)
        button1.isHidden = true
        
        button2.slideInFromRight(0.8, completionDelegate: self)
        button2.isHidden = true
        
        button3.slideInFromRight(0.6, completionDelegate: self)
        button3.isHidden = true
        
        button4.slideInFromRight(0.4, completionDelegate: self)
        button4.isHidden = true
        
        button5.slideInFromRight(0.2, completionDelegate: self)
        button5.isHidden = true
        
        button6.slideInFromRight(0.2, completionDelegate: self)
        button6.isHidden = true
        
        fav = false
    
        animateButton()
    
    }
    
    func close(){
        
        button1.slideInFromLeft(0.2, completionDelegate: self)
        button1.isHidden = false
        
        button2.slideInFromLeft(0.4, completionDelegate: self)
        button2.isHidden = false
        
        button3.slideInFromLeft(0.6, completionDelegate: self)
        button3.isHidden = false
        
        button4.slideInFromLeft(0.8, completionDelegate: self)
        button4.isHidden = false
        
        button5.slideInFromLeft(0.9, completionDelegate: self)
        button5.isHidden = false
        
        button6.slideInFromLeft(0.9, completionDelegate: self)
        button6.isHidden = false
        
        fav = true
        
        animateButton()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
        if(GlobalVariables.sharedManager.rotated() == false)
        {
            m = 5
            n = 70
            btnWidth = 60
            btnHeight = 60
            GlobalVariables.sharedManager.getScreenNativeBounds().height
        }
            
        else
        {
    
           if(GlobalVariables.sharedManager.isTablet() == false){
            
             m = 10
             n = 50
             btnWidth = 40
             btnHeight = 40
            }
            
            else{
            
             m = 5
             n = 70
             btnWidth = 60
             btnHeight = 60
            }
 
        }

          createSideButtons()
        
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation)
    {
        if(GlobalVariables.sharedManager.rotated() == false)
        {
            
            m = 5
            n = 70
            btnWidth = 60
            btnHeight = 60
        }
            
        else
        {
            
            if(GlobalVariables.sharedManager.isTablet() == false){
             
                m = 10
                n = 45
                btnWidth = 40
                btnHeight = 40
         
             }
             
             else{
                
                m = 5
                n = 70
                btnWidth = 60
                btnHeight = 60
             }
        
        }
    
        createSideButtons()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // UIApplication.sharedApplication().statusBarStyle = .LightContent // set Status Bar white
        
    }
    
    func animateButton() {
        
        buttonMenu.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(withDuration: 2.0,delay: 0,usingSpringWithDamping: CGFloat(0.2),initialSpringVelocity: CGFloat(6.0),options: UIViewAnimationOptions.allowUserInteraction,animations: {
            self.buttonMenu.transform = CGAffineTransform.identity
            },completion: { finished in
                // self.animateButton()
            }
        )
    }
    
    func createSideButtons(){
      
        
      
        
        for i :CGFloat in stride(from: 0, to: 6, by: 1){
            
            
            totalheight = 90 + (i * n)
      
            switch(i){
            
            case 0:
                
                let btnImage1 = "cat.png"
                let btnimg1 = UIImage(named: btnImage1)

                button1.frame = CGRect(x: m, y: totalheight, width: btnWidth, height: btnHeight)
                button1.setImage(btnimg1, for: UIControlState())
                button1.setTitle("Button", for: UIControlState())
                button1.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
                self.view.addSubview(button1)
                button1.isHidden = true
                button1.tag = 1
                
                break
           
            case 1:
                
                let btnImage2 = "cat.png"
                let btnimg2 = UIImage(named: btnImage2)

                button2.frame = CGRect(x: m, y: totalheight, width: btnWidth, height: btnHeight)
                button2.setImage(btnimg2, for: UIControlState())
                button2.setTitle("Button", for: UIControlState())
                button2.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
                self.view.addSubview(button2)
                button2.isHidden = true
                button2.tag = 2

                break
          
            case 2:
                
                let btnImage3 = "cat.png"
                let btnimg3 = UIImage(named: btnImage3)
                
                button3.frame = CGRect(x: m, y: totalheight, width: btnWidth, height: btnHeight)
                button3.setImage(btnimg3, for: UIControlState())
                button3.setTitle("Button", for: UIControlState())
                button3.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
                self.view.addSubview(button3)
                button3.isHidden = true
                button3.tag = 3
  
                break
          
            case 3:
            
                let btnImage4 = "cat.png"
                let btnimg4 = UIImage(named: btnImage4)
                
                button4.frame = CGRect(x: m, y: totalheight, width: btnWidth, height: btnHeight)
                button4.setImage(btnimg4, for: UIControlState())
                button4.setTitle("Button", for: UIControlState())
                button4.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
                self.view.addSubview(button4)
                button4.isHidden = true
                button4.tag = 4

                break
            
            case 4:
    
                let btnImage5 = "cat.png"
                let btnimg5 = UIImage(named: btnImage5)
                
                button5.frame = CGRect(x: m, y: totalheight, width: btnWidth, height: btnHeight)
                button5.setImage(btnimg5, for: UIControlState())
                button5.setTitle("Button", for: UIControlState())
                button5.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
                self.view.addSubview(button5)
                button5.isHidden = true
                button5.tag = 5
                
                break
           
            case 5:
                
                let btnImage6 = "cat.png"
                let btnimg6 = UIImage(named: btnImage6)
                
                button6.frame = CGRect(x: m, y: totalheight, width: btnWidth, height: btnHeight)
                button6.setImage(btnimg6, for: UIControlState())
                button6.setTitle("Button", for: UIControlState())
                button6.addTarget(self, action: #selector(ViewController.buttonClicked(_:)), for: UIControlEvents.touchUpInside)
                self.view.addSubview(button6)
                button6.isHidden = true
                button6.tag = 6
                
                break
           
            default:
                break
    
            }
 
        }
 
    }
    
    func buttonClicked(_ sender: UIButton)
    {
        switch sender.tag {
      
        case 1: print("btn1")
            break
        case 2: print("btn2")
            break
        case 3: print("btn3")
            break
        case 4: print("btn4")
            break
        case 5: print("btn5")
            break
        case 6: print("btn6")
            break
            
        default: ()
            break
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

