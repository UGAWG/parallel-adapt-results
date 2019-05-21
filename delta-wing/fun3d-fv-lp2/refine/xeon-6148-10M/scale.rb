#!/usr/bin/env ruby

def sh(comm)
  puts comm
  system comm
end

cpn=40
cores = [1,2,4,8,16,20,40,80,120,160,200,280,400]

cores.each do |core|
  dir = sprintf("core%04d",core)
  sh "rm -rf #{dir}"
  sh "mkdir -p #{dir}"
  sh "(cd #{dir} && pbswrap -e '. ~/.profile' -t 12 -q K4-route -cpn #{cpn} -np #{core} '~/refine/parmetis/src/ref_driver -i ../../../delta50k.meshb -m ../../../scaled-metric/delta10M-metric.solb -c -o out < /dev/null | tee refine_out')"
end
