//
//  ContentView.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/1/30.
//  Copyright © 2020 龙锐. All rights reserved.
//

import SwiftUI

let thisscale1 = UIScreen.main.bounds.width / 414
let thisscale2 = UIScreen.main.bounds.height / 414
struct ContentView: View {
    @EnvironmentObject var mymodel : HelloSlideDataModel
    @ObservedObject var mainstore : AppStore
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    

    var body: some View {
  
        VStack{
            Spacer(minLength: 40)
            HStack{
                //Spacer()
                HStack{
                    EditButton(title: "b01",action: {
                        self.mainstore.dispatch(myaction: .tokeyboard, inparser: self.mymodel.myparser)
                        self.mymodel.haschanged = false

                        }).padding(24)
                    EditButton(title: "b02",action: {
                        self.mainstore.dispatch(myaction: .tonlp, inparser: self.mymodel.myparser)
                        self.mymodel.haschanged = false

                    }).padding(24)
                    EditButton(title: "b03",action: {
                        self.mainstore.dispatch(myaction: .tobrainmap, inparser: self.mymodel.myparser)
                        self.mymodel.haschanged = false

                    }).padding(24)
                    EditButton(title: "b04",action: {
                        self.mainstore.dispatch(myaction: .topencil, inparser: self.mymodel.myparser)
                        self.mymodel.haschanged = false
                    }).padding(24)
                }
                Spacer()
            HStack{
                SlideButton(title: "s01", action: {
                    self.mainstore.dispatch(myaction: .changetemplate(templateid: 1), inparser: self.mymodel.myparser)
                    self.mymodel.haschanged = false

                    },color: "001").padding(15)
                SlideButton(title: "s02", action: {
                    self.mainstore.dispatch(myaction: .changetemplate(templateid: 2), inparser: self.mymodel.myparser)
                    self.mymodel.haschanged = false

                    },color: "002").padding(15)
                SlideButton(title: "s01", action: {
                    self.mainstore.dispatch(myaction: .changetemplate(templateid: 3), inparser: self.mymodel.myparser)
                    self.mymodel.haschanged = false

                    },color: "003").padding(15)
                SlideButton(title: "s01", action: {
                self.mainstore.dispatch(myaction: .changetemplate(templateid: 3), inparser: self.mymodel.myparser)
                    self.mymodel.haschanged = false

                },color: "004").padding(15)
                SlideButton(title: "s01", action: {
                self.mainstore.dispatch(myaction: .changetemplate(templateid: 3), inparser: self.mymodel.myparser)
                    self.mymodel.haschanged = false

                },color: "005").padding(17.5)

            }.background(Color.gray)
            }
            //Spacer()
            if(self.mainstore.appstate.keyboardout){
                KeyboardEditingView()
                    //.frame(height:690)
                    //.padding(.top)
            }else if(self.mainstore.appstate.brainmapout){
                BrainmapView()
                //.frame(height:690)
                    //.padding(.top)
            }else if(self.mainstore.appstate.nlpout){
                    NLPEditingView()
                 //   .frame(width:1080, height:690)
                    //.padding(.top)
            }else{
                    PencilEditingView()
                  //  .frame(width:1080, height:690)
                   // .padding(.top)
            }
            
           
        
        }
    
    }
}


struct EditButton : View {

    let title: String
   // let foregroundColor: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(title)
                .resizable()
                .frame(width: 40, height: 40, alignment: .bottom)
            }//.foregroundColor(Color("ButtonBackground"))
    }
}

struct SlideButton : View {

    let title: String
  //  let foregroundColor: String
    let action: () -> Void
    let color : String
    var body: some View {
        Button(action: action) {
            Image(title)
                .resizable()
                .frame(width: 70, height: 70, alignment: .bottom)
        }.foregroundColor(color.stringcolor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{ ContentView(mainstore: AppStore()).environmentObject(HelloSlideDataModel())
            .previewLayout(.fixed(width: 1024, height: 768))
            ContentView(mainstore: AppStore()).previewDevice("iPad Air 2").environmentObject(HelloSlideDataModel())
                .previewLayout(.fixed(width: 1024, height: 768))
        }
    }
}
