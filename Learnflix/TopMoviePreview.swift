//
//  TopMoviePreview.swift
//  Learnflix
//
//  Created by Artur Akhmetshin on 20.10.2020.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()


                HStack {
                    ForEach(movie.categories, id: \.self){ category in
                        HStack {
                            Text(category)
                            Image(systemName: "circle.fill")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .font(.system(size:3))
                        }
                    }
                }

                Text ("Row Of Buttons")
            }
        }
        .foregroundColor(.white)
 
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie:examplemovie3)
    }
}
