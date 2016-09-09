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
    
    var button1   = UIButton(type: UIButtonType.Custom) as UIButton
    var button2   = UIButton(type: UIButtonType.Custom) as UIButton
    var button3   = UIButton(type: UIButtonType.Custom) as UIButton
    var button4   = UIButton(type: UIButtonType.Custom) as UIButton
    var button5   = UIButton(type: UIButtonType.Custom) as UIButton
    var button6   = UIButton(type: UIButtonType.Custom) as UIButton
    
    
    @IBAction func MenuButtonTapped(sender: UIButton) {
     
        if(fav == true){
            open()
        }
        else {
            close()
        }
    }
    
    
    func open(){
    
        button1.slideInFromRight(0.9, completionDelegate: self)
        button1.hidden = true
        
        button2.slideInFromRight(0.8, completionDelegate: self)
        button2.hidden = true
        
        button3.slideInFromRight(0.6, completionDelegate: self)
        button3.hidden = true
        
        button4.slideInFromRight(0.4, completionDelegate: self)
        button4.hidden = true
        
        button5.slideInFromRight(0.2, completionDelegate: self)
        button5.hidden = true
        
        button6.slideInFromRight(0.2, completionDelegate: self)
        button6.hidden = true
        
        fav = false
    
        animateButton()
    
    }
    
    func close(){
        
        button1.slideInFromLeft(0.2, completionDelegate: self)
        button1.hidden = false
        
        button2.slideInFromLeft(0.4, completionDelegate: self)
        button2.hidden = false
        
        button3.slideInFromLeft(0.6, completionDelegate: self)
        button3.hidden = false
        
        button4.slideInFromLeft(0.8, completionDelegate: self)
        button4.hidden = false
        
        button5.slideInFromLeft(0.9, completionDelegate: self)
        button5.hidden = false
        
        button6.slideInFromLeft(0.9, completionDelegate: self)
        button6.hidden = false
        
        fav = true
        
        animateButton()
        
    }
    
    override func viewDidAppear(animated: Bool) {
       
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
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation)
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
        
        buttonMenu.transform = CGAffineTransformMakeScale(0.1, 0.1)
        
        UIView.animateWithDuration(2.0,delay: 0,usingSpringWithDamping: CGFloat(0.2),initialSpringVelocity: CGFloat(6.0),options: UIViewAnimationOptions.AllowUserInteraction,animations: {
            self.buttonMenu.transform = CGAffineTransformIdentity
            },completion: { finished in
                // self.animateButton()
            }
        )
    }
    
    func createSideButtons(){
      
        
        for(var i : CGFloat = 0 ; i<6 ; i+=1){
        
            totalheight = 90 + (i * n)
      
            switch(i){
            
            case 0:
                
                let btnImage1 = "cat.png"
                let btnimg1 = UIImage(named: btnImage1)

                button1.frame = CGRectMake(m, totalheight, btnWidth, btnHeight)
                button1.setImage(btnimg1, forState: .Normal)
                button1.setTitle("Button", forState: UIControlState.Normal)
                button1.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(button1)
                button1.hidden = true
                button1.tag = 1
                
                break
           
            case 1:
                
                let btnImage2 = "cat.png"
                let btnimg2 = UIImage(named: btnImage2)

                button2.frame = CGRectMake(m, totalheight, btnWidth, btnHeight)
                button2.setImage(btnimg2, forState: .Normal)
                button2.setTitle("Button", forState: UIControlState.Normal)
                button2.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(button2)
                button2.hidden = true
                button2.tag = 2

                break
          
            case 2:
                
                let btnImage3 = "cat.png"
                let btnimg3 = UIImage(named: btnImage3)
                
                button3.frame = CGRectMake(m, totalheight, btnWidth, btnHeight)
                button3.setImage(btnimg3, forState: .Normal)
                button3.setTitle("Button", forState: UIControlState.Normal)
                button3.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(button3)
                button3.hidden = true
                button3.tag = 3
  
                break
          
            case 3:
            
                let btnImage4 = "cat.png"
                let btnimg4 = UIImage(named: btnImage4)
                
                button4.frame = CGRectMake(m, totalheight, btnWidth, btnHeight)
                button4.setImage(btnimg4, forState: .Normal)
                button4.setTitle("Button", forState: UIControlState.Normal)
                button4.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(button4)
                button4.hidden = true
                button4.tag = 4

                break
            
            case 4:
    
                let btnImage5 = "cat.png"
                let btnimg5 = UIImage(named: btnImage5)
                
                button5.frame = CGRectMake(m, totalheight, btnWidth, btnHeight)
                button5.setImage(btnimg5, forState: .Normal)
                button5.setTitle("Button", forState: UIControlState.Normal)
                button5.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(button5)
                button5.hidden = true
                button5.tag = 5
                
                break
           
            case 5:
                
                let btnImage6 = "cat.png"
                let btnimg6 = UIImage(named: btnImage6)
                
                button6.frame = CGRectMake(m, totalheight, btnWidth, btnHeight)
                button6.setImage(btnimg6, forState: .Normal)
                button6.setTitle("Button", forState: UIControlState.Normal)
                button6.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
                self.view.addSubview(button6)
                button6.hidden = true
                button6.tag = 6
                
                break
           
            default:
                break
    
            }
 
        }
 
    }
    
    func buttonClicked(sender: UIButton)
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

