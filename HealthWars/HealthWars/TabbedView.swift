import SwiftUI

struct TabbedView: View {
    let orangeColor = Color(red: 247/255, green: 141/255, blue: 42/255)
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                        .foregroundColor(.orange)
                }

            FriendsView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Friends")
                        .foregroundColor(orangeColor)
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                        .foregroundColor(orangeColor)
                }
        }
    }
}
