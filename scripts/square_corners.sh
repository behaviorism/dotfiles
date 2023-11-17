git clone https://github.com/tsujp/customise_macos

mkdir -p /Users/kappa/livemount

sudo cp ~/customise_macos/appearance/DarkAquaAppearance/Edited/DarkAquaAppearance.car /Users/kappa/livemount/System/Library/CoreServices/SystemAppearance.bundle/Contents/Resources/DarkAqua.car

sudo bless --mount /Users/kappa/livemount --bootefi --create-snapshot
