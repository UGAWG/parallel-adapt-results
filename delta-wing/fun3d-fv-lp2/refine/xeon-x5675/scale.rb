#!/usr/bin/env ruby

def sh(comm)
  puts comm
  system comm
end

cpn=12
cores = [1,2,4,8,16,32,36,64,96,128,144,192,256,384,512,768]

cores.each do |core|
  dir = sprintf("core%04d",core)
  sh "rm -rf #{dir}"
  sh "mkdir -p #{dir}"
  sh "(cd #{dir} && pbswrap -e '. ~/.profile' -t 4 -q K2-route -cpn #{cpn} -np #{core} '~/refine/zoltan/src/ref_driver -i ../../../delta50k.meshb -m ../../../scaled-metric/delta500k-metric.solb -o out < /dev/null | tee refine_out')"
end
