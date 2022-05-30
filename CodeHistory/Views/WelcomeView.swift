//
//  WelcomeView.swift
//  CodeHistory
//
//  Created by Emrah Karabulut on 25.05.2022.
//

import SwiftUI

struct WelcomeView: View {

    var body: some View {
        NavigationView{
            ZStack{
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Select the correct answers to the following questions")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink {
                        GameView()
                    } label: {
                       BottomTextView(str: "Okay Lets go!")
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
