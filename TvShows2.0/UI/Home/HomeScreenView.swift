//
//  HomeScreenView.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import SwiftUI

struct HomeScreenView: View {
    @StateObject var viewModel: HomeScreenViewModel
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
   
    var body: some View {
        VStack {
            Text(Localizable.title_favorites)
            ScrollView {
                
                LazyVGrid(columns: columns) {
                    ForEach(0..<10) {_ in
                        FilmItemView(movie: viewModel.film)
                            .onTapGesture {
                                viewModel.showDetail()
                            }
                    }
                }
            }
        }
        .padding(.bottom)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(viewModel: HomeScreenViewModel(film: Film(title: "", year: "")))
    }
}
