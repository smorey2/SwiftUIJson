import SwiftUI

struct B02c_LandmarkRow: View {
    var landmark: B01a_Landmark

    var body: some View {
        HStack {
            Text("Hello World")
        }
    }
}

struct B02c_LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        B02c_LandmarkRow(landmark: landmarkData[0])
    }
}
