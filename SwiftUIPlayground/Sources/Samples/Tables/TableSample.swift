//
//  TableSample.swift
//  playground
//
//  Created by Taha Tesser on 05.08.2024.
//

import SwiftUI

struct Person: Identifiable, Sendable {
  let givenName: String
  let familyName: String
  let emailAddress: String
  let id = UUID()

  var fullName: String { givenName + " " + familyName }
}

struct PersonSortComparator: SortComparator, Sendable {
  enum Field: Sendable {
    case givenName
    case familyName
    case emailAddress
  }

  var field: Field
  var order: SortOrder = .forward

  func compare(_ lhs: Person, _ rhs: Person) -> ComparisonResult {
    let result: ComparisonResult
    switch field {
    case .givenName:
      result = lhs.givenName.localizedCompare(rhs.givenName)
    case .familyName:
      result = lhs.familyName.localizedCompare(rhs.familyName)
    case .emailAddress:
      result = lhs.emailAddress.localizedCompare(rhs.emailAddress)
    }

    if order == .forward {
      return result
    }

    switch result {
    case .orderedAscending:
      return .orderedDescending
    case .orderedDescending:
      return .orderedAscending
    case .orderedSame:
      return .orderedSame
    }
  }
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
    )
  ]
  @State private var sortOrder = [PersonSortComparator(field: .givenName)]

  @Environment(\.horizontalSizeClass) private var horizontalSizeClass
  private var isCompact: Bool { horizontalSizeClass == .compact }

  var body: some View {
    Table(people, sortOrder: $sortOrder) {
      TableColumn("Given Name", sortUsing: PersonSortComparator(field: .givenName)) { person in
        VStack(alignment: .leading) {
          Text(isCompact ? person.fullName : person.givenName)
          if isCompact {
            Text(person.emailAddress)
              .foregroundStyle(.secondary)
          }
        }
      }
      TableColumn("Family Name", sortUsing: PersonSortComparator(field: .familyName)) { person in
        Text(person.familyName)
      }
      TableColumn("E-Mail Address", sortUsing: PersonSortComparator(field: .emailAddress)) { person in
        Text(person.emailAddress)
      }
    }
    .onChange(of: sortOrder) { _, sortOrder in
      people.sort(using: sortOrder)
    }
  }
}

#Preview {
  TableSample()
}
