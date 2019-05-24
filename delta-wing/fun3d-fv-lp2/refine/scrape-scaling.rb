#!/usr/bin/env ruby

cases = `ls */refine_out`.split

File.open("scale.dat","w") do |o|
  cases.each do |c|
    puts c
    time = `grep done #{c}`.split.first.to_f
    cores = `grep ranks #{c} | tail`.split(' ')[5]
    line = [cores, time].join(" ")
    puts line
    o.puts line
  end
end
