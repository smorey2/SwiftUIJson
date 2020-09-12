import SwiftUI

struct B04a_LandmarkList: View {
    var body: some View {
        List {
            B03d_LandmarkRow(landmark: landmarkData[0])
            B03d_LandmarkRow(landmark: landmarkData[1])
        }
    }
}

struct B04a_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        B04a_LandmarkList()
    }
}
