//
//  Oblicz.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct Oblicz: View {
    @Binding var output : String
    @Binding var temp : String
    @Binding var isClick : Bool
    var body: some View {
        VStack{
            Button("Oblicz"){
                output = String(Operations().rozbij(inputValue: output))
                temp = output
                isClick = true
            }.frame(width: 315, height: 60, alignment: .center).border(.black, width: 2).font(.largeTitle)
        }
    }
}
struct ContentView_Oblicz: PreviewProvider{
    static var previews: some View{
        Oblicz(output: .constant(""), temp: .constant(""), isClick: .constant(false))
    }
}
