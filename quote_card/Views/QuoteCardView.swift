//
//  ContentView.swift
//  quote_card
//
//  Created by Shun Ming YAU on 14/3/2023.
//

import SwiftUI

struct QuoteCardView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView{
            List(model.quotes){r in
                NavigationLink(destination: QuoteCardDetailView(quote:r),
                    label:{
                    HStack{
                        Image(r.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(15)
                            .overlay(
                                VStack(alignment: .leading){
                                    Text(r.quote)
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                        .padding()
                                        .bold()
                                    Text(r.author)
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                        .padding()
                                }
                            )
                        
                    }
                    .padding([.leading,.trailing],-23.0)
                })

            }
        }
    }
    
    struct QuoteCardView_Previews: PreviewProvider {
        static var previews: some View {
            QuoteCardView()
        }
    }
}
