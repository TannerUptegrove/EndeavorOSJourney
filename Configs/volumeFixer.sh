volume=$(pactl list sinks | grep Volume | head -n1 | awk '{print $5}')

if [ $volume != 100% ]; then 
    pactl set-sink-volume \@DEFAULT_SINK@ +5%
    echo "here"  
fi
