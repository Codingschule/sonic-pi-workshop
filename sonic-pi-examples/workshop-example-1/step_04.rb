


live_loop :baseline do
  use_synth :dsaw
  notes = (ring :C2, :Bb1, :Ab1, :Eb2)
  play notes.tick, release: 8
  sleep 4
end

live_loop :scarypiano do
  use_synth :beep
  notes = (ring :C3, :C4, :C5, :C6)
  play notes.choose, release: 0.1
  sleep (ring 0.25,0.5).tick
end

live_loop :scream do
  sample :ambi_glass_hum, amp: [2,4,8].choose, beat_stretch: [4,8,16].choose, pitch: 8, release: 4
  sleep 4
end

