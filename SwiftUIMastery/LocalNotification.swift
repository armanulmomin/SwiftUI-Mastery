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
            
            Button("Schedule Notification (5 sec)") {
                let content = UNMutableNotificationContent()
                content.title = "Hello!"
                content.body = "This is your local notification 🚀"
                content.sound = .default

                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
            
            Button("Schedule Daily Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Good Morning ☀️"
                content.body = "Start your day with focus!"
                content.sound = .default

                var dateComponents = DateComponents()
                dateComponents.hour = 9   // 9 AM every day
                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
            
            Button("Schedule Location Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Welcome!"
                content.body = "You’ve arrived at your special place 📍"
                content.sound = .default

                // Example: triggers when entering a 100m region around Apple Park
                let center = CLLocationCoordinate2D(latitude: 37.3349, longitude: -122.0090)
                let region = CLCircularRegion(center: center, radius: 100, identifier: "ApplePark")
                region.notifyOnEntry = true
                region.notifyOnExit = false

                let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
            
            Button("Remove All Pending Notifications") {
                UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
            }
            
            Button("Remove All Delivered Notifications") {
                UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            }
        }
        .padding()
    }


}

#Preview {
    LocalNotification()
}
