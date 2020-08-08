
use_synth :beep
use_bpm 30
sample :vinyl_hiss
sleep 2
live_loop :left do
  with_fx :ping_pong do
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
live_loop :right do
  with_fx :ping_pong do
    sleep 0.5
    play_pattern_timed [74,74],[0.5]
  end
end