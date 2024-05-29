
default: all

init:
  rm .west -fR
  west init -l $(pwd)/config
  west update
  west zephyr-export

[private]
build_dir:
  rm -fR build
  mkdir -p build

build shield: init build_dir
  rm $(pwd)/build -fR
  west build -s zmk/app -d $(pwd)/build -b seeeduino_xiao_ble -- -DZMK_CONFIG=$(pwd)/config -DSHIELD={{shield}}
  cp build/zephyr/zmk.uf2 {{shield}}.uf2

all: (build "mnhttn_left") (build  "mnhttn_right") (build "settings_reset")

