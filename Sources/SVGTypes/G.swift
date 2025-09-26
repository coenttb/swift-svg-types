//
//  G.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<g>` (group) element.
///
/// The g element is used to group other SVG elements together.
public struct G: SVGElementType {
    public static let tagName = "g"

    /// The transform to apply to the group.
    public let transform: [SVGTransform]?

    /// Creates a new group element.
    ///
    /// - Parameter transform: The transforms to apply to the group.
    public init(transform: [SVGTransform]? = nil) {
        self.transform = transform
    }

    /// Creates a new group element with a single transform.
    ///
    /// - Parameter transform: A single transform to apply to the group.
    public init(transform: SVGTransform) {
        self.transform = [transform]
    }
}