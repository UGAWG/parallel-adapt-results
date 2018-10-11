#!/usr/bin/env ruby

def sh(comm)
  puts comm
  system comm
end

cpn=40
cores = [1,2,4,8,16,32,64,128,160,200,256,400]

cores.each do |core|
  dir = sprintf("core%04d",core)
  sh "rm -rf #{dir}"
  sh "mkdir -p #{dir}"
  sh "(cd #{dir} && pbswrap -e '. ~/.profile' -t 4 -q K4-route -cpn #{cpn} -np #{core} '~/refine/zoltan/src/ref_driver -i ../../../cube-7600.meshb -m ../../../scaled-metric/cube-500k-metric.solb -o out < /dev/null | tee refine_out')"
end
