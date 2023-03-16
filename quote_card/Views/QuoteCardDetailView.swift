//
//  QuoteCardDetailView.swift
//  quote_card
//
//  Created by Shun Ming YAU on 15/3/2023.
//

import SwiftUI

struct QuoteCardDetailView: View {
    //adding some comment to see the 
    var quote: Quote
    
    var body: some View {
        Text(quote.quote)
            .font(.largeTitle)
    }
}

struct QuoteCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        QuoteCardDetailView(quote:model.quotes[0])
    }
}
