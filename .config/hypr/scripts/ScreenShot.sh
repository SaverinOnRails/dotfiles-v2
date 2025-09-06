DIR="$HOME/Pictures/Screenshots/"
CAPTURE=$(date +"%H_%M_%d_%m_%y")
file_name="$DIR$CAPTURE"
if [[ ! -d $DIR ]]; then
  mkdir $DIR
fi

take_shot() {
  grim "$file_name.png"
  notify-send "Screenshot taken to $file_name"
}

take_shot_of_region() {
  grim -g "$(slurp)" "$file_name.png" 
  notify-send "Region screenshot taken to $file_name"
}

if [[ $1 = "r" ]]; then
  take_shot_of_region
else
  take_shot
fi

