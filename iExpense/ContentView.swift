//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode

    var name: String
    
    var body: some View {
        VStack {
            Text("Hello \(name)").padding(20)
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Pete")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
