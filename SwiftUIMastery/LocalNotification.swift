//
//  LocalNotification.swift
//  SwiftUIMastery
//
//  Created by Arman on 28/9/25.
//

import SwiftUI

struct LocalNotification: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Request Permission") {
                UNUserNotificationCenter.current()
                    .requestAuthorization(options: [.alert, .badge, .sound]) { _, _ in }
            }
            
            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Hello!"
                content.body = "This is your local notification 🚀"
                content.sound = .default

                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
        .padding()
    }

}

#Preview {
    LocalNotification()
}
