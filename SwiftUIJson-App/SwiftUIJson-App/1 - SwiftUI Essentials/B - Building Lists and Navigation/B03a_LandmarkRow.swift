import SwiftUI
import SwiftUIJson

struct B03a_LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct B03a_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B03a_LandmarkRow(landmark: landmarkData[1])
        }
    }
}
