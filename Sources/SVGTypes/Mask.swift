//
//  Mask.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<mask>` element.
///
/// The mask element defines an alpha mask for compositing the current object into the background.
public struct Mask: SVGElementType {
    public static let tagName = "mask"
    public static let isSelfClosing = false

    /// The ID of the mask for referencing.
    public let id: String?

    /// The x-coordinate of the mask.
    public let x: Double?

    /// The y-coordinate of the mask.
    public let y: Double?

    /// The width of the mask.
    public let width: Double?

    /// The height of the mask.
    public let height: Double?

    /// The coordinate system for the mask content.
    public let maskContentUnits: MaskUnits?

    /// The coordinate system for the mask itself.
    public let maskUnits: MaskUnits?

    /// Specifies the coordinate system for mask units.
    public enum MaskUnits: String, Sendable {
        case userSpaceOnUse
        case objectBoundingBox
    }

    /// Creates a new mask element.
    ///
    /// - Parameters:
    ///   - id: The ID for referencing.
    ///   - x: The x-coordinate.
    ///   - y: The y-coordinate.
    ///   - width: The width.
    ///   - height: The height.
    ///   - maskContentUnits: The coordinate system for mask content.
    ///   - maskUnits: The coordinate system for the mask itself.
    public init(
        id: String? = nil,
        x: Double? = nil,
        y: Double? = nil,
        width: Double? = nil,
        height: Double? = nil,
        maskContentUnits: MaskUnits? = nil,
        maskUnits: MaskUnits? = nil
    ) {
        self.id = id
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.maskContentUnits = maskContentUnits
        self.maskUnits = maskUnits
    }
}