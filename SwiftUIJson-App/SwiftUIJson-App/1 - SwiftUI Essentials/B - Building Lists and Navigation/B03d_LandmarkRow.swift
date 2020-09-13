import SwiftUI

struct B03d_LandmarkRow: View {
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

struct B03d_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            B03d_LandmarkRow(landmark: landmarkData[0])
            B03d_LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
