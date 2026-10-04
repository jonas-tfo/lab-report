#import "src/lib.typ"

// hallon is an optional library for subfigures.
#import "@preview/hallon:0.1.2": subfigure
// cellpress is an optional library for Cell Press table style.
#import "@preview/cellpress-unofficial:0.1.0" as cellpress: bottomrule, midrule, toprule
// smartaref is an optional library for handling consecutive references.
#import "@preview/smartaref:0.1.0": Cref, cref

#show: lib.template.with(
  logo: image("/template/inc/tum.png"),
  title: [Labor 1],
  subtitle: [Klonieren],
  page-header-title: "Lab 1",
  course-name: "MoPra",
  course-code: "AA1234",
  //course-part:     "",
  lab-partners: ("Jonas Winston Turzanski Fortner", "Elif Basgicilar"),
  //lab-supervisor:  "",
  lab-group: "Group 1",
  lab-date: datetime.today().display(), // "2025-09-19"
)

#show: cellpress.style-table

// === [ Introduction ] ========================================================

= Introduction

#lorem(35)

== Theory

#lorem(10) @2020_molecular_biology_principles_of_genome_function_craig

// === [ Results ] =============================================================

= Results

As seen in #cref[@subfig-foo @subfig-bar] ...

#figure(
  grid(
    columns: 2,
    gutter: 1em,
    subfigure(
      rect(fill: aqua),
      caption: lorem(3),
      label: <subfig-foo>,
    ),
    subfigure(
      rect(fill: teal),
      caption: lorem(3),
      label: <subfig-bar>,
    ),
  ),
  gap: 1em,
  caption: lorem(5),
) <fig-baz>

The results of the experiment are presented in @tbl-bar

#figure(
  caption: lorem(5),
  table(
    columns: 3,
    toprule(),
    table.header[*foo*][*bar*][*baz*],
    midrule(), [a], [b],
    [c], [a], [b],
    [c], bottomrule(),
  ),
) <tbl-bar>

// === [ Bibliography ] ========================================================

#bibliography("/template/references.bib")
