use_bpm 110

live_loop :bass do
  use_synth :tb303
  use_synth_defaults amp: 0.25
  notes = (ring :c3,:e4,:e3,:d3)
  c = (ring 60,70,80,90)
  play notes.tick(:notes), release: 4, cutoff: c.tick(:cutoff)
  sleep 4
end

live_loop :choir do
  notes = (ring :C3, :Ds3, :F3, :G3, :G3, :F3, :Ds3, :C3)
  play notes.tick
  sleep 1
end



