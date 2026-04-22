import SwiftUI

struct MovieDetailView: View {
    
    var movie: Movie
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(spacing: 0) {
                
                // 🔥 HERO IMAGE WITH GRADIENT + CLOSE BUTTON
                ZStack(alignment: .topTrailing) {
                    
                    Image(movie.image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 380)
                        .clipped()
                    
                    // Gradient Overlay
                    LinearGradient(
                        colors: [Color.clear, Color.black],
                        startPoint: .center,
                        endPoint: .bottom
                    )
                    
                    // Close Button
                    Button(action: {}) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                
                // 🔥 CONTENT
                VStack(alignment: .leading, spacing: 16) {
                    
                    // Play Button
                    Button(action: {}) {
                        Text("Play Now")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    
                    // Info Card
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text(movie.title)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        
                        Text("2024 • 2h 35m • Documentary")
                            .foregroundColor(.gray)
                        
                        Text("Irrfan Khan was an Indian actor who worked in Indian cinema as well as British and American films. He was known for his versatile acting and impactful performances.")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    .padding()
                    .background(Color.white.opacity(0.08))
                    .cornerRadius(12)
                    
                    // 🔥 Tabs
                    HStack(spacing: 10) {
                        
                        Text("Trailers & More")
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.yellow.opacity(0.3))
                            .cornerRadius(8)
                        
                        Text("Artist")
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.white.opacity(0.1))
                            .cornerRadius(8)
                    }
                    .foregroundColor(.white)
                    
                    // 🔥 Trailer List
                    ForEach(0..<3) { _ in
                        HStack(spacing: 12) {
                            
                            Image("Sub Container-3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 110, height: 70)
                                .cornerRadius(8)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Trailer: The Creative Journey")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                
                                Text("2 min 13 sec")
                                    .foregroundColor(.gray)
                                    .font(.caption2)
                            }
                        }
                        .padding(10)
                        .background(Color.white.opacity(0.05))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
}

#Preview {
    MovieDetailView(movie: Movie(title: "IRRFAN", image: "Mask group"))
}
