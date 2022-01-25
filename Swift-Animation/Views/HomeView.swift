//
//  HomeView.swift
//  Swift-Animation
//
//  Created by FX on 2022/01/24.
//

import SwiftUI

struct HomeView: View {
    @State private var flog = true
    var body: some View {
        
        ZStack {
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .scaleEffect(flog ? 1.0 : 2.0)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                    .scaleEffect(flog ? 1.0 : 0.5)
            }
            
            VStack {
                Spacer()
                Button("アニメーション") {
                    withAnimation {
                        self.flog.toggle()
                    }
                }
            }.padding()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
