import SwiftUI

struct ContentView: View { /* defines what the user interface is going to look like and how it's going to behave. */
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I Am Rich")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200,height: 200,alignment: .center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider { /* defines for how the preview should be created and how it should behave.*/
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}
