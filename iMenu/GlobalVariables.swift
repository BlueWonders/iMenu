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
        
        return UIScreen.main.bounds
    }
    
    func getScreenNativeBounds() -> CGRect
    {
        
        return UIScreen.main.nativeBounds
    }
   
    
    func isTablet() -> Bool
    {
        
        var iTablet : Bool = true
        
        if(UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad)
        {
            iTablet = true
        }else if (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone)
        {
            iTablet = false
        }
        return iTablet
    }
    
    func rotated() -> Bool
    {
     
        var situation : Bool = true
        
        let screenSize : CGRect = UIScreen.main.bounds
        
        if(UIDeviceOrientationIsLandscape(UIDevice.current.orientation))
        {
            situation  = true
        }
        else if (UIDeviceOrientationIsPortrait(UIDevice.current.orientation))
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
