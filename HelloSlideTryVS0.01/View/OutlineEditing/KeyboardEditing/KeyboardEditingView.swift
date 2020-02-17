//
//  KeyboardEditingView.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/2/2.
//  Copyright © 2020 龙锐. All rights reserved.
//
import SwiftUI
import Foundation


struct KeyboardEditingView: View {
    @EnvironmentObject var mymodel : HelloSlideDataModel
   
    var body: some View {
        HStack{
            TextfieldView(tag: 0, placeholder: "@username", changeHandler: { (newString) in
                self.mymodel.kstore.dispatch(inaction: .editinline(linenumber: 0, input: newString), inparser: self.mymodel.myparser)
                self.mymodel.haschanged = false
                            }, onCommitHandler: {
                print("commitHandler")
                }).frame(width:540, height:690)
                
//                {
//                    mymodel.apply(userinput: .keyboardaddLine(myparser: mymodel.myparser))
//            }
            Spacer()
            SlidePresentingViewKeyboard()
                .frame(width: 540, height: 690)
        }
        
    }
}


struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            KeyboardEditingView().environmentObject(HelloSlideDataModel())
            KeyboardEditingView().previewDevice("iPad Air 2").environmentObject(HelloSlideDataModel())
        }
    }
}
