//
//  Przycisk.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct Przycisk: View {
    @Binding var znak : String
    var body: some View {
        Button(znak){}.frame(width: 100, height: 60, alignment: .center).border(.black, width: 2).font(.largeTitle)
    }
}

