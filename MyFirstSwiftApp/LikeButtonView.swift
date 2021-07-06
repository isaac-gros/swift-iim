import SwiftUI
import Kingfisher

struct LikeButtonView: View {
    
    // State
    @State var isLiked = false
    
    var body: some View {
        VStack {
            Button(action: {
                isLiked.toggle()
            }, label: {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(isLiked ? Color.red : Color.black)
            })
        }
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView()
            .previewLayout(.sizeThatFits)
    }
}
