//
//  Symbol.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<symbol>` element.
///
/// The symbol element is used to define graphical template objects which can be instantiated
/// by a use element. Symbols are not rendered directly.
public struct Symbol: SVGElementType {
  public static let tagName = "symbol"
  public static let isSelfClosing = false

  /// The ID of the symbol for referencing.
  public let id: String?

  /// The viewBox attribute for the symbol.
  public let viewBox: String?

  /// The preserveAspectRatio attribute.
  public let preserveAspectRatio: String?

  /// The reference x-coordinate.
  public let refX: Double?

  /// The reference y-coordinate.
  public let refY: Double?

  /// Creates a new symbol element.
  ///
  /// - Parameters:
  ///   - id: The ID for referencing.
  ///   - viewBox: The viewBox attribute.
  ///   - preserveAspectRatio: How to preserve aspect ratio.
  ///   - refX: The reference x-coordinate.
  ///   - refY: The reference y-coordinate.
  public init(
    id: String? = nil,
    viewBox: String? = nil,
    preserveAspectRatio: String? = nil,
    refX: Double? = nil,
    refY: Double? = nil
  ) {
    self.id = id
    self.viewBox = viewBox
    self.preserveAspectRatio = preserveAspectRatio
    self.refX = refX
    self.refY = refY
  }
}
