//
//  TopRatedView.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import SwiftUI

struct TopRatedView: View {
    @StateObject var viewModel: TopRatedScreenViewModel
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text(Localizable.app_name)
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(1..<10) { _ in
//                            FilmItemView(viewModel: HomeScreenViewModel.init(film: viewModel.film))
                        }
                    }
                }
            
        }
        .padding(.bottom)
    }
}

struct TopRatedView_Previews: PreviewProvider {
    static var previews: some View {
        TopRatedView(viewModel: TopRatedScreenViewModel(film: Film.defaultFilmData))
    }
}
