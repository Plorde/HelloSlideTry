//
//  TextfieldView.swift
//  HelloSlideTryVS0.01
//
//  Created by 龙锐 on 2020/1/30.
//  Copyright © 2020 龙锐. All rights reserved.
//

import SwiftUI

class WrappableTextField: UITextField, UITextFieldDelegate {
    var textFieldChangedHandler: ((String)->Void)?
    var onCommitHandler: (()->Void)?
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = textField.superview?.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let currentValue = textField.text as NSString? {
            let proposedValue = currentValue.replacingCharacters(in: range, with: string)
            textFieldChangedHandler?(proposedValue as String)
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        onCommitHandler?()
    }
}

struct TextfieldView: UIViewRepresentable {
    private let tmpView = WrappableTextField()

    //var exposed to SwiftUI object init
    var tag:Int = 0
    var placeholder:String?
    var changeHandler:((String)->Void)?
    var onCommitHandler:(()->Void)?
    
    func makeUIView(context: UIViewRepresentableContext<TextfieldView>) -> WrappableTextField {
        tmpView.tag = tag
        tmpView.delegate = tmpView
        tmpView.placeholder = placeholder
        tmpView.onCommitHandler = onCommitHandler
        tmpView.textFieldChangedHandler = changeHandler
        return tmpView
    }
    
    func updateUIView(_ uiView: WrappableTextField, context: UIViewRepresentableContext<TextfieldView>) {
        uiView.setContentHuggingPriority(.defaultHigh, for: .vertical)
        uiView.setContentHuggingPriority(.defaultLow, for: .horizontal)
    }
}

