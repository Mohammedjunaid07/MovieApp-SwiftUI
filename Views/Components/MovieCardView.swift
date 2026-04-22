import SwiftUI

struct MovieCardView: View {
    
    var movie: Movie
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            
            // Poster Image
            Image(movie.image)
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 180)
                .clipped()
                .cornerRadius(12)
            
            // 🔥 Gradient Overlay (for text readability)
            LinearGradient(
                colors: [Color.clear, Color.black.opacity(0.8)],
                startPoint: .center,
                endPoint: .bottom
            )
            .frame(width: 130, height: 180)
            .cornerRadius(12)
            
            // Movie Title (bottom)
            Text(movie.title)
                .font(.caption)
                .bold()
                .foregroundColor(.white)
                .padding(6)
                .lineLimit(1)
        }
        .shadow(color: .black.opacity(0.6), radius: 5, x: 0, y: 4)
    }
}

#Preview {
    MovieCardView(movie: Movie(title: "Sample Movie", image: "Container-2"))
}
