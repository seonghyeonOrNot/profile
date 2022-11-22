//
//  ProfileContent.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/22.
//

import SwiftUI

struct ProfileContent: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: 350)
            Text("Hello, World!")
        }
    }
}

struct ProfileContent_Previews: PreviewProvider {
    static var previews: some View {
        ProfileContent()
    }
}
