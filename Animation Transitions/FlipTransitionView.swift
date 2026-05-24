//
//  FlipTransitionView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct FlipTransitionView: View {
    @State private var show = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack{
                
                Spacer()
                
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.mint.gradient)
                        .frame(width: 200, height: 200)
                        .overlay(
                            content: {
                                Text("Flip")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundStyle(.white)
                            }
                        )
                        .transition(.FlipFromTop)
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
        .navigationTitle("Flip From Top")
    }
}

#Preview {
    FlipTransitionView()
}
