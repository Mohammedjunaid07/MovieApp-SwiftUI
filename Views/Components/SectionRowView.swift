import SwiftUI

struct SectionRowView: View {
    
    var title: String
    var movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            // 🔥 Header (Title + See More)
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("See More")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            // 🔥 Horizontal Scroll
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    
                    ForEach(movies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            MovieCardView(movie: movie)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    SectionRowView(
        title: "Trending",
        movies: [
            Movie(title: "Test 1", image: "Container-2"),
            Movie(title: "Test 2", image: "Container-3")
        ]
    )
}
