//
//  SVGTypesTests.swift
//  swift-svg-types
//
//  Created by Coen ten Thije Boonkkamp
//

import SVGTypes
import Testing

@Suite("SVG Types Tests")
struct SVGTypesTests {

  @Test("Circle element type")
  func circleType() {
    let circle = Circle(cx: 50, cy: 50, r: 40)
    #expect(circle.cx == 50)
    #expect(circle.cy == 50)
    #expect(circle.r == 40)
    #expect(Circle.tagName == "circle")
  }

  @Test("SVGViewBox")
  func viewBox() {
    let vb = SVGViewBox(width: 100, height: 200)
    #expect(vb.stringValue == "0 0 100 200")
  }

  @Test("SVGLength")
  func length() {
    let px = SVGLength.px(10)
    #expect(px.stringValue == "10px")

    let percent = SVGLength.percentage(50)
    #expect(percent.stringValue == "50%")
  }

  @Test("SVGTransform")
  func transform() {
    let translate = SVGTransform.translate(x: 10, y: 20)
    #expect(translate.stringValue == "translate(10 20)")

    let rotate = SVGTransform.rotate(angle: 45)
    #expect(rotate.stringValue == "rotate(45)")
  }
}
