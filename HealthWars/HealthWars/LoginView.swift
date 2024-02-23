import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSignUpActive: Bool = false

    var body: some View {
        VStack {
            Text("Welcome to My App")
                .font(.largeTitle)
                .padding()

            TextField("Username", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            HStack {
                Button("Sign In") {
                    // Implement sign-in logic
                    print("Signing In...")
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)

                Spacer()

                NavigationLink(
                    destination: SignUpView(),
                    isActive: $isSignUpActive,
                    label: {
                        Text("Sign Up")
                            .padding()
                            .foregroundColor(.blue)
                    }
                )
            }
            .padding()

            Spacer()
        }
        .navigationTitle("Login")
        .navigationBarHidden(true)
    }
}

struct SignUpView: View {
    var body: some View {
        VStack {
            Text("Create an Account")
                .font(.largeTitle)
                .padding()

            // Add sign-up form fields here

            Button("Sign Up") {
                // Implement sign-up logic
                print("Signing Up...")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)

            Spacer()
        }
        .navigationTitle("Sign Up")
        .navigationBarHidden(true)
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoginView()
            }
        }
    }
}
