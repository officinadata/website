---
title: "DotProductGraphs.jl: a Julia package"
date: 2023-01-16
summary: We just released a novel Julia package to work with Random Dot Product Graphs, for static and temporal complex networks.
layout: article
byline: gvdr
---

Small announcement. We just released the very first version of DotProductGraphs.jl, a #julialang package to work with Random Dot Product Graphs, a powerful statistical frameworks for modelling complex #networks (static, dynamic, ...).
It's obviously #opensource, so please come help me with it, on [github repo](https://github.com/gvdr/DotProductGraphs.jl)

Focus is on flexibility (e.g., user defined functions to compute svd decomposition) and performance. For the moment it's "Julia all the way down" (rather than gluing together other languages) so it should play well with other frameworks like SciML and FluxML.
