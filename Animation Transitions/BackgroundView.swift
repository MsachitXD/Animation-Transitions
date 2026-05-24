//
//  BackgroundView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        MeshGradient(
            width: 2,
            height: 2,
            points: [
                [0, 0], [1, 0],
                [0, 1], [1, 1]
            ],
            colors: [
                .pink, .indigo,
                .yellow, .red
            ]
        )
        .opacity(0.4)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
