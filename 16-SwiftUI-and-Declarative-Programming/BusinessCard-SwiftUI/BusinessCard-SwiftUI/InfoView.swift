import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
     var body: some View {
         RoundedRectangle(cornerRadius: 25)
             .fill(Color.white)
             .frame(height: 50)
             .overlay(  HStack {
                 Image(systemName: imageName)
                     .foregroundColor(.green)
                 Text(text)
             })
             .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+91-123465789", imageName: "phone.fill") /* this call to InfoView struct is just to create preview. */
            .previewLayout(.sizeThatFits)
    }
}
