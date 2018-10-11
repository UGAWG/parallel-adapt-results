#!/usr/bin/env ruby

def sh(comm)
  puts comm
  system comm
end

dirmeshbs = Dir['*/out.meshb'].sort
dirmeshbs.each do |dirmeshb|
  dir = dirmeshb.split(/\//)[0]
  meshb = dirmeshb.split(/\//)[1]
  solb = meshb.sub(/\.meshb/,'-final-metric.solb')
  sh "(cd #{dir} && ref_historgram #{meshb} #{solb} )"
end
