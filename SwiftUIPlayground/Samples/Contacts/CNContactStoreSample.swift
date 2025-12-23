//
//  CNContactStoreSample.swift
//  SwiftUIPlayground
//
//  Created by Taha Tesser on 23.12.2025.
//

import Contacts
import SwiftUI

struct CNContactStoreSample: View {
  @State private var name: String = ""
  @State private var surname: String = ""

  @State private var phoneNumber: String = ""

  @State private var statusMessage: String = ""

  var body: some View {
    NavigationStack {
      Form {
        Section("Indentification") {
          TextField("Name", text: $name)
          TextField("Surname", text: $surname)
        }

        Section("Phone Info") {
          TextField("Phone", text: $phoneNumber)
            .keyboardType(.phonePad)
        }

        Section {
          Button("Save Button") {
            Task {
              await saveContact()
            }
          }
        }
      }
      .navigationTitle("New Contact")
    }
  }

  private let contactStore = CNContactStore()

  private func requestAccess() async throws -> Bool {
    try await contactStore.requestAccess(for: .contacts)
  }

  private func createContact() async -> CNMutableContact? {
    let contact = CNMutableContact()

    contact.givenName = name
    contact.familyName = ""
    contact.phoneNumbers = [
      CNLabeledValue(
        label: "CNLabelPhoneNumberMobile", value: CNPhoneNumber(stringValue: "+39 333 222 4444"))
    ]

    return contact
  }

  private func saveContact() async {
    do {
      let accessGranted = try await requestAccess()

      guard accessGranted else {
        statusMessage = "No permission to access contacts."
        return
      }

      if let newContact = await createContact() {
        let saveRequest = CNSaveRequest()
        saveRequest.add(newContact, toContainerWithIdentifier: nil)
        try contactStore.execute(saveRequest)

        statusMessage = "Contact saved succcessfully."
        name = ""
        surname = ""
        phoneNumber = ""
      } else {
        statusMessage = "Could not create the new contact."
      }
    } catch {
      statusMessage = "Error saving contact: \(error.localizedDescription)"
    }
  }
}

#Preview {
  CNContactStoreSample()
}
