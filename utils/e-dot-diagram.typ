#import "@preview/cetz:0.4.2"
#let e-dot-diagram(
  elements: (
    center: "",
    left: "",
    right: "",
    bottom: "",
    top: "",
  ),
  dots: (
    tl: ".",
    tr: ".",
    tc: ".",
    bl: ".",
    br: ".",
    bc: ".",
    lt: ".",
    lb: ".",
    lc: ".",
    rt: ".",
    rb: ".",
    rc: ".",
  ),
  charge: 0,
) = {
  let (center, left, right, bottom, top) = (
    (
      center: "",
      left: "",
      right: "",
      bottom: "",
      top: "",
    )
      + elements
  )

  let (tl, tr, bl, br, lt, lb, rt, rb) = (
    (
      tl: ".",
      tr: ".",
      bl: ".",
      br: ".",
      lt: ".",
      lb: ".",
      rt: ".",
      rb: ".",
    )
      + dots
  )
  // 电荷的处理
  // let _charge = if charge > 0 { super[#if charge == 1 [+] else [#charge+]] } else if charge < 0 {
  //   super[#if charge == -1 { sym.minus } else [#calc.abs(charge)#sym.minus]]
  // }

  // 生成电子结构
  let res = box(baseline: 40.5%)[#cetz.canvas({
    import cetz.draw: *
    set-style(stroke: none)

    rect((0, 0), (.45, .45), name: "rect")
    content("rect")[#center]

    // 上方的点
    circle((.15, 0.45), radius: 0.025, fill: black)
    circle((.15 * 2, 0.45), radius: 0.025, fill: black)
    content((.225, 0.68))[#top]

    // 下方的点
    circle((.15, 0), radius: 0.025, fill: black)
    circle((.15 * 2, 0), radius: 0.025, fill: black)
    content((.225, -.22))[#bottom]

    // 左侧的点
    circle((0, .15), radius: 0.025, fill: black)
    circle((0, .15 * 2), radius: 0.025, fill: black)
    content((-.2, 0.225))[#left]

    // 右侧的点
    circle((0.45, .15), radius: 0.025, fill: black)
    circle((0.45, .15 * 2), radius: 0.025, fill: black)
    content((.65, 0.225))[#right]
  })]

  res
  // if with-paren {
  //   "[" + left + res + right + "]" + _charge
  // } else [#left#res#right#_charge]
  // left + h(1pt) + res + h(1pt) + right
}


// [#e-dot-diagram(
//   elements: (
//     center: "H",
//     left: "H",
//     right: "H",
//     bottom: "H",
//     top: "H",
//   ),
//   charge: 1,
// )]#super[+]

#e-dot-diagram(
  elements: (
    center: "H",
    left: "H",
    right: "H",
    bottom: "H",
    top: "H",
  ),
  charge: 1,
)
