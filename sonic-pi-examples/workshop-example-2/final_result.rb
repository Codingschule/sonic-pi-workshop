use_bpm 110

live_loop :beat do
  with_fx :slicer, phase: 0.25 do
    sample :bd_haus, amp: 4
  end
  sleep 1
end

live_loop :bass do
  use_synth :tb303
  use_synth_defaults amp: 0.25
  notes = (ring :c3,:e4,:e3,:d3)
  c = (ring 60,70,80,90)
  with_fx :reverb, room: 1 do
    with_fx :slicer, phase: [0.125,0.25].choose do
      play notes.tick(:notes), release: 4, cutoff: c.tick(:cutoff)
    end
  end
  sleep 4
end

live_loop :choir do
  pitches = (ring 3,5,7,9,9,7,5,3)
  
  4.times do
    sample :ambi_choir, beat_stretch: 1, amp: 4, rate: 0.25, rpitch: pitches.tick
    sleep 1
  end
  sleep 4
  4.times do
    sample :ambi_choir, beat_stretch: 1, amp: 4, rate: 0.25, rpitch: pitches.tick
    sleep 1
  end
  sleep 4
end



