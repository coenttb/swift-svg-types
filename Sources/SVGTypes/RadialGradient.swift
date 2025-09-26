//
//  RadialGradient.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<radialGradient>` element.
///
/// The radialGradient element defines a radial gradient to be used in filling or stroking.
public struct RadialGradient: SVGElementType {
    public static let tagName = "radialGradient"
    public static let isSelfClosing = false

    /// The ID of the gradient for referencing.
    public let id: String?

    /// The x-coordinate of the center of the gradient.
    public let cx: String?

    /// The y-coordinate of the center of the gradient.
    public let cy: String?

    /// The radius of the gradient.
    public let r: String?

    /// The x-coordinate of the focal point.
    public let fx: String?

    /// The y-coordinate of the focal point.
    public let fy: String?

    /// The radius of the focal point.
    public let fr: String?

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

    /// Creates a new radial gradient element.
    ///
    /// - Parameters:
    ///   - id: The ID for referencing.
    ///   - cx: The x-coordinate of the center (percentage or coordinate).
    ///   - cy: The y-coordinate of the center (percentage or coordinate).
    ///   - r: The radius (percentage or coordinate).
    ///   - fx: The x-coordinate of the focal point (percentage or coordinate).
    ///   - fy: The y-coordinate of the focal point (percentage or coordinate).
    ///   - fr: The radius of the focal point (percentage or coordinate).
    ///   - gradientUnits: The coordinate system to use.
    ///   - gradientTransform: The transformation to apply.
    ///   - spreadMethod: How to spread the gradient.
    ///   - href: Reference to another gradient.
    public init(
        id: String? = nil,
        cx: String? = nil,
        cy: String? = nil,
        r: String? = nil,
        fx: String? = nil,
        fy: String? = nil,
        fr: String? = nil,
        gradientUnits: GradientUnits? = nil,
        gradientTransform: String? = nil,
        spreadMethod: SpreadMethod? = nil,
        href: String? = nil
    ) {
        self.id = id
        self.cx = cx
        self.cy = cy
        self.r = r
        self.fx = fx
        self.fy = fy
        self.fr = fr
        self.gradientUnits = gradientUnits
        self.gradientTransform = gradientTransform
        self.spreadMethod = spreadMethod
        self.href = href
    }
}