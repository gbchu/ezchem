# ezchem

![Typst Version](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgbchu%2Fezchem%2Frefs%2Fheads%2Fmain%2Ftypst.toml&query=package.version&prefix=v&logo=typst&label=package&color=239DAD
)
[![MIT License](https://img.shields.io/badge/license-MIT-brightgreen)](https://github.com/gbchu/ezexam/blob/main/LICENSE)
[![Online Documentation](https://img.shields.io/badge/docs-online-007aff)](https://ezexam.pages.dev/reference/chem)


This lib can draw atomic or ionic structures and single or double line bridge and so on.


## Usage
```typst
#e-bridge(
  equation: [K] + [Cl<A>O#sub[3] + 6H] + [Cl<B> = KCl + 3] + [Cl<C>#sub[2]$arrow.t$ + 3H#sub[2]O],
  get: (from: <A>, to: <C>, e: 5, tsign: none),
  lose: (from: <B>, to: <C>, e: 5),
)
```
![效果图](./img/1.png)

```typst
#e-bridge(
  equation: [Cu<A2>O + H<A1>#sub[2] = Cu + H#sub[2]O],
  get: (from: <A1>, to: <A2>, e: 2, tsign: none),
)
```
![效果图](./img/2.png)

```typst
#e-bridge(
  equation: [Cl<B1>#sub[2] + 2NaOH = NaCl + NaClO + H#sub[2]O],
  get: (from: <B1>, to: <B1>, e: 1, tsign: none),
)
```
![效果图](./img/3.png)

```typst
#ai-struct(proton: 16, electrons: (2, 8, 6))
```
![效果图](./img/4.png)

```typst
#ai-struct(proton: "z", electrons: (2, 8, 8, "X"))
```
![效果图](./img/5.png)


## Changelog
### 0 . 1 . 1
+ 新增离子式
+ 优化代码

### 0 . 1 . 0
+ 初版发布，添加下列功能
  + 单、双线桥
  + 原子、离子结构示意图