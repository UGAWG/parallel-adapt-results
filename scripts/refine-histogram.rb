#!/usr/bin/env ruby

dirmeshbs = Dir['*/out.meshb'].sort
dirmeshbs.each do |dirmeshb|
  dir = dirmeshb.split(/\//)[0]
  meshb = dirmeshb.split(/\//)[1]
  solb = meshb.sub(/\.meshb/,'-final-metric.solb')
  puts "(cd #{dir} && ref_historgram #{meshb} #{solb}"
end
