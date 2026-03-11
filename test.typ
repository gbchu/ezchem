#import "@preview/ezexam:0.2.9": *
#show: setup
#import "/lib.typ": *

#e-bridge(
  equation: [K] + [Cl<a>O#sub[3] + 6H] + [Cl<b> = KCl + 3] + [Cl<c>#sub[2]$arrow.t$ + 3H#sub[2]O],
  get: (from: <a>, to: <c>, e: 5, tsign: none),
  lose: (from: <b>, to: <c>, e: 5),
)


#e-bridge(
  equation: [Cu<a2>O + H<a1>#sub[2] = Cu + H#sub[2]O],
  get: (from: <a1>, to: <a2>, e: 2, tsign: none),
)


#e-bridge(
  equation: [Cl<b1>#sub[2] + 2NaOH = NaCl + NaClO + H#sub[2]O],
  get: (from: <b1>, to: <b1>, e: 1, tsign: none),
)


#ai-struct(proton: 16, electrons: (2, 8, 6))

#ai-struct(proton: "z", electrons: (2, 8, 8, "X"))

#e-dot-diagram(
  elements: (
    top: "H",
    bottom: "H",
    right: "H",
    left: "H",
    center: "H",
  ),
  charge: 1,
)
