import SwiftUI

struct ContentView: View {
    
    @StateObject var postList = PublicationsList()
    
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
