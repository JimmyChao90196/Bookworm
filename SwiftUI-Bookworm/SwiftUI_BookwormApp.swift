//
//  SwiftUI_BookwormApp.swift
//  SwiftUI-Bookworm
//
//  Created by JimmyChao on 2024/4/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI_BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }.modelContainer(for: Book.self)
    }
}
