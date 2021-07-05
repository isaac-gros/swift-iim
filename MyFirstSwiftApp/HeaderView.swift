import SwiftUI
import Kingfisher

struct HeaderView: View {
    
    // Header stats and image
    let imageUrl = "https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/790/53/790-53-101P/Kitten-II-Paws--Claws-Affiche.jpg"
    let postCount = 75
    let followers = 4797
    let following = 60
    
    // Profile desc.
    let name = "Chaton"
    let title = "Influenceur"
    let description = "Je suis un placeholder 😺\nDéveloppeur 🖥\nAllô ? Il y a quelqu'un ?"
    
    // Toggle desc. dropdown
    @State var isMore = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 20) {
                KFImage(URL(string: imageUrl))
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack {
                    Text(String(postCount))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Posts")
                        .font(.caption)
                }
                VStack {
                    Text(String(followers))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Followers")
                        .font(.caption)
                }
                VStack {
                    Text(String(following))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Following")
                        .font(.caption)
                }
            }
            VStack(alignment: .leading, spacing: 3, content: {
                Text(name)
                    .bold()
                    .padding(.top)
                Text(title)
                    .foregroundColor(.gray)
                Text(description)
                    .lineLimit(isMore ? nil : 2)
                Button(action: {
                    isMore.toggle()
                }, label: {
                    Text(isMore ? "Less..." : "More...")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                })
            })
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
        }.previewLayout(.sizeThatFits)
        
            
    }
}
