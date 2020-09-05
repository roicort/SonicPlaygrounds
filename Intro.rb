#Intro


use_synth :beep
use_bpm 30

2.times do
  sample :vinyl_hiss
end

sleep 2

with_fx :ping_pong do
  live_loop :left do
    play 62
    sleep 1.5
    play 65
    sleep 1.5
    play 58
    sleep 1.5
    play 57
    sleep 1.5
  end
end

sleep 6
with_fx :ping_pong do
  live_loop :right do
    sleep 0.5
    play_pattern_timed [74,74],[0.5]
  end
end
sleep 6

use_synth :subpulse

with_fx(:echo) do
  2.times do
    play_pattern_timed [62, 65, 58,57],[1.5], cutoff: rrand(40, 100), amp: 0.5, attack: 0, cutoff_max: 110
  end
end
sleep 6
with_fx(:echo) do
  2.times do
    play_pattern_timed [62, 65, 58,57],[1.5], cutoff: rrand(40, 100), amp: 0.5, attack: 0, cutoff_max: 110
  end
end

# Coded by Rodrigo Cortez
# http://roicort.github.io/

