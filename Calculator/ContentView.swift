//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var _1 : String = "1"
    @State var _2 : String = "2"
    @State var _3 : String = "3"
    @State var _4 : String = "4"
    @State var _5 : String = "5"
    @State var _6 : String = "6"
    @State var _7 : String = "7"
    @State var _8 : String = "8"
    @State var _9 : String = "9"
    @State var _0 : String = "0"
    @State var _p : String = "+"
    @State var _m : String = "-"
    @State var _r : String = "*"
    @State var _d : String = "/"
    @State var _s : String = "sin"
    var body: some View {
    
        VStack {
            Spacer()
            Text("KALKULATOR").font(.largeTitle)
            Spacer()
            Output()
            HStack{
                Przycisk(znak : $_1)
                Przycisk(znak : $_2)
                Przycisk(znak : $_3)
            }
            HStack{
                Przycisk(znak : $_4)
                Przycisk(znak : $_5)
                Przycisk(znak : $_6)
            }
            HStack{
                Przycisk(znak : $_7)
                Przycisk(znak : $_8)
                Przycisk(znak : $_9)
            }
            HStack{
                Przycisk(znak : $_0)
                Przycisk(znak : $_p)
                Przycisk(znak : $_m)
            }
            HStack{
                Przycisk(znak : $_r)
                Przycisk(znak : $_d)
                Przycisk(znak : $_s)
            }
            Oblicz()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
