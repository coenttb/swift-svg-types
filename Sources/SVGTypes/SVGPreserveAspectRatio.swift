//
//  SVGPreserveAspectRatio.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents how an SVG viewport should preserve aspect ratio when scaling.
public struct SVGPreserveAspectRatio: Sendable {
  /// The alignment setting.
  public let align: Align

  /// Whether to meet or slice.
  public let meetOrSlice: MeetOrSlice?

  /// Alignment options for preserveAspectRatio.
  public enum Align: String, Sendable {
    case none
    case xMinYMin
    case xMidYMin
    case xMaxYMin
    case xMinYMid
    case xMidYMid
    case xMaxYMid
    case xMinYMax
    case xMidYMax
    case xMaxYMax
  }

  /// How to handle aspect ratio differences.
  public enum MeetOrSlice: String, Sendable {
    case meet
    case slice
  }

  /// Creates a new preserveAspectRatio value.
  ///
  /// - Parameters:
  ///   - align: The alignment setting.
  ///   - meetOrSlice: Whether to meet or slice.
  public init(align: Align, meetOrSlice: MeetOrSlice? = nil) {
    self.align = align
    self.meetOrSlice = meetOrSlice
  }

  /// Returns the string representation.
  public var stringValue: String {
    if let meetOrSlice = meetOrSlice {
      return "\(align.rawValue) \(meetOrSlice.rawValue)"
    } else {
      return align.rawValue
    }
  }

  /// Common preserveAspectRatio values.
  public static let none = SVGPreserveAspectRatio(align: .none)
  public static let xMidYMidMeet = SVGPreserveAspectRatio(align: .xMidYMid, meetOrSlice: .meet)
  public static let xMidYMidSlice = SVGPreserveAspectRatio(align: .xMidYMid, meetOrSlice: .slice)
}
