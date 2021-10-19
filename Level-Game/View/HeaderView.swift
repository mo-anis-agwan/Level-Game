//
//  HeaderView.swift
//  Level-Game
//
//  Created by Anis on 19/10/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            //Text("Header Image")
            ZStack {
                Circle()
                    .stroke(Color.gray, lineWidth: 5)
                    .frame(width: 70, height: 70, alignment: .center)
                
                Circle()
                    .trim(from: 0.0, to: 0.5)
                    .stroke(Color("lemonYellow"), lineWidth: 5)
                    .frame(width: 70, height: 70, alignment: .center)
                    .rotationEffect(Angle(degrees: 90))
                
                Image("unnamed")
                    .resizable()
                    .frame(width: 70, height: 70, alignment: .center)
                    .cornerRadius(50)
                    //.overlay(RoundedRectangle(cornerRadius: 50)
                                //.stroke(Color("lemonYellow") ,lineWidth: 2))
                    .padding(.all, 10)
            }
            VStack(alignment: .leading) {
                HStack {
                    Circle()
                        .frame(width: 10, height: 10, alignment: .center)
                        .foregroundColor(Color("lemonYellow"))
                    Text("0  |  Level 1")
                        .font(.caption)
                }
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("purpleKind"))
                        .frame(width: 200, height: 15)
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("lemonYellow"))
                        .frame(width: 98, height: 15)
                    Text("49%")
                        .font(.custom("Georgian", size: 10, relativeTo: .footnote))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 5)
                }
                .overlay(RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.white ,lineWidth: 2))
                .shadow(radius: 5)
            }
            Image("unnamed")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(50)
                .padding(.all, 10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
