//
//  GlobalVariables.swift
//  iMenu
//
//  Created by apple on 24.08.2016.
//  Copyright © 2016 BlueWonders. All rights reserved.
//

import UIKit

class GlobalVariables: UIViewController {
 
    
    internal var version = "0.1"
 
    class var sharedManager : GlobalVariables{
        
        struct Static {
            
            static let instance = GlobalVariables()
        }
        
        return Static.instance
    }
    
    
    func getScreenBounds() -> CGRect
    {
        
        return UIScreen.mainScreen().bounds
    }
    
    func getScreenNativeBounds() -> CGRect
    {
        
        return UIScreen.mainScreen().nativeBounds
    }
   
    
    func isTablet() -> Bool
    {
        
        var iTablet : Bool = true
        
        if(UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad)
        {
            iTablet = true
        }else if (UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone)
        {
            iTablet = false
        }
        return iTablet
    }
    
    func rotated() -> Bool
    {
     
        var situation : Bool = true
        
        let screenSize : CGRect = UIScreen.mainScreen().bounds
        
        if(UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation))
        {
            situation  = true
        }
        else if (UIDeviceOrientationIsPortrait(UIDevice.currentDevice().orientation))
        {
            situation  = false
        }
        else
            if (screenSize.height>screenSize.width){
                situation = false
            }
            else
                if (screenSize.width>screenSize.height){
                    situation = true
        }
        return situation
        
    }
    
    
    
    
}
