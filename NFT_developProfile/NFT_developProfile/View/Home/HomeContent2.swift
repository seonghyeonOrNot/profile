//
//  HomeContent2.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/26.
//

import SwiftUI

struct HomeContent2: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 180, height: 180)
            Text("mynameis").font(.title.bold())
            Text("GENE :").font(.subheadline)
            Text("AGE :").font(.subheadline)
        }
    }
}

struct HomeContent2_Previews: PreviewProvider {
    static var previews: some View {
        HomeContent2()
    }
}
