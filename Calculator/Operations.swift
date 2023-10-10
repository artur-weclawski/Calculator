//
//  Operations.swift
//  Calculator
//
//  Created by student on 10/10/2023.
//

import Foundation

struct Operations{
    func appendText(inputValue: String, ciag:String) -> String{
        let inputValue = inputValue
        var ciag = ciag
        ciag += inputValue
        return ciag
    }

    func oblicz(leftSize: Int, znak: String, rightSize:Int) -> Double?{
        if(znak == "+"){
            return Double(leftSize+rightSize)
        }else if(znak == "-"){
            return Double(leftSize-rightSize)
        }else if(znak == "*"){
            return Double(leftSize*rightSize)
        }else if(znak == "/"){
            if (rightSize == 0){
                return nil
            }else{
                return Double(leftSize/rightSize)
            }
        }else if(znak == "sin"){
            return sin(Double(leftSize))
        }
        else{
            return nil
        }
    }
    func rozbij(inputValue : String) -> Double{
        var znak : String = ""
        if(inputValue.contains("+")){
            znak = "+"
        }else if(inputValue.contains("-")){
            znak = "-"
        }else if(inputValue.contains("*")){
            znak = "*"
        }else if(inputValue.contains("/")){
            znak = "/"
        }else{
            znak="sin"
        }

        let components = inputValue.split(separator: znak)
        let leftSizeD : Double = Double(components[0])!
        let rightSizeD : Double = Double(components[1])!
        let leftSize : Int = Int(leftSizeD)
        let rightSize : Int = Int(rightSizeD)
        let wynik : Double = oblicz(leftSize: leftSize, znak: znak, rightSize: rightSize)!
        return wynik
    }
}
