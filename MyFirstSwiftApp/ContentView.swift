import SwiftUI

struct ContentView: View {
    
    // isLiked
    @State var isLiked = false
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderView(user: PreviewData.user)
                ForEach(PreviewData.publications) { publication in
                    PublicationView(publication: publication)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
