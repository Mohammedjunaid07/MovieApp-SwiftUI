import SwiftUI

struct MovieListView: View {
    
    @StateObject var vm = MovieViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                // 🔥 HERO SECTION
                ZStack(alignment: .bottomLeading) {
                    
                    Image("Mask group")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 320)
                        .clipped()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text("IRRFAN KHAN")
                            .font(.title)
                            .bold()
                        
                        NavigationLink(
                            destination: MovieDetailView(
                                movie: vm.trending.first ?? Movie(title: "Default", image: "Mask group")
                            )
                        ) {
                            HStack {
                                Image(systemName: "play.fill")
                                Text("Play Now")
                            }
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                }
                
                // 🔥 ALL SECTIONS (LIKE FIGMA)
                VStack(spacing: 25) {
                    
                    SectionRowView(title: "Documentaries", movies: vm.documentaries)
                    
                    SectionRowView(title: "New Releases", movies: vm.newReleases)
                    
                    SectionRowView(title: "Trending Now", movies: vm.trending)
                    
                    SectionRowView(title: "Recommended", movies: vm.recommended)
                    
                    SectionRowView(title: "Filmmakers", movies: vm.filmmakers)
                    
                    SectionRowView(title: "Musicians", movies: vm.musicians)
                    
                    SectionRowView(title: "Artist", movies: vm.artists)
                    
                    SectionRowView(title: "Podcasts", movies: vm.podcasts)
                    
                    SectionRowView(title: "From India", movies: vm.fromIndia)
                    
                    SectionRowView(title: "From Greece", movies: vm.fromGreece)
                }
                .padding(.top)
                
                // 🔥 SUBSCRIPTION BANNER
                Image("Container")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding()
            }
            .background(Color.black)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    MovieListView()
}
