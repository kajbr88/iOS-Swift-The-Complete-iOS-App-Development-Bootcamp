import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() //listener
    
    var body: some View {
        NavigationView {
            List (networkManager.posts) { post in // "posts" is of type array and "post" is of type struct.
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }.onAppear {self.networkManager.fetchData() // onAppear is similar to viewDidLoad
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
