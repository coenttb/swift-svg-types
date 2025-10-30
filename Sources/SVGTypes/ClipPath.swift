//
//  ClipPath.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<clipPath>` element.
///
/// The clipPath element defines a clipping path to be used by the clip-path property.
public struct ClipPath: SVGElementType {
  public static let tagName = "clipPath"
  public static let isSelfClosing = false

  /// The ID of the clip path for referencing.
  public let id: String?

  /// The coordinate system for the clip path.
  public let clipPathUnits: ClipPathUnits?

  /// Specifies the coordinate system for the clip path.
  public enum ClipPathUnits: String, Sendable {
    case userSpaceOnUse
    case objectBoundingBox
  }

  /// Creates a new clipPath element.
  ///
  /// - Parameters:
  ///   - id: The ID for referencing.
  ///   - clipPathUnits: The coordinate system to use.
  public init(id: String? = nil, clipPathUnits: ClipPathUnits? = nil) {
    self.id = id
    self.clipPathUnits = clipPathUnits
  }
}
