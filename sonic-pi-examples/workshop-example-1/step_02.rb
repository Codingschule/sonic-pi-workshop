
use_synth :dsaw

live_loop :baseline do
  play :C2, release: 8
  sleep 4
  play :Bb1, release: 8
  sleep 4
  play :Ab1, release: 8
  sleep 4
  play :Eb2, release: 8
  sleep 4
end

live_loop :scarypiano do
  use_synth :piano
  play :C3, release: 0.1
  sleep 1
  play :C4, release: 0.1
  sleep 1
  play :C5, release: 0.1
  sleep 1
  play :C6, release: 0.1
  sleep 1
end


