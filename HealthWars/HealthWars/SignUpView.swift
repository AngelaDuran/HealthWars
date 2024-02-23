import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode

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

            Button("Back to Login") {
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .foregroundColor(.blue)
        }
        .navigationTitle("Sign Up")
        .navigationBarHidden(true)
    }
}
