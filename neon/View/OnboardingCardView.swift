//
//  OnboardingView.swift
//  neon
//
//  Created by Caitie on 2021/07/29.
//

import SwiftUI

struct OnboardingCardView: View {
    
    var title: String
    var copy: String
    var image: String
    var step: Int
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        VStack(spacing: 0){
            ZStack(){
                Color("darkBlue").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading, spacing: 10){
                    Text("neon.")
                        .bold()
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading
                        )
                        .padding(.leading, 15)
                        .padding(.top, 10)
                        .padding(.bottom, 5)
                    HStack(){
                        if step == 1 {
                            Text("1")
                                .foregroundColor(Color.white)
                                .background(
                                    Circle()
                                        .fill(Color("neonPink"))
                                        .frame(width: 25, height: 25)
                                )
                                .frame(
                                    maxWidth: 25,
                                    maxHeight: 25
                                )
                        } else {
                            Text("1")
                                .foregroundColor(Color("neonPink"))
                                .background(
                                    Circle()
                                        .stroke(Color("neonPink"), lineWidth: 1)
                                        .frame(width: 25, height: 25)
                                )
                                .frame(
                                    maxWidth: 25,
                                    maxHeight: 25
                                )
                        }
                        if step == 2 {
                            Text("2")
                                .foregroundColor(Color.white)
                                .background(
                                    Circle()
                                        .fill(Color("neonPink"))
                                        .frame(width: 25, height: 25)
                                )
                                .frame(
                                    maxWidth: 25,
                                    maxHeight: 25
                                )
                        } else {
                            Text("2")
                                .foregroundColor(Color("neonPink"))
                                .background(
                                    Circle()
                                        .stroke(Color("neonPink"), lineWidth: 1)
                                        .frame(width: 25, height: 25)
                                )
                                .frame(
                                    maxWidth: 25,
                                    maxHeight: 25
                                )
                        }
                        if step == 3 {
                            Text("3")
                                .foregroundColor(Color.white)
                                .background(
                                    Circle()
                                        .fill(Color("neonPink"))
                                        .frame(width: 25, height: 25)
                                )
                                .frame(
                                    maxWidth: 25,
                                    maxHeight: 25
                                )
                        } else {
                            Text("3")
                                .foregroundColor(Color("neonPink"))
                                .background(
                                    Circle()
                                        .stroke(Color("neonPink"), lineWidth: 1)
                                        .frame(width: 25, height: 25)
                                )
                                .frame(
                                    maxWidth: 25,
                                    maxHeight: 25
                                )
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 5)
                    Text(title)
                        .foregroundColor(Color.white)
                        .padding(.leading, 15)
                    Text(copy)
                        .foregroundColor(Color.white)
                        .font(.system(size: 12))
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                        .frame(
                            maxWidth: 260
                        )
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .top
                )
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 200,
                alignment: .top
            )
            ZStack(){
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .brightness(-0.3)
                    .frame(width:400)
                    .clipped()
                VStack(spacing: 30){
                    Spacer()
                   
                }
                .padding(.trailing, 30)
                .frame(
                    maxWidth: 400,
                    alignment: .trailing
                )
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        )
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(title: "1. SCROLL THE LIBRARY", copy: "An attractive interface makes browsing your music a pleasure. Import your library from streaming services and view it at a moment's notice.", image: "headphones", step: 1)
    }
}
