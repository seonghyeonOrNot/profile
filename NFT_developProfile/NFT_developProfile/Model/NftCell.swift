
import Foundation

struct nftCell {
    let name: String
    let imageURL: String
    let price: Int
    
}

extension nftCell {
    
    static func all() -> [nftCell] {
        
        return[
            nftCell(name: "nft1", imageURL: "cat 3d", price: 6000),
            nftCell(name: "nft2", imageURL: "cat2", price: 6000),
            nftCell(name: "nft3", imageURL: "cat 3d", price: 6000),
            nftCell(name: "nft4", imageURL: "cat 3d", price: 6000),
            nftCell(name: "nft5", imageURL: "cat2", price: 6000),
            nftCell(name: "nft6", imageURL: "cat 3d", price: 6000)
        
        
        ]
    }
    
}
