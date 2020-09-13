import SwiftUI

struct B07f_LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: B07e_LandmarkDetail(landmark: landmark)) {
                    B03d_LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct B07f_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        B07f_LandmarkList()
    }
}
