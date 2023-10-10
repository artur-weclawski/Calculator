//
//  Przycisk.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct Przycisk: View {
    @State var znak : String
    @Binding var output : String
    @Binding var temp : String
    @Binding var isClick : Bool
    var body: some View {
        Button(znak){
            if(isClick==true){
                temp = ""
                isClick = false
            }
            output = Operations().appendText(inputValue: znak, ciag: output)
            if(znak == "+" || znak == "-" || znak == "*" || znak == "/" || znak == "sin"){
                temp = ""
            }else{
                temp = znak
            }
        }.frame(width: 100, height: 60, alignment: .center).border(.black, width: 2).font(.largeTitle)
    }
}

struct ContentView_Przycisk: PreviewProvider{
    static var previews: some View{
        Przycisk(znak: "", output: .constant(""), temp: .constant(""), isClick: .constant(false))
    }
}
