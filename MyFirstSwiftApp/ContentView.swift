import SwiftUI

struct ContentView: View {
    
    // isLiked
    @State var isLiked = false
    
    var body: some View {
        VStack {
            HeaderView(user: PreviewData.user)
            LikeButtonView(isLiked: $isLiked)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
