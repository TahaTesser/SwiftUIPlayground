//
//  FormSample.swift
//  playground
//
//  Created by Taha Tesser on 07.08.2024.
//

import SwiftUI

struct FormSample: View {
  @State private var notifyMeAbout: NotifyMeAboutType = .directMessages
  @State private var playNotificationSounds: Bool = true
  @State private var sendReadReceipts: Bool = false
  @State private var profileImageSize: ProfileImageSize = .medium

  var body: some View {
    Form {
      Section(header: Text("Notifications")) {
        Picker("Notify Me Abiut", selection: $notifyMeAbout) {
          Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
          Text("Mentions").tag(NotifyMeAboutType.mentions)
          Text("Anything").tag(NotifyMeAboutType.anything)
        }
        Toggle("Play notification sounds", isOn: $playNotificationSounds)
        Toggle("Send read receipts", isOn: $sendReadReceipts)
      }
      Section(header: Text("User Profiles")) {
        Picker("Profile Image Size", selection: $profileImageSize) {
          Text("Large").tag(ProfileImageSize.large)
          Text("Medium").tag(ProfileImageSize.medium)
          Text("Small").tag(ProfileImageSize.small)
        }
        Button("Clear Image Cache") {}
      }
    }
  }
}

enum NotifyMeAboutType: String, CaseIterable, Identifiable {
  case directMessages
  case mentions
  case anything

  var id: Self { self }
}

enum ProfileImageSize: String, CaseIterable, Identifiable {
  case large
  case medium
  case small

  var id: Self { self }
}

#Preview {
  FormSample()
}
