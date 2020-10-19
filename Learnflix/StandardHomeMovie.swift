//
//  StandardHomeMovie.swift
//  Learnflix
//
//  Created by Artur Akhmetshin on 19.10.2020.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie

    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie:examplemovie1)
            
    }
}
