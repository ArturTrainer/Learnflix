//
//  HomeView.swift
//  Learnflix
//
//  Created by Artur Akhmetshin on 19.10.2020.
//  

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
       
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    Text("LEARNFLIX")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                        //.frame(width: 300, height: 30, alignment: .center)
                        //.border(Color.white)
                        //.padding()
                        //.background(Color.white)
                    
                    ForEach(vm.allCategories, id: \.self) {category in
                        VStack {
                            
                            HStack {
                                Text(category)
                                    .font(.title2)
                                    .bold()
                                
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in StandardHomeMovie(movie:movie)}
                                        .frame(width:100, height: 200)
                                        .padding(.horizontal, 20)
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
