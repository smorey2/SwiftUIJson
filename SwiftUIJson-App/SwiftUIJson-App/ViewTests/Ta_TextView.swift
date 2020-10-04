import SwiftUI

struct Ta_TextView: View {
    var body: some View {
        Text("Turtle Rock")
            //.font(.title)
            .foregroundColor(.green)
            .font(.custom("Georgia", size: 24, relativeTo: .headline))
    }
}

struct Ta_View_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Ta_TextView()
        }
    }
}
