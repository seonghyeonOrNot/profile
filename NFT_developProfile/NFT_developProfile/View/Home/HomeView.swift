//
//  HomeView.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var filter1: Bool = false
    @State var filter2: Bool = false
    @State var isDetailed = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        filter1.toggle()
                    } label: {
                        HStack {
                            Text("Hello World")
                            Image(systemName: self.filter1 ? "chevron.up" : "chevron.down") }
                                    .foregroundColor(.blue)
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 30)
                                            .stroke(Color.blue, lineWidth: 3)
                                )
                        


                    }.sheet(isPresented: $filter1, content:{
                        BottomSheet()
                            .presentationDetents([.height(200)])
                        
                    })

                    
                    Spacer()
                    
                    Button {
                        
                        filter2.toggle()
                        
                    } label: {
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 100, height: 50)
                            .overlay(
                                
                                HStack {
                                    Image(systemName: "arrowtriangle.down")
                                    Text("filter")
                                }.foregroundColor(.white)
                            
                            )
                    }.sheet(isPresented: $filter2) {
                        BottomSheet2()
                            .presentationDetents([.large])
                    }

                }.padding(15)
                
                HomeContent()
                
//                ScrollView(.vertical) {
//                    ForEach (0..<5) {_ in
//                        HomeContent()
//                    }
//                }
                
            }
            .navigationTitle(Text("NFT Museum"))
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct BottomSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        HStack {
            Text("필터 설정").font(.title2).padding()
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("닫기")
            }.padding()

        }
        List {
            Button("설정1"){
                
            }
            Button("설정2"){
                
            }
            Button {
                
            } label: {
                Text("setting3").multilineTextAlignment(.center)
            }

            
        }
        .listStyle(.inset)
        
            
            
    }
    
}

struct BottomSheet2: View {
    
    @State var setting1: Bool = false
    @State var setting2: Bool = false
    @State var setting3: Bool = false
    
    func toggle1(){setting1 = !setting1}
    func toggle2(){setting2 = !setting2}
    func toggle3(){setting3 = !setting3}
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        Text("설정").font(.title2).padding()
        List {
            HStack {
                Text("설정1")
                Spacer()
                Button(action: toggle1){
                    Image(systemName: self.setting1 ? "checkmark.square" : "square")
                }
                    

               // Image(systemName: self.setting1 ? "square" : "square.fill")
            }
            HStack {
                Text("설정2")
                Spacer()
                Button(action: toggle2){
                    Image(systemName: self.setting2 ? "checkmark.square" : "square")
                }
            }
            HStack {
                Text("설정3")
                Spacer()
                Button(action: toggle3){
                    Image(systemName: self.setting3 ? "checkmark.square" : "square")
                }
            }
           
        }
        .listStyle(.inset)
        .padding()
            
        
        HStack {
            
            Button {
                
                self.presentationMode.wrappedValue.dismiss()
                
            } label: {
                RoundedRectangle(cornerRadius: 30)
                    .overlay(Text("취소").foregroundColor(.white))
                    .frame(width: 180, height: 50)
        }
            
            Button {
                
                self.presentationMode.wrappedValue.dismiss()
                
            } label: {
                RoundedRectangle(cornerRadius: 30)
                    .overlay(Text("확인").foregroundColor(.white))
                    .frame(width: 180, height: 50)
        }
        }

    }
    
}
