import SwiftUI

struct B02b_LandmarkRow: View {
    var landmark: B01a_Landmark

    var body: some View {
        Text("Hello World")
    }
}

struct B02b_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        B02b_LandmarkRow(landmark: landmarkData[0])
    }
}
