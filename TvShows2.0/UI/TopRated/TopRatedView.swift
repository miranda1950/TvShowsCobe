//
//  TopRatedView.swift
//  TvShows2.0
//
//  Created by COBE on 13.02.2023..
//

import SwiftUI

struct TopRatedView: View {
    @StateObject var viewModel: TopRatedScreenViewModel
    var body: some View {
        Text("Top rated shows")
    }
}

struct TopRatedView_Previews: PreviewProvider {
    static var previews: some View {
        TopRatedView(viewModel: TopRatedScreenViewModel())
    }
}
