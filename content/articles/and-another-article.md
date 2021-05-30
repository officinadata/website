---
title: And another article
date: 2021-05-21
summary: A short summary of the article’s main point or argument
layout: article
---

A tool is an object that can extend an individual's ability to modify features of the surrounding environment. Although many animals use simple tools, only human beings, whose use of stone tools dates back hundreds of millennia, have been observed using tools to make other tools.

## Metaphors

A telephone is a communication tool that interfaces between two people engaged in conversation at one level. It also interfaces between each user and the communication network at another level. It is in the domain of media and communications technology that a counter-intuitive aspect of our relationships with our tools first began to gain popular recognition. Marshall McLuhan famously said "We shape our tools. And then our tools shape us." McLuhan was referring to the fact that our social practices co-evolve with our use of new tools and the refinements we make to existing tools.

## Climate Grid Example

Note that if the ClimGrid data structure has 3 dimensions (time x longitude x latitude) the `mapclimgrid` function makes a time-average (i.e. climatological mean). Right now, there are a growing list of hardcoded regions (see help section of `mapclimgrid` function) and the default `auto` which use the maximum and minimum of the lat-long coordinates inside the `ClimGrid` structure. The user can also provide a polygon(s) and the `mapclimgrid` function will clip the grid points outside the specified polygon. Another option is to provide a mask (with dimensions identical to the spatial dimension of the `ClimGrid` data) which contains `NaN` and `1.0` and the data inside the `ClimGrid` struct will be clipped with the mask. Other regions will be added in the future, as well as the option to send a custom region defined by a lat-lon box.

```julia
struct ClimGrid
  data::AxisArray # labeled axis
  longrid::AbstractArray{N,2} where N # the longitude grid
  latgrid::AbstractArray{N,2} where N # the latitude grid
  msk::Array{N, 2} where N
  grid_mapping::Dict # bindings of native grid
  dimension_dict::Dict
  model::String
  frequency::String
  experiment::String
  run::String
  project::String # CORDEX, CMIP5, etc.
  institute::String
  filename::String
  dataunits::String
  latunits::String # of the coordinate variable
  lonunits::String # of the coordinate variable
  variable::String # Type of variable (i.e. can be the same as "var", but it is changed when calculating indices)
  typeofvar::String # Variable type (e.g. tasmax, tasmin, pr)
  typeofcal::String # Calendar type
  timeattrib::Dict # Time attributes
  varattribs::Dict # Variable attributes
  globalattribs::Dict # Global attributes
end
```

Embedding an image. More than 20 climate indices are available in the package, such as the annual number of tropical nights, annual maximum and minimum, etc. Climate indices can easily be developed by following the source code or looking at the available metadata inside a `ClimGrid`.

![example map](/images/example-map.png)
