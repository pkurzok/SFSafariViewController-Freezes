//
//  ContentView.swift
//  Reproducer
//
//  Created by Peter Kurzok on 15.10.24.
//

import SafariServices
import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    @State private var showSafari = false

    var body: some View {
        VStack {
            Button("Open Website") {
                showSafari = true
            }
            .sheet(isPresented: $showSafari) {
                SafariView(url: URL(string: "https://www.apple.com")!)
            }
        }
    }
}

// MARK: - SafariView

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // No need to update the view controller in this case
    }
}

#Preview {
    ContentView()
}
