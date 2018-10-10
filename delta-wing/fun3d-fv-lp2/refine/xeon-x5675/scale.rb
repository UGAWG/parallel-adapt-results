#!/usr/bin/env ruby

def sh(comm)
  puts comm
  system comm
end

cpn=12
cores = [1,2,4,8,16,32,64,128,1*cpn,2*cpn,4*cpn,8*cpn]

cores.each do |core|
  dir = sprintf("core%04d",core)
  sh "rm -rf #{dir}"
  sh "mkdir -p #{dir}"
  sh "(cd #{dir} && pbswrap -e '. ~/.profile' -t 1 -q K2a-devel -cpn #{cpn} -np #{core} ~/refine/parmetis/src/ref_driver -i ../../../delta50k.meshb -m ../../../scaled-metric/delta500k-metric.solb -o out > refine_out)"
end
