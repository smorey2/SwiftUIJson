import SwiftUI

struct B02d_LandmarkRow: View {
    var landmark: B01a_Landmark

    var body: some View {
        HStack {
            Text(landmark.name)
        }
    }
}

struct B02d_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        B02d_LandmarkRow(landmark: landmarkData[0])
    }
}
