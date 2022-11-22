//
//  test.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/11/01.
//

import SwiftUI

struct test: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.white)
        }
       
        .padding(15)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background{
            Color("BG")
                .ignoresSafeArea()
        }
        .toolbar {
            Button {
                      print("tap!")
                    } label: {
                      Label("Profile", systemImage: "person.crop.circle")
                    }

        }
        
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
