live_loop :foo do
  a, b, c = get "/osc/trigger/example"
  synth :beep, note: :C3 + a, cutoff: b, sustain: c
  sleep 0.25
end


