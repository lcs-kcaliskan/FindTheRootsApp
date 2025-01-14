//
//  ContentView.swift
//  FindTheRootsApp
//
//  Created by Ahmet Kaan Caliskan on 2025-01-14.
//
import SwiftUI

struct RootsCalculatorView: View {
    // Stored properties
    @State var currentNumberA: Double = 1
    @State var currentNumberB: Double = 1
    @State var currentNumberC: Double = 1

    // Computed property for formatted value
    var formattedNumberA: String {
        currentNumberA.formatted(.number.precision(.fractionLength(1)))
    }
    var formattedNumberB: String {
        currentNumberB.formatted(.number.precision(.fractionLength(1)))
    }
    var formattedNumberC: String {
        currentNumberC.formatted(.number.precision(.fractionLength(1)))
    }

    var body: some View {
        NavigationStack {
            VStack {
                Image("QuadraticFormula")
                    .resizable()
                    .scaledToFit()
                Image("StandardForm")
                    .resizable()
                    .scaledToFit()

                HStack {
                    Text("value of a: \(formattedNumberA)")
                        .padding()
                        .font(Font.custom("Times New Roman", size: 24.0, relativeTo: .body))
                    Text("value of b: \(formattedNumberB)")
                        .padding()
                        .font(Font.custom("Times New Roman", size: 24.0, relativeTo: .body))
                    Text("value of c: \(formattedNumberC)")
                        .font(Font.custom("Times New Roman", size: 24.0, relativeTo: .body))
                }

                VStack {
                    HStack {
                        Slider(
                            value: $currentNumberA,
                            in: 0...100,
                            step: 0.1
                        )
                        Slider(
                            value: $currentNumberB,
                            in: 0...100,
                            step: 0.1
                        )
                        Slider(
                            value: $currentNumberC,
                            in: 0...100,
                            step: 0.1
                        )
                    }
                    .padding()

                    Text("x ≈ 2.00 and x ≈ 4.00")
                        .font(Font.custom("Times New Roman", size: 20.0))
                }
                .padding()

                Spacer()
            }
            .navigationTitle("Find The Roots")
            .padding()
        }
    }
}

#Preview {
    RootsCalculatorView()
}
