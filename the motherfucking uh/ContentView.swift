import SwiftUI
import Subsonic

struct ContentView: View {
    let names = ["funny","hammond","hashbrown"]
    
    var body: some View {
        NavigationView {
            ScrollView{
                ForEach(names, id: \.self) { name in
                    Button {
                       play(sound: "vine boom.mp3")
                    } label:{
                    Image(name)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(25)
                        .padding(.horizontal)
                }
            }
            .navigationTitle("haha silly images")
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


