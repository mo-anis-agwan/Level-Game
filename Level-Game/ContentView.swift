//
//  ContentView.swift
//  Level-Game
//
//  Created by Anis on 19/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab = "List View"
    private let items: [String] = ["List View", "Planner"]
    @Namespace var animation
    
    var body: some View {
        VStack {
            HeaderView()
                .frame(maxWidth: .infinity)
            
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack {
                    todayView()
                    
                    Divider()
                        .padding(.horizontal)
                    
                    HStack {
                        Text("Title")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top)
                        //Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        Image("content_img")
                            .resizable()
                            .padding()
                        HStack {
                            Text("<p> blog content <p>")
                                .foregroundColor(Color("midnightGrey"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .lineLimit(nil)
                            //Spacer()
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack{
                        Divider().frame(width:50, height: 0.5, alignment: .center)
                            .background(Color.gray)
                        HStack(spacing: 0) {
                            Text("List View")
                                .padding(.vertical, 15)
                                .padding(.horizontal, 15)
                                .background(
                                    ZStack {
                                        if currentTab == "List View" {
                                            Color("lightOrange")
                                                .cornerRadius(8)
                                                .matchedGeometryEffect(id: "TAB", in: animation)
                                        } else {
                                            Color("almostWhite")
                                                .cornerRadius(8)
                                        }
                                    }
                                )
                                .foregroundColor(currentTab == "List View" ?  .white : .gray)
                                .onTapGesture {
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                                        currentTab = "List View"
                                    }
                                }
                            
                            Text("Planner")
                                .padding(.vertical, 15)
                                .padding(.horizontal, 15)
                                .background(
                                    ZStack {
                                        if currentTab == "Planner" {
                                            Color("lightOrange")
                                                .cornerRadius(8)
                                                .matchedGeometryEffect(id: "TAB", in: animation)
                                        } else {
                                            Color("almostWhite")
                                                .cornerRadius(8)
                                        }
                                    }
                                )
                                .foregroundColor(currentTab == "Planner" ?  .white : .gray)
                                .onTapGesture {
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                                        currentTab = "Planner"
                                    }
                                }
                        }
                        
                        Divider().frame(width:50, height: 0.5, alignment: .center)
                            .background(Color.gray)
                    }
                    .padding(.vertical)
                    
                    // List View
                    
                }
                
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
