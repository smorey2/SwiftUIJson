import SwiftUI

struct B06c_LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail()) {
                    B03d_LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct B06c_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        B06c_LandmarkList()
    }
}
