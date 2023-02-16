//
//  FilmItemView.swift
//  TvShows2.0
//
//  Created by COBE on 14.02.2023..
//

import SwiftUI

struct FilmItemView: View {
    
//    @StateObject var viewModel: HomeScreenViewModel
    
    @State var movie: Film
    
    var body: some View {
        VStack {
            Image(uiImage: movie.image!)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
        
            VStack {
                Text(movie.title)
                Text(movie.year)
                .padding(.vertical)
            }
            .font(.headline)
            .foregroundColor(.black)
        }
        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(.black))   
    }  
}
//
//struct FilmItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilmItemView(viewModel: HomeScreenViewModel(film: Film(title: "", year: "")))
//    }
//}
//static var darkBackground: Color {
//    Color(red: 0.1, green: 0.1, blue: 0.2)
//}
