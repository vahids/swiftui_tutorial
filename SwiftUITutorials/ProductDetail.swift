//
//  ProductDetail.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/17/21.
//

import SwiftUI

struct ProductDetail: View {
    
    let product: Product
    @State private var isImageZoomed: Bool = false
    
    var body: some View {
        VStack {
            Image("\(product.id)")
                .resizable()
                .aspectRatio(contentMode: isImageZoomed ? .fill : .fit)
                .padding()
                .onTapGesture {
                    withAnimation {
                        isImageZoomed.toggle()
                    }
                }
            VStack {
                Text("$ " + product.roundedPrice)
                    .bold()
                    .foregroundColor(.orange)
                    .padding(EdgeInsets(top: 4, leading: 0, bottom: 0, trailing: 0))
                Text(product.size)
                    .font(.subheadline)
            }.padding()
            
        }
        .navigationBarTitle(Text(product.name), displayMode: .inline)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(product: Product.all()[0])
    }
}
