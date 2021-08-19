//
//  FilterView.swift
//  neon
//
//  Created by Caitie on 2021/08/15.
//

import SwiftUI
import Foundation

struct FilterView: View {
    @ObservedObject var lengthSlider = CustomSlider(start: 10, end: 100)
    @ObservedObject var ratingSlider = CustomSlider(start: 10, end: 100)
    @EnvironmentObject var filters: Filters
    var sortOptions = ["Release date", "Title", "Artist", "Label"]
    var listOrder = ["Ascending", "Descending"]
    
    var body: some View {
        ZStack{
            Color("darkGrey")
            ScrollView{
                VStack(spacing:0){
                    Text("Length")
                        .foregroundColor(Color("offWhite"))
                    SliderView(slider: lengthSlider)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 25, trailing: 0))
                    Text("Rating")
                        .foregroundColor(Color("offWhite"))
                    SliderView(slider: ratingSlider)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 25, trailing: 0))
                    Text("Sort by:")
                        .foregroundColor(Color("offWhite"))
                        .padding(EdgeInsets(top: 35, leading: 0, bottom: 0, trailing: 0))
                    Picker("Sort by:", selection: $filters.sort){
                        ForEach(sortOptions, id: \.self){
                            Text($0)
                                .foregroundColor(Color("offWhite"))
                        }
                    }.padding(0)
                    Text("Order:")
                        .foregroundColor(Color("offWhite"))
                    Picker("Order:", selection: $filters.order){
                        ForEach(listOrder, id: \.self){
                            Text($0)
                                .foregroundColor(Color("offWhite"))
                        }
                    }
                    .padding(0)
                }
                .padding(EdgeInsets(top: 25, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

struct SliderView: View {
    @ObservedObject var slider: CustomSlider
    
    var body: some View {
        RoundedRectangle(cornerRadius: slider.lineWidth)
            .fill(Color.gray.opacity(0.2))
            .frame(width: slider.width, height: slider.lineWidth)
            .overlay(
                ZStack {
                    //Path between both handles
                    SliderPathBetweenView(slider: slider)
                    
                    //Low Handle
                    SliderHandleView(handle: slider.lowHandle)
                        .highPriorityGesture(slider.lowHandle.sliderDragGesture)
                    
                    //High Handle
                    SliderHandleView(handle: slider.highHandle)
                        .highPriorityGesture(slider.highHandle.sliderDragGesture)
                }
            )
    }
}

struct SliderHandleView: View {
    @ObservedObject var handle: SliderHandle
    
    var body: some View {
        Circle()
            .frame(width: handle.diameter, height: handle.diameter)
            .foregroundColor(.white)
            .shadow(color: Color.black.opacity(0.15), radius: 2, x: 0, y: 0)
            .scaleEffect(handle.onDrag ? 1.3 : 1)
            .contentShape(Rectangle())
            .position(x: handle.currentLocation.x, y: handle.currentLocation.y)
    }
}

struct SliderPathBetweenView: View {
    @ObservedObject var slider: CustomSlider
    
    var body: some View {
        Path { path in
            path.move(to: slider.lowHandle.currentLocation)
            path.addLine(to: slider.highHandle.currentLocation)
        }
        .stroke(Color("neonPink"), lineWidth: slider.lineWidth)
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
