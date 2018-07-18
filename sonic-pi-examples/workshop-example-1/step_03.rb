


live_loop :baseline do
  use_synth :dsaw
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
  use_synth :beep
  notes = (ring :C3, :C4, :C5, :C6)
  play notes.choose, release: 0.1
  sleep (ring 0.25,0.5).tick
end


