//
//  OnboardingView.swift
//  neon
//
//  Created by Caitie on 2021/08/05.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        ZStack{
            TabView{
                OnboardingCardView(title: "1. SCROLL YOUR LIBRARY", copy: "An attractive interface makes browsing your music a pleasure. Import your library from streaming services and view it at a moment's notice.", image: "headphones", step: 1)
                OnboardingCardView(title: "2. VIEW DETAILS", copy: "When did that album release again? Sure it's on the tip of your tongue but it's also a touch away in your library. Check out the release date and other key details.", image: "club", step: 2)
                OnboardingCardView(title: "3. USE FILTERS", copy: "We know you have a lot of music, we know scrolling through it is hard and your thumb gets tired. We've got you, use our filters to narrow down that search.", image: "mixboard", step: 3)
            }
            .tabViewStyle(PageTabViewStyle())
            HStack{
                Spacer()
                VStack{
                    Spacer()
                    Button(action: {
                        isOnboarding = false
                    }, label: {
                        Text("Start")
                            .padding(EdgeInsets(top: 5, leading: 30, bottom: 5, trailing: 30))
                            .foregroundColor(.white)
                            .background(Color("neonPink"))
                            .cornerRadius(5)
                    })
                    .padding(EdgeInsets(top:0, leading:0, bottom:15, trailing: 15))
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
