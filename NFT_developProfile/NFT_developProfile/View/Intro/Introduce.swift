//
//  Introduce.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/24.
//

import SwiftUI

struct Introduce: View {
    var body: some View {
     
        VStack {
            NavigationView {
                
                
                VStack(alignment: .center) {
                    Text("서비스를 개발한 개발자들을 소개합니다.")
                        .foregroundColor(.black)
                    
                    Divider()
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 350, height: 180).foregroundColor(.black)
                            .overlay(
                            Image("2")
                                .resizable()
                                .frame(width: 150,height: 150)
                        )
                        VStack(alignment: .center) {
                            Text("서원지(Roy)")
                                .font(.title2.bold())
                                .padding(.bottom,1)
                            Text("안녕하세요. IOS 개발자 입니다.").font(.body.bold())
                            Text("저는 이런걸 좋아하고요, 저런걸 좋아해요.").font(.subheadline).foregroundColor(.gray).padding(.top, -5)
                            
                            HStack{
                                Button {
                                    
                                } label: {
                                    Image(systemName: "applelogo")
                                }
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "applelogo")
                                }

                            }
                            .foregroundColor(.black)
                            .padding([.top,.bottom], 5)
                            .font(.title2)
                            
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 350, height: 180).foregroundColor(.black)
                                .overlay(
                                Image("cat 3d")
                                    .resizable()
                                    .frame(width: 130,height: 130)
                            )
                            Text("이성현(Nadine)")
                                .font(.title2.bold())
                                .padding(.bottom,1)
                            Text("안녕하세요. IOS 개발자 입니다.")
                            
                            HStack{
                                Button {
                                    
                                } label: {
                                    Image(systemName: "applelogo")
                                }
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "applelogo")
                                }

                            }
                            .foregroundColor(.black)
                            .padding([.top,.bottom], 5)
                            .font(.title2)
                            
                            
                            
                            
                        }
                        .padding(.leading, 10)
                        
                    }.foregroundColor(.black)
                    
                 
                        
                        
             
                    }
                    .padding(15)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                 
                    .navigationTitle(Text("개발자소개"))
            }
        }
        .toolbar {
            Button {
                
            } label: {
                Image(systemName: "person")
            }

        }
        
        
        
    }
        
        
}

struct Introduce_Previews: PreviewProvider {
    static var previews: some View {
        Introduce()
    }
}
