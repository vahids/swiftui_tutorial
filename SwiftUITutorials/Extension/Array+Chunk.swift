//
//  Array+Chunk.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/20/21.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, through: count, by: size).map({
            Array(self[$0 ..< Swift.min($0 + size, count)])
        })
    }
}
