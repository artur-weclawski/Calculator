//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue = ""
    @State var showValue = ""
    @State var operacja = ""
    @State var isCalc = false
    var body: some View {
    
        VStack {
            Spacer()
            Text("KALKULATOR").font(.largeTitle)
            Spacer()
            Output(wynik : $inputValue)
            HStack{
                Przycisk(znak : "1", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "2", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "3", output : $showValue, temp: $inputValue, isClick: $isCalc)
            }
            HStack{
                Przycisk(znak : "4", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "5", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "6", output : $showValue, temp: $inputValue, isClick: $isCalc)
            }
            HStack{
                Przycisk(znak : "7", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "8", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "9", output : $showValue, temp: $inputValue, isClick: $isCalc)
            }
            HStack{
                Przycisk(znak : "0", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "+", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "-", output : $showValue, temp: $inputValue, isClick: $isCalc)
            }
            HStack{
                Przycisk(znak : "*", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "/", output : $showValue, temp: $inputValue, isClick: $isCalc)
                Przycisk(znak : "sin", output : $showValue, temp: $inputValue, isClick: $isCalc)
            }
            Oblicz(output : $showValue, temp : $inputValue, isClick: $isCalc)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
