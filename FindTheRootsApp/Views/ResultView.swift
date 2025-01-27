//
//  ResultView.swift
//  FindTheRootsApp
//
//  Created by Ahmet Kaan Caliskan on 2025-01-19.
//

import SwiftUI

struct ResultView: View {
    
    //MARK: Stored Properties
    let somePriorResult: Result
        //MARK: Computed Properties
        var body: some View {
            VStack(spacing: 10){
                
                //Input Values
                HStack(spacing: 30) {
                Text("a = \(somePriorResult.a.formatted(.number.precision(.fractionLength(1))))")
                Text("b = \(somePriorResult.b.formatted(.number.precision(.fractionLength(1))))")
                Text("c = \(somePriorResult.c.formatted(.number.precision(.fractionLength(1))))")
                           }
                
                //Output
                Text(somePriorResult.roots)
                    .font(Font.custom("Times New Roman", size : 20.0, relativeTo: .body))
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 15)
        }
}
#Preview {
    ResultView(somePriorResult: resultForPreviews)
}
