//
//  ScaleBlurTransitionView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct ScaleBlurTransitionView: View {
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
                                Text("Scale & Blur")
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        )
                        .transition(.scaleAndBlur)
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
        .navigationTitle("Scale and Blur")
    }
}

#Preview {
    ScaleBlurTransitionView()
}
