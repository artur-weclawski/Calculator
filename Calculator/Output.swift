//
//  Output.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct Output: View {
    @Binding var wynik : String
    var body: some View {
        TextField("", text: $wynik).frame(width: 315, height: 60, alignment:.center).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2).font(.largeTitle).multilineTextAlignment(.center)
    }
}



