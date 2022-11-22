//
//  ProfileView.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var pushButton: Bool = false
    //@State var pop: Popup
    
    var body: some View {
        VStack {
            Text("push the button")
            
            Button {
                
            // Popup()
                
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100, height: 50)
                    .overlay {
                        Text("push")
                            .foregroundColor(.white)
                            .font(.title2.bold())
                    }
                   
            }
            
            
//            .popup(isPresented: $showAlert,  type: .default, position: .bottom, animation: .spring(), closeOnTap: true, closeOnTapOutside: true) {
//                PopupView()
//                    .environmentObject(viewModel)
//        
//            }
            
            if self.pushButton {
                Text("ok it is time")
            }

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


