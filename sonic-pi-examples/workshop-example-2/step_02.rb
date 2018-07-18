use_bpm 110

live_loop :bass do
  use_synth :tb303
  use_synth_defaults amp: 0.25
  play :c3, release: 4, cutoff: 60
  sleep 4
  play :e4, release: 4, cutoff: 70
  sleep 4
  play :e3, release: 4, cutoff: 80
  sleep 4
  play :d3, release: 4, cutoff: 90
  sleep 4
end

live_loop :choir do
  play :C3
  sleep 1
  play :Ds3
  sleep 1
  play :F3
  sleep 1
  play :G3
  sleep 4
  play :G3
  sleep 1
  play :F3
  sleep 1
  play :Ds3
  sleep 1
  play :C3
  sleep 1
end



