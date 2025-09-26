//
//  SVGValueTypes.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

import Foundation

/// Represents a point in 2D space.
public struct SVGPoint: Sendable, Equatable {
    public let x: Double
    public let y: Double

    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

/// Represents a size with width and height.
public struct SVGSize: Sendable, Equatable {
    public let width: Double
    public let height: Double

    public init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

/// Represents a rectangle with position and size.
public struct SVGRect: Sendable, Equatable {
    public let x: Double
    public let y: Double
    public let width: Double
    public let height: Double

    public init(x: Double, y: Double, width: Double, height: Double) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
}

/// Represents an SVG viewBox attribute.
public struct SVGViewBox: Sendable, Equatable {
    public let minX: Double
    public let minY: Double
    public let width: Double
    public let height: Double

    public init(minX: Double = 0, minY: Double = 0, width: Double, height: Double) {
        self.minX = minX
        self.minY = minY
        self.width = width
        self.height = height
    }

    public var stringValue: String {
        func format(_ value: Double) -> String {
            value.truncatingRemainder(dividingBy: 1) == 0 ?
                value.formatted(.number.precision(.fractionLength(0)).locale(Locale(identifier: "en_US"))) :
                value.formatted(.number.locale(Locale(identifier: "en_US")))
        }
        return "\(format(minX)) \(format(minY)) \(format(width)) \(format(height))"
    }
}

/// Represents an SVG color value.
public enum SVGColor: Sendable, Equatable {
    case named(String)
    case hex(String)
    case rgb(r: Int, g: Int, b: Int)
    case rgba(r: Int, g: Int, b: Int, a: Double)
    case currentColor
    case none

    public var stringValue: String {
        switch self {
        case .named(let name):
            return name
        case .hex(let hex):
            return hex.hasPrefix("#") ? hex : "#\(hex)"
        case .rgb(let r, let g, let b):
            return "rgb(\(r),\(g),\(b))"
        case .rgba(let r, let g, let b, let a):
            return "rgba(\(r),\(g),\(b),\(a))"
        case .currentColor:
            return "currentColor"
        case .none:
            return "none"
        }
    }
}

/// Represents an SVG length value with unit.
public enum SVGLength: Sendable, Equatable {
    case number(Double)
    case percentage(Double)
    case em(Double)
    case ex(Double)
    case px(Double)
    case pt(Double)
    case pc(Double)
    case mm(Double)
    case cm(Double)
    case `in`(Double)

    public var stringValue: String {
        func format(_ value: Double) -> String {
            value.truncatingRemainder(dividingBy: 1) == 0 ?
                value.formatted(.number.precision(.fractionLength(0)).locale(Locale(identifier: "en_US"))) :
                value.formatted(.number.locale(Locale(identifier: "en_US")))
        }

        switch self {
        case .number(let value):
            return format(value)
        case .percentage(let value):
            return "\(format(value))%"
        case .em(let value):
            return "\(format(value))em"
        case .ex(let value):
            return "\(format(value))ex"
        case .px(let value):
            return "\(format(value))px"
        case .pt(let value):
            return "\(format(value))pt"
        case .pc(let value):
            return "\(format(value))pc"
        case .mm(let value):
            return "\(format(value))mm"
        case .cm(let value):
            return "\(format(value))cm"
        case .in(let value):
            return "\(format(value))in"
        }
    }
}

/// Represents an SVG transform.
public enum SVGTransform: Sendable, Equatable {
    case translate(x: Double, y: Double)
    case rotate(angle: Double, cx: Double? = nil, cy: Double? = nil)
    case scale(x: Double, y: Double? = nil)
    case skewX(angle: Double)
    case skewY(angle: Double)
    case matrix(a: Double, b: Double, c: Double, d: Double, e: Double, f: Double)

    public var stringValue: String {
        func format(_ value: Double) -> String {
            value.truncatingRemainder(dividingBy: 1) == 0 ?
                value.formatted(.number.precision(.fractionLength(0)).locale(Locale(identifier: "en_US"))) :
                value.formatted(.number.locale(Locale(identifier: "en_US")))
        }

        switch self {
        case .translate(let x, let y):
            return "translate(\(format(x)) \(format(y)))"
        case .rotate(let angle, let cx, let cy):
            if let cx, let cy {
                return "rotate(\(format(angle)) \(format(cx)) \(format(cy)))"
            } else {
                return "rotate(\(format(angle)))"
            }
        case .scale(let x, let y):
            if let y {
                return "scale(\(format(x)) \(format(y)))"
            } else {
                return "scale(\(format(x)))"
            }
        case .skewX(let angle):
            return "skewX(\(format(angle)))"
        case .skewY(let angle):
            return "skewY(\(format(angle)))"
        case .matrix(let a, let b, let c, let d, let e, let f):
            return "matrix(\(format(a)) \(format(b)) \(format(c)) \(format(d)) \(format(e)) \(format(f)))"
        }
    }
}

/// Represents stroke line cap options.
public enum SVGLineCap: String, Sendable, CaseIterable {
    case butt
    case round
    case square
}

/// Represents stroke line join options.
public enum SVGLineJoin: String, Sendable, CaseIterable {
    case miter
    case round
    case bevel
}

/// Represents fill rule options.
public enum SVGFillRule: String, Sendable, CaseIterable {
    case nonzero
    case evenodd
}

/// Represents text anchor options.
public enum SVGTextAnchor: String, Sendable, CaseIterable {
    case start
    case middle
    case end
}

/// Represents display options.
public enum SVGDisplay: String, Sendable, CaseIterable {
    case inline
    case block
    case none
}