import Testing
@testable import SwiftUIPlayground

struct SwiftUIPlaygroundTests {

    @MainActor @Test func catalogSectionsContainSamples() {
        #expect(!SampleCatalog.sections.isEmpty)
        #expect(SampleCatalog.sections.allSatisfy { !$0.samples.isEmpty })
    }

    @MainActor @Test func sampleIdentifiersAreUnique() {
        let sampleIDs = SampleCatalog.sections.flatMap { section in
            section.samples.map(\.id)
        }

        #expect(Set(sampleIDs).count == sampleIDs.count)
    }

    @MainActor @Test func rootItemsMatchCatalogSections() {
        let rootIDs = SampleCatalog.rootItems.map(\.id)
        let sectionIDs = SampleCatalog.sections.map(\.id)

        #expect(rootIDs == sectionIDs)
    }

    @MainActor @Test func polygonSampleIsListed() {
        let sampleIDs = SampleCatalog.sections.flatMap { section in
            section.samples.map(\.id)
        }

        #expect(sampleIDs.contains("shapes-progress-stroke-polygon"))
    }

}
