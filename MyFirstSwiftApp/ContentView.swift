import SwiftUI

struct ContentView: View {
    
    @ObservedObject var postList = PublicationsList()
    @State var isLiked = false
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderView(user: PreviewData.user)
                ForEach(postList.publications) { publication in
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
