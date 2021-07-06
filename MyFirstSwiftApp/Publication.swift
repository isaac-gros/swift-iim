import Foundation

class Publication: ObservableObject, Identifiable {
    var id = UUID()
    let author: User
    let location: String
    let contentUrl: URL?
    @Published var isLiked: Bool
    @Published var isSaved: Bool
    
    init(author: User, location: String, contentUrl: URL?, isLiked: Bool, isSaved: Bool) {
        self.author = author
        self.location = location
        self.contentUrl = contentUrl
        self.isLiked = isLiked
        self.isSaved = isSaved
    }
    
}
