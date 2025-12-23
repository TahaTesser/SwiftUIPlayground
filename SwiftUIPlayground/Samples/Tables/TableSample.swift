//
//  TableSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct Person: Identifiable {
  let givenName: String
  let familyName: String
  let emailAddress: String
  let id = UUID()

  var fullName: String { givenName + " " + familyName }
}

struct TableSample: View {
  @State private var people = [
    Person(
      givenName: "Juan",
      familyName: "Chavez",
      emailAddress: "juanchavez@icloud.com"
    ),
    Person(
      givenName: "Mei",
      familyName: "Chen",
      emailAddress: "meichen@icloud.com"
    ),
    Person(
      givenName: "Tom",
      familyName: "Clark",
      emailAddress: "tomclark@icloud.com"
    ),
    Person(
      givenName: "Gita",
      familyName: "Kumar",
      emailAddress: "gitakumar@icloud.com"
    ),
  ]
  @State private var sortOrder = [KeyPathComparator(\Person.givenName)]

  #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    private var isCompact: Bool { horizontalSizeClass == .compact }
  #else
    private let isCompact = false
  #endif

  var body: some View {
    Table(people, sortOrder: $sortOrder) {
      TableColumn("Given Name", value: \.givenName) { person in
        VStack(alignment: .leading) {
          Text(isCompact ? person.fullName : person.givenName)
          if isCompact {
            Text(person.emailAddress)
              .foregroundStyle(.secondary)
          }
        }
      }
      TableColumn("Family Name", value: \.familyName)
      TableColumn("E-Mail Address", value: \.emailAddress)
    }
    .onChange(of: sortOrder) { _, sortOrder in
      people.sort(using: sortOrder)
    }
  }
}

#Preview {
  TableSample()
}
