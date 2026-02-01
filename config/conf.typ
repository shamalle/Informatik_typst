#let conf(thema: str, doc) = {
  import "@preview/codly:1.3.0": *
  show: codly-init

  codly(
    zebra-fill: none,
    fill: luma(250),
    stroke: 1pt + luma(200),
    header-cell-args: (fill: luma(200)),
    footer-cell-args: (fill: luma(200)),
    languages: (
      py: (
        name: [ Py],
        color: green,
        icon: "🐍",
      ),
    ),
  )

  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
    header-ascent: 20pt,
    header: [
      #set text(size: 8pt)
      #thema
      #h(1fr)
      #context document.title
      #v(-5pt)
      #line(length: 100%)
    ],
    footer-descent: 25pt,
    footer: [
      #set text(size: 8pt)
      #line(length: 100%)
      #v(-5pt)
      GymThun, #context document.author.first()
      #h(1fr)
      #context counter(page).display("1/1", both: true)
    ],
  )

  set heading(numbering: "1.")

  set text(
    size: 10pt,
    lang: "de",
    region: "CH"
  )

  show title: set text(size: 20pt)
  show title: set block(below: 1.2em)

  show heading: set block(below: 1em)

  show link: set text(blue)
  show link: underline

  set smartquote(quotes: "«»")

  set par(
    justify: true,
    leading: 0.52em,
  )

  title()

  doc
}
