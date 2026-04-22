import SwiftUI
import Combine

class MovieViewModel: ObservableObject {
    
    // MARK: - Base Data (reuse)
    private let posters1: [Movie] = [
        Movie(title: "AR Rahman", image: "Container-2"),
        Movie(title: "Leonardo", image: "Container-3"),
        Movie(title: "Nolan", image: "Container-4"),
        Movie(title: "Farhan", image: "Container-5")
    ]
    
    private let posters2: [Movie] = [
        Movie(title: "Testeo Sisters", image: "Container-6"),
        Movie(title: "Zakir Hussain", image: "Container-7"),
        Movie(title: "Anurag", image: "Container-8"),
        Movie(title: "Music", image: "Container-9")
    ]
    private let posters3: [Movie] = [
        Movie(title: "Testeo Sisters", image: "Container-1"),
        Movie(title: "Zakir Hussain", image: "Container-2"),
        Movie(title: "Anurag", image: "Container-3"),
        Movie(title: "Music", image: "Container-4")
    ]
    private let posters4: [Movie] = [
        Movie(title: "Testeo Sisters", image: "Container-5"),
        Movie(title: "Zakir Hussain", image: "Container-6"),
        Movie(title: "Anurag", image: "Container-7"),
        Movie(title: "Music", image: "Container-9")
    ]
    // MARK: - Sections (like Figma)
    
    @Published var documentaries: [Movie] = []
    @Published var newReleases: [Movie] = []
    @Published var trending: [Movie] = []
    @Published var recommended: [Movie] = []
    @Published var filmmakers: [Movie] = []
    @Published var musicians: [Movie] = []
    @Published var artists: [Movie] = []
    @Published var podcasts: [Movie] = []
    @Published var fromIndia: [Movie] = []
    @Published var fromGreece: [Movie] = []
    
    init() {
        // Assign data (reuse to save effort)
        documentaries = posters1
        newReleases = posters2
        trending = posters3
        recommended = posters4
        filmmakers = posters1
        musicians = posters2
        artists = posters3
        podcasts = posters4
        fromIndia = posters1
        fromGreece = posters2
    }
}
