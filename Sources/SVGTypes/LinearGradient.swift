//
//  LinearGradient.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<linearGradient>` element.
///
/// The linearGradient element defines a linear gradient to be used in filling or stroking.
public struct LinearGradient: SVGElementType {
  public static let tagName = "linearGradient"
  public static let isSelfClosing = false

  /// The ID of the gradient for referencing.
  public let id: String?

  /// The x-coordinate of the start point.
  public let x1: String?

  /// The y-coordinate of the start point.
  public let y1: String?

  /// The x-coordinate of the end point.
  public let x2: String?

  /// The y-coordinate of the end point.
  public let y2: String?

  /// The coordinate system for the gradient.
  public let gradientUnits: GradientUnits?

  /// The transformation to apply to the gradient.
  public let gradientTransform: String?

  /// The method to use for spreading the gradient.
  public let spreadMethod: SpreadMethod?

  /// Reference to another gradient to inherit from.
  public let href: String?

  /// Specifies the coordinate system for gradient units.
  public enum GradientUnits: String, Sendable {
    case userSpaceOnUse
    case objectBoundingBox
  }

  /// Specifies how to spread the gradient beyond its bounds.
  public enum SpreadMethod: String, Sendable {
    case pad
    case reflect
    case `repeat`
  }

  /// Creates a new linear gradient element.
  ///
  /// - Parameters:
  ///   - id: The ID for referencing.
  ///   - x1: The x-coordinate of the start point (percentage or coordinate).
  ///   - y1: The y-coordinate of the start point (percentage or coordinate).
  ///   - x2: The x-coordinate of the end point (percentage or coordinate).
  ///   - y2: The y-coordinate of the end point (percentage or coordinate).
  ///   - gradientUnits: The coordinate system to use.
  ///   - gradientTransform: The transformation to apply.
  ///   - spreadMethod: How to spread the gradient.
  ///   - href: Reference to another gradient.
  public init(
    id: String? = nil,
    x1: String? = nil,
    y1: String? = nil,
    x2: String? = nil,
    y2: String? = nil,
    gradientUnits: GradientUnits? = nil,
    gradientTransform: String? = nil,
    spreadMethod: SpreadMethod? = nil,
    href: String? = nil
  ) {
    self.id = id
    self.x1 = x1
    self.y1 = y1
    self.x2 = x2
    self.y2 = y2
    self.gradientUnits = gradientUnits
    self.gradientTransform = gradientTransform
    self.spreadMethod = spreadMethod
    self.href = href
  }
}
