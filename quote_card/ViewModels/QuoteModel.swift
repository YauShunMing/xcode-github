//
//  QuoteModel.swift
//  quote_card
//
//  Created by Shun Ming YAU on 14/3/2023.
//

import Foundation


class QuoteModel: ObservableObject{
    
    @Published var quotes = [Quote]()
    
    init(){
        
        self.quotes = DataService.getLocalData()
    }
    
}
