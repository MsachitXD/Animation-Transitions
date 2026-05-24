//
//  MoveTransitionsView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct MoveTransitionsView: View {
    
    @State private var show = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack{
                
                Spacer()
                
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.pink.gradient)
                        .frame(width: 200, height: 200)
                        .transition(.move(edge: .bottom))
                }
                
                Spacer()
                
                Button(show ? "Hide" : "Show") {
                    withAnimation{
                        show.toggle()
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .navigationTitle("Move Transitions")
    }
}

#Preview {
    MoveTransitionsView()
}
