import SwiftUI
import SwiftUIJson

struct B02d_LandmarkRow: View {
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

struct B02d_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B02d_LandmarkRow(landmark: landmarkData[0])
        }
    }
}
