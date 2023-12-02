git clone https://github.com/tsujp/customise_macos

mkdir -p /Users/kappa/livemount

sudo mount -o nobrowse -t apfs  /dev/disk1s1 /Users/kappa/livemount

sudo cp ~/dotfiles/scripts/DarkAqua.car /Users/kappa/livemount/System/Library/CoreServices/SystemAppearance.bundle/Contents/Resources/DarkAqua.car

sudo bless --mount /Users/kappa/livemount --bootefi --create-snapshot
