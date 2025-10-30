//
//  Pattern.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<pattern>` element.
///
/// The pattern element defines a graphics object which can be redrawn at repeated x and y intervals
/// to cover an area.
public struct Pattern: SVGElementType {
  public static let tagName = "pattern"
  public static let isSelfClosing = false

  /// The ID of the pattern for referencing.
  public let id: String?

  /// The x-coordinate of the pattern tile.
  public let x: Double?

  /// The y-coordinate of the pattern tile.
  public let y: Double?

  /// The width of the pattern tile.
  public let width: Double?

  /// The height of the pattern tile.
  public let height: Double?

  /// The coordinate system for the pattern content.
  public let patternContentUnits: PatternUnits?

  /// The coordinate system for the pattern tile.
  public let patternUnits: PatternUnits?

  /// The transformation to apply to the pattern.
  public let patternTransform: String?

  /// The viewBox for the pattern.
  public let viewBox: String?

  /// How to preserve the aspect ratio.
  public let preserveAspectRatio: String?

  /// Reference to another pattern to inherit from.
  public let href: String?

  /// Specifies the coordinate system for pattern units.
  public enum PatternUnits: String, Sendable {
    case userSpaceOnUse
    case objectBoundingBox
  }

  /// Creates a new pattern element.
  ///
  /// - Parameters:
  ///   - id: The ID for referencing.
  ///   - x: The x-coordinate of the pattern tile.
  ///   - y: The y-coordinate of the pattern tile.
  ///   - width: The width of the pattern tile.
  ///   - height: The height of the pattern tile.
  ///   - patternContentUnits: The coordinate system for pattern content.
  ///   - patternUnits: The coordinate system for the pattern tile.
  ///   - patternTransform: The transformation to apply.
  ///   - viewBox: The viewBox attribute.
  ///   - preserveAspectRatio: How to preserve aspect ratio.
  ///   - href: Reference to another pattern.
  public init(
    id: String? = nil,
    x: Double? = nil,
    y: Double? = nil,
    width: Double? = nil,
    height: Double? = nil,
    patternContentUnits: PatternUnits? = nil,
    patternUnits: PatternUnits? = nil,
    patternTransform: String? = nil,
    viewBox: String? = nil,
    preserveAspectRatio: String? = nil,
    href: String? = nil
  ) {
    self.id = id
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.patternContentUnits = patternContentUnits
    self.patternUnits = patternUnits
    self.patternTransform = patternTransform
    self.viewBox = viewBox
    self.preserveAspectRatio = preserveAspectRatio
    self.href = href
  }
}
