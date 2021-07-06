import SwiftUI

struct ContentView: View {
    
    // Profile
    let profilePicUrl = URL(string: "https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/790/53/790-53-101P/Kitten-II-Paws--Claws-Affiche.jpg")
    let postCount = 77
    let followings = 60
    let followers = 4797
    let name = "Chaton"
    let title = "Influenceur"
    let description = "Je suis un placeholder 😺\nDéveloppeur 🖥\nAllô ? Il y a quelqu'un ?"
    
    // isLiked
    @State var isLiked = false
    
    var body: some View {
        VStack {
            HeaderView(
                imageUrl: profilePicUrl,
                postCount: postCount,
                followers: followers,
                following: followings,
                name: name,
                title: title,
                description: description
            )
            LikeButtonView(isLiked: $isLiked)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
