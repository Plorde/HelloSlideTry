//
//  Extension.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/1/30.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import SwiftUI
extension Int{
    var bgString : String{
        return numbertoString(bgnumber: self)
        
    }
    var bgColor : Color{
        return numbertoColor(colornumber: self)
    }
}

func numbertoString(bgnumber : Int) -> String{
    if(bgnumber == 1){
        return "001"
    }else if(bgnumber == 2){
        return "002"
    }
     return "001"
}
func numbertoColor(colornumber : Int) -> Color{
    if(colornumber == 1){
        return Color.blue
    }else if(colornumber == 2){
        return Color.green
    }
    return Color.yellow
}
func StringtoColor(colornumber : String) -> Color{
    if(colornumber == "001"){
        return Color.red
    }else if(colornumber == "002"){
        return Color.yellow
    }else if(colornumber == "003"){
        return Color.green
    }else if(colornumber == "004"){
        return Color.pink
    }else{
        return Color.orange
    }
    
    
}

extension String{
    var stringcolor : Color{
        return StringtoColor(colornumber: self)
    }
}
