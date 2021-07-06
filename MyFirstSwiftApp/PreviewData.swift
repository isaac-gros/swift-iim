import Foundation

struct PreviewData {
    
    static let user = User(
        imageUrl: URL(string: "https://personagenerator.com/user-sean.png"),
        postCount: 77,
        followers: 4974,
        following: 60,
        name: "Toto",
        title: "Influenceur",
        description: "Hello world !"
    )
    
    static let publication = Publication(
        author: PreviewData.user,
        location: "Paris",
        contentUrl: URL(string: "https://www.sortiraparis.com/images/58/83517/577986-visuel-paris-velo-quai-2.jpg"),
        isLiked: false,
        isSaved: false
        
    )
    
    static let publications = [
        Publication(
            author: PreviewData.user,
            location: "Londres",
            contentUrl: URL(string: "https://www.sortiraparis.com/images/58/83517/577986-visuel-paris-velo-quai-2.jpg"),
            isLiked: false,
            isSaved: false
        ),
        Publication(
            author: PreviewData.user,
            location: "Londres",
            contentUrl: URL(string: "https://img-4.linternaute.com/EJwrJtqS8UseZNofJUkmhg4FHd4=/660x366/smart/ba429abadd8a4731be516a2465ca749f/ccmcms-linternaute/10993851.jpg"),
            isLiked: false,
            isSaved: false
        ),
        Publication(
            author: PreviewData.user,
            location: "Barcelone",
            contentUrl: URL(string: "https://www.voyage-espagne.com/wp-content/uploads/barcelone-1280x800.jpeg"),
            isLiked: false,
            isSaved: false
        )
    ]
}
