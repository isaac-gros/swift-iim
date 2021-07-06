import Foundation

struct Publication: Identifiable {
    var id = UUID()
    let author: User
    let location: String
    let contentUrl: URL?
}
