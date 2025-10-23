import XCTest
import SwiftTreeSitter
import TreeSitterUnrealShader

final class TreeSitterUnrealShaderTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_unreal_shader())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading HLSL grammar")
    }
}
