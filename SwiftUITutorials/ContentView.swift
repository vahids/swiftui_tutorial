//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/17/21.
//

import SwiftUI

struct ContentView: View {
    
    var products = Product.all()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Divider()
                HStack {
                    NavigationLink(destination: GridSample()) {
                        Text("Grids")
                            .foregroundColor(.blue)
                            .bold()
                            .font(.title)
                            .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0))
                    }
                    Spacer()
                    NavigationLink(destination: States()) {
                        Text("States")
                            .foregroundColor(.blue)
                            .bold()
                            .font(.title)
                            .padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 16))
                    }
                }
                Divider()
                ForEach(products, id:\.id) { product in
                    LazyVStack(alignment: .leading) {
                        NavigationLink(destination: ProductDetail(product: product)) {
                            ProductCell(product: product)
                        }
                        Divider()
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                }
                Spacer()
            }
            .navigationBarTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProductCell: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Image("\(product.id)")
                    .resizable()
                    .frame(width: 60, height: 80)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 3) {
                    Text(product.name)
                        .font(.title2)
                        .foregroundColor(.black)
                    Text("$ \(product.roundedPrice)")
                        .font(.subheadline)
                        .foregroundColor(Color(.darkGray))
                } .padding(EdgeInsets(top: 2, leading: 4, bottom: 2, trailing: 0))
                Spacer()
            }
        }
    }
}
