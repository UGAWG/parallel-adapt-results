#!/usr/bin/env ruby

def sh(comm)
  puts comm
  system comm
end

dirmeshbs = Dir['*/out.meshb'].sort
dirmeshbs.each do |dirmeshb|
  dir = dirmeshb.split(/\//)[0]
  out = 'refine_out'
  core = dir.sub(/core/,'')
  sec = `tail -n 1 #{dir}/refine_out | cut -d : -f 1`
  puts "#{core} #{sec}"
end
