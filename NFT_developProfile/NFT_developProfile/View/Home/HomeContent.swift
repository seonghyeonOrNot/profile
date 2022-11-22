//
//  HomeContent.swift
//  NFT_developProfile
//
//  Created by 이성현 on 2022/10/22.
//

import SwiftUI

struct HomeContent: View {
    
    let nftCells = nftCell.all()
    
    var body: some View {
        
        List(self.nftCells, id: \.name) { nftCell in
            nftCellContent(nftCell: nftCell)
            }
        .listStyle(.plain)
        }

    }


struct HomeContent_Previews: PreviewProvider {
    static var previews: some View {
        HomeContent()
    }
}

struct nftCellContent: View {
    
    var nftCell: nftCell
    
    var body: some View {
        HStack {
            Image(nftCell.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
           
            VStack(alignment: .leading) {
                HStack {
                    Text("Name ").font(.body.bold())
                    Text(nftCell.name).font(.title2)
                }
                HStack {
                    Text("Price ").font(.body.bold())
                    Text("\(nftCell.price) ETH").font(.title2)
                }
            }
            .padding(.leading, 20)
            

        }
        
    }
}
//        HStack {
//            VStack(alignment: .leading, spacing: 5) {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 180, height: 180)
//                Text()
//                Text("GENE :").font(.subheadline)
//                Text("AGE :").font(.subheadline)
//            }
//            VStack(alignment: .leading, spacing: 5) {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 180, height: 180)
//                Text("mynameis").font(.title.bold())
//                Text("GENE :").font(.subheadline)
//                Text("AGE :").font(.subheadline)
//            }
//        }
