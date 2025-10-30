//
//  Switch.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<switch>` element.
///
/// The switch element evaluates its children in order and renders the first child
/// whose testing conditions are satisfied.
public struct Switch: SVGElementType {
  public static let tagName = "switch"
  public static let isSelfClosing = false

  /// Creates a new switch element.
  public init() {}
}
