

use_synth :sine

with_fx :slicer do
  live_loop :left do
    play 62, release: 2
    sleep 2
    play 67, sustain: 2, pan: 0.1
    sleep 2
    play 67, sustain: 2, pan: 1.0
    sleep 2
    play 66, sustain: 2
    sleep 2
  end
end

sleep 10

live_loop :snare_loop do
  sleep ring(2.5, 3)[tick]
  with_fx :lpf, cutoff: 100 do
    sample :sn_dub, sustain: 0, release: 0.05, amp: 3
  end
  sleep ring(1.5, 1)[look]
  
end

live_loop :random do
  p = play (chord :Eb3, :minor).choose - [0, 12, -12].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), attack: 0.01, release: rrand(0, 5), amp: 0.5
  control p, divisor: rrand(0.001, 50)
  sleep 2
end


