//
//  Parser.swift
//  HelloSlideV0.01Tests
//
//  Created by 龙锐 on 2020/1/29.
//  Copyright © 2020 龙锐. All rights reserved.
//

import Foundation
import Combine
class Parser{
    var templateid : Int = 1
    var colorid : Int = 1
    var myslide = Slide()
    var myoutline = Outline()

    func drawSingleSlide(){
       
        myslide.slideelment.text = myoutline.text
         if(self.templateid == 1){
        if myoutline.text.count > 10{
            myslide.slideelment.font = 20
        }

        else{
            myslide.slideelment.font = 30
        }
    
        myslide.slideelment.width = 200
        myslide.slideelment.height = 200
            myslide.slideelment.color = 1
            myslide.bgimage = 1
        }
         else if(self.templateid == 2){
            if myoutline.text.count > 3{
                    myslide.slideelment.font = 30
                }

                else{
                    myslide.slideelment.font = 40
                }
            
                myslide.slideelment.width = 100
                myslide.slideelment.height = 300
                myslide.slideelment.color = 2
            myslide.bgimage = 2
         }else{
            if myoutline.text.count > 5{
                    myslide.slideelment.font = 20
                }

                else{
                    myslide.slideelment.font = 30
                }
            
                myslide.slideelment.width = 300
                myslide.slideelment.height = 100
                    myslide.slideelment.color = 3
            myslide.bgimage = 3
        }

    }
    
    func changeTemplateid(input : Int){
        self.templateid = input
        drawSingleSlide()
    }
    func changeColorid(input : Int){
        self.colorid = input
    }
    func chageOutline(lineid : Int, pageid : Int, newstring : String ){
        self.myoutline.text = newstring
    }
}

