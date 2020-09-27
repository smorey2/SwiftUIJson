import SwiftUI

struct SampleView: View {
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
        }
    }
}

//struct SampleView: View {
//    var body: some View {
//        Text("Turtle Rock")
//            .font(.title)
//            .foregroundColor(.green)
//.font(.custom("Georgia", size: 24, relativeTo: .headline))
//    }
//}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            SampleView()
        }
    }
}
