//
//  Marker.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<marker>` element.
///
/// The marker element defines graphics to be used for drawing arrowheads or polymarkers
/// on paths, lines, polylines, and polygons.
public struct Marker: SVGElementType {
  public static let tagName = "marker"
  public static let isSelfClosing = false

  /// The ID of the marker for referencing.
  public let id: String?

  /// The x-coordinate of the reference point.
  public let refX: String?

  /// The y-coordinate of the reference point.
  public let refY: String?

  /// The width of the marker viewport.
  public let markerWidth: Double?

  /// The height of the marker viewport.
  public let markerHeight: Double?

  /// The coordinate system for marker content.
  public let markerUnits: MarkerUnits?

  /// The orientation of the marker.
  public let orient: String?

  /// The viewBox for the marker.
  public let viewBox: String?

  /// How to preserve the aspect ratio.
  public let preserveAspectRatio: String?

  /// Specifies the coordinate system for marker units.
  public enum MarkerUnits: String, Sendable {
    case userSpaceOnUse
    case strokeWidth
  }

  /// Creates a new marker element.
  ///
  /// - Parameters:
  ///   - id: The ID for referencing.
  ///   - refX: The x-coordinate of the reference point.
  ///   - refY: The y-coordinate of the reference point.
  ///   - markerWidth: The width of the marker viewport.
  ///   - markerHeight: The height of the marker viewport.
  ///   - markerUnits: The coordinate system to use.
  ///   - orient: The orientation (angle or "auto").
  ///   - viewBox: The viewBox attribute.
  ///   - preserveAspectRatio: How to preserve aspect ratio.
  public init(
    id: String? = nil,
    refX: String? = nil,
    refY: String? = nil,
    markerWidth: Double? = nil,
    markerHeight: Double? = nil,
    markerUnits: MarkerUnits? = nil,
    orient: String? = nil,
    viewBox: String? = nil,
    preserveAspectRatio: String? = nil
  ) {
    self.id = id
    self.refX = refX
    self.refY = refY
    self.markerWidth = markerWidth
    self.markerHeight = markerHeight
    self.markerUnits = markerUnits
    self.orient = orient
    self.viewBox = viewBox
    self.preserveAspectRatio = preserveAspectRatio
  }
}
