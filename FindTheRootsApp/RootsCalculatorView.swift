//
//  ContentView.swift
//  FindTheRootsApp
//
//  Created by Ahmet Kaan Caliskan on 2025-01-14.
//

import SwiftUI

struct RootsCalculatorView: View {
    @State var currentnumber: Double = 1
    var body: some View {
        NavigationStack{
            VStack{
                
                Image("QuadraticFormula")
                    .resizable()
                    .scaledToFit()
                Image("StandardForm")
                    .resizable()
                    .scaledToFit()
                HStack{
                    Text("a:1.0")
                        .padding()
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                    Text("b:-6.0")
                        .padding()
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                    Text("c:8.0")
                        .font(Font.custom("Times New Roman",
                                          size: 24.0,
                                          relativeTo: .body))
                }
                VStack{
                    
                    HStack{
                        Slider(
                            value: $currentnumber,
                            in: 0...100,
                            step: 1
                        )
                        Slider(
                            value: $currentnumber,
                            in: 0...100,
                            step: 1
                        )
                        Slider(
                            value: $currentnumber,
                            in: 0...100,
                            step: 1
                        )
                    }
                    Text("x≈2.00 and x≈4.00")
                }
                .navigationTitle("Find The Roots")
            }
            .padding()
            Spacer()
            
        }
    }
}

#Preview {
    RootsCalculatorView()
}
