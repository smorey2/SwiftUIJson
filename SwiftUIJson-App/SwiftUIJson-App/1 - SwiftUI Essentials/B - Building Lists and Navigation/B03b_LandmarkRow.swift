import SwiftUI
import SwiftUIJson

struct B03b_LandmarkRow: View {
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

struct B03b_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            B03b_LandmarkRow(landmark: landmarkData[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
