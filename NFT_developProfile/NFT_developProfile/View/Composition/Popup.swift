//
//  Popup.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/11/01.
//

import SwiftUI

struct Popup: View {
    
    private var checkedYes: String = "확인"
    private var checkedNo: String = "취소"
    
    @State var checkedNoButton: Bool = false
    @State var checkedYesButton: Bool = false
    
    
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 300, height: 250).foregroundColor(Color.green)
                .overlay {

                    VStack(alignment:.center ) {
                        
                        Text("알림")
                            .font(.title2.bold())
                            .padding([.bottom,.top], 10)
                        Text("지금 화면을 벗어나면, 주문내역이 모두 초기화됩니다. 그래도 주문내역을 초기화하시겠습니까?")
                            .frame(width: 250)
                            .lineSpacing(5)
                            .multilineTextAlignment(TextAlignment.center)
                        
                        Spacer()
                        
                        HStack {
                            Button {
                                self.checkedNoButton.toggle()
          
                            } label: {
                                Text(checkedNo)
                                    .kerning(-0.34)
                                    .foregroundColor(Color.white)
                                    .frame(width: 100, height: 55)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color.white, lineWidth: 1)
                                            .frame(width: 100, height: 55)
                                    )
                        }
                            
                            Button {
                                self.checkedYesButton.toggle()
                            } label: {
                                Text(checkedYes)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 30)
                                            .frame(width: 100, height: 55)
                                            .overlay {
                                                Text(checkedYes).foregroundColor(Color.black)
                                            }
                                           
                                    }
                        }
                            .frame(width: 100, height: 50)
                            .foregroundColor(.white)
                        }
                    }.padding()

                }
   
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color("BG")
                .opacity(Double(0.7))
                .ignoresSafeArea()
        )
        
    }
}

struct Popup_Previews: PreviewProvider {
    static var previews: some View {
        Popup()
    }
}
