//
//  Quote.swift
//  quote_card
//
//  Created by Shun Ming YAU on 14/3/2023.
//

import Foundation


class Quote: Identifiable, Decodable{
    
    var id: UUID?
    var image: String
    var quote: String
    var author: String
    
}
