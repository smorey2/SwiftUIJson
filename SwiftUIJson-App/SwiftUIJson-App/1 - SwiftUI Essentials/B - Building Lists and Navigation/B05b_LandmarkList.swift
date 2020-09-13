import SwiftUI

struct B05b_LandmarkList: View {
    var body: some View {
        List(landmarkData, id: \.id) { landmark in
            B03d_LandmarkRow(landmark: landmark)
        }
    }
}

struct B05b_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        B05b_LandmarkList()
    }
}
