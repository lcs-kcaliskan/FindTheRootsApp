//
//  ContentView.swift
//  FindTheRootsApp
//
//  Created by Ahmet Kaan Caliskan on 2025-01-14.
//
import SwiftUI

struct RootsCalculatorView: View {
    @State var currentNumberA: Double = 1
    @State var currentNumberB: Double = 1
    @State var currentNumberC: Double = 1
    
    @State var priorResults: [Result] = []
    
    var formattedNumberA: String {
        currentNumberA.formatted(.number.precision(.fractionLength(1)))
    }
    var formattedNumberB: String {
        currentNumberB.formatted(.number.precision(.fractionLength(1)))
    }
    var formattedNumberC: String {
        currentNumberC.formatted(.number.precision(.fractionLength(1)))
    }
    
    var roots: String {
        let discriminant = currentNumberB * currentNumberB - 4 * currentNumberA * currentNumberC
        if discriminant < 0 {
            return "No real roots"
        } else {
            let x1 = (currentNumberB * -1 - discriminant.squareRoot()) / (2 * currentNumberA)
            let x2 = (currentNumberB * -1 + discriminant.squareRoot()) / (2 * currentNumberA)
            return "x ≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("QuadraticFormula").resizable().scaledToFit()
                Image("StandardForm").resizable().scaledToFit()
                
                HStack {
                    Text("value of a: \(formattedNumberA)")
                    Text("value of b: \(formattedNumberB)")
                    Text("value of c: \(formattedNumberC)")
                }
                .font(.title2)
                .padding()
                
                HStack {
                    Slider(value: $currentNumberA, in: 0...100, step: 0.1)
                    Slider(value: $currentNumberB, in: 0...100, step: 0.1)
                    Slider(value: $currentNumberC, in: 0...100, step: 0.1)
                }
                
                Text(roots).font(.title3).padding()
                
                Button("Save Result") {
                    let latestResult = Result(a: currentNumberA,
                                              b: currentNumberB,
                                              c: currentNumberC,
                                              roots: roots)
                    priorResults.append(latestResult)
                }
                .buttonStyle(.bordered)
                .padding()
                
                Text("History").font(.headline).padding(.top)
                List(priorResults.reversed()) { currentResult in
                    ResultView(somePriorResult: currentResult)
                }
            }
            .navigationTitle("Find The Roots")
        }
    }
}

#Preview {
    RootsCalculatorView()
}
