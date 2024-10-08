#import "@preview/dvdtyp:1.0.0": *


#let _title = dvdtyp.with(
  title: "PMT Notes",
  author: "Yunkai Zhang",
  abstract: [This set of notes is written for the course 40018: Discrete Mathematics,
  Logic & Reasoning, taught in Imperial College London 2024-2025 by Dr Steffen van Bakel.
  \
  If you like this, consider #text(blue)[#link("https://github.com/YunkaiZhang233/PMT-notes.git")[star this repository on Github!]]],
)

#let title(week) = _title.with(
  subtitle: [for week #week]
)