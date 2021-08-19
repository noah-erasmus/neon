//
//  SettingsView.swift
//  neon
//
//  Created by Caitie on 2021/07/29.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var appearance: Appearance
    var body: some View {
        VStack(spacing: 0){
//            ZStack(){
//                Color("neonPink").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                HStack(){
//                    Text("neon.")
//                        .bold()
//                        .font(.system(size: 14))
//                        .foregroundColor(Color.white)
//                        .frame(
//                            maxWidth: .infinity,
//                            alignment: .leading
//                        )
//                    NavigationLink(
//                        destination: LibraryView().navigationBarHidden(true),
//                        label: {
//                            Image(systemName: "arrowshape.turn.up.backward.fill")
//                                .foregroundColor(Color("offWhite"))
//                        }
//                    )
//                }
//                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
//            }
//            .frame(
//                maxWidth: .infinity,
//                maxHeight: 50
//            )
            ZStack(){
                Color("darkGrey")
                VStack(spacing: 10){
                    Image("neonSplash")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 100, alignment: .trailing)
                    Text("neon. v0.1")
                        .bold()
                        .foregroundColor(Color("offWhite"))
                        .font(.system(size: 14))
                    HStack(){
                        Text("Album Title")
                            .bold()
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 14))
                        Spacer()
                        Text("Noah Erasmus")
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 12))
                    }
                    HStack(){
                        Text("Git Repo")
                            .bold()
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 14))
                        Spacer()
                        Text("github.com/noah-erasmus/neon")
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 12))
                    }
                    HStack(alignment: .top){
                        Text("Description")
                            .bold()
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 14))
                        Spacer()
                        Text("Neon is an application for music fans who want a repository of information on their favourite albums.")
                            .foregroundColor(Color("offWhite"))
                            .font(.system(size: 12))
                            .multilineTextAlignment(.trailing)
                            .frame(
                            maxWidth: 190
                            )
                    }
                    Spacer()
                    Toggle(isOn: $appearance.isGrid) {
                            Text("Enable Grid View")
                                .foregroundColor(Color("offWhite"))
                                .font(.system(size: 12))
                    }
                    .frame(
                        maxWidth: 153,
                        alignment: .leading
                    )
                    .toggleStyle(SwitchToggleStyle(tint: Color("neonPink")))
                }
                .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .top
                )
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .top
        )
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(Appearance())
    }
}
