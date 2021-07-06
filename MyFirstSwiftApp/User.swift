import Foundation

class User: ObservableObject {
    let imageUrl: URL?
    let postCount: Int
    @Published var followers: Int
    let following: Int
    let name: String
    let title: String
    let description: String
    
    init(imageUrl: URL?, postCount: Int, followers: Int, following: Int, name: String, title: String, description: String) {
        self.imageUrl = imageUrl
        self.postCount = postCount
        self.followers = followers
        self.following = following
        self.name = name
        self.title = title
        self.description = description
    }
}
