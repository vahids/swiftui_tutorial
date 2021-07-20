//
//  GridSample.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/18/21.
//

import SwiftUI

struct GridSample: View {
    let products = Product.all()
    
    var body: some View {

        let chunckedProducts = products.chunked(into: 2)
        
        List {
            ForEach(0 ..< chunckedProducts.count) { index in
                HStack() {
                    ForEach(0 ..< chunckedProducts[index].count) { secondIndex in
                        Spacer()
                        VStack {
                            Image("\(chunckedProducts[index][secondIndex].id)")
                                .resizable()
                                .scaledToFit()
                                .waterMark(with: "MODEMA")
                            Text(chunckedProducts[index][secondIndex].name)
                                .center()
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct GridSample_Previews: PreviewProvider {
    static var previews: some View {
        GridSample()
    }
}

struct WaterMark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottom) {
            content
            Text(text)
                .font(.caption2)
                .bold()
                .center()
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
                .cornerRadius(5)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
        }
    }
}

struct MyText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
    }
}

extension Text {
    func center() -> some View {
        self.modifier(MyText())
    }
}

extension View {
    func waterMark(with text: String) -> some View {
        self.modifier(WaterMark(text: text))
    }
}
