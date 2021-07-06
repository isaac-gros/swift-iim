import SwiftUI
import Kingfisher

struct HeaderView: View {
    
    // Toggle desc. dropdown
    @State private var isMore = false
    
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 20) {
                KFImage(user.imageUrl)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 75, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                VStack {
                    Text(String(user.postCount))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Posts")
                        .font(.caption)
                }
                VStack {
                    Text(String(user.followers))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Followers")
                        .font(.caption)
                }
                VStack {
                    Text(String(user.following))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Following")
                        .font(.caption)
                }
            }
            VStack(alignment: .leading, spacing: 3, content: {
                Text(user.name)
                    .bold()
                    .padding(.top)
                Text(user.title)
                    .foregroundColor(.gray)
                Text(user.description)
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
            HeaderView(user: PreviewData.user)
        }.previewLayout(.sizeThatFits)
        
            
    }
}
