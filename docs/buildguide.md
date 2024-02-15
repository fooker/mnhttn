# mnhTTn build guide

Building the mnhTTn keyboard require some advanced soldering skills.
All parts of the board are surface mounted.

It is possible to solder all components and parts using a regular soldering iron but I recommend using a fine tip, a good pair of tweezers and some high-quality flux and tin.


## Part list
| Part name | Count | Remarks |
| --------- | ----: | ------- |
| mnhTTn PCB | 1 | You can find the required files [here](/board/) |
| Seeed Studio XIAO nRF52840 | 2 | Make sure you have the BLE version, there is no support for wired communication |
| 1N4148W | 36 | Surface mount diodes in SOD123 package |
| MSK12C02 | 2 | Power switches |
| COM-08720 | 2 | Reset switches (these are optional[^1]) |
| 301030 | 2 | LiPo Battery with 3.7V, 80mAh, 32 x 10 x 3 mm |
| MX ULP | 36 | Cherry MX ULP switches |
| Keycap Bundle | 4 | You can find the required files [here](/keycaps/) |
| SBR rubber mat | 1 | 1mm thinkness |

[^1]: The reset swtich on the controller can be used insted. But it is hard to trigger, which makes pairing more unconvinient.

## Break off halves
The PCB comes in one peace with both halves connected with a break-off bridge.
You need to separate both halves by breaking them apart.

After breaking them appart, you're left with some spure marks.
You can remove them with a file or a box cutter knife.

## Diodes
The diodes need to be soldered on the top of the PCB.
Pay attention th their orientation: they have a small line on one side, which must be on the side the arrow on the PCB is pointing to.

First, apply a small amount of solder on one of the pads.
Then use a tweezer to place the diode on the pad and reheat the solder to secure the diode.
Make sure the diode is sitting flush on the PCB and is alligned with the other pad.
Now, solder the other side of the diode.

## Power switches
Apply a tiny bit of solder on the bigger, out pads on top of the PCB.

The power switch has some tiny knobs on its bottom, which fit into the PCB holes.
Hold it in place with tweezers and then reheat the solder on the pad.

After this, you can solder the other pad and the three pins.

## Reset switches
Apply a tiny bit of solder on one of the pads on top of the PCB.

Place the reset button using a tweezer, ensure alignment with the other pads is correct and reheat the solder to fixate the switch in place.
Now, soulder the remaining pads of the switch.

## Microcontroller
> **Warning:** Before soldering the microcontroller, make sure it works.

Place the microcontroller in its place.
You can use pin-headers to align the controller with the PCB.

Apply some flux and try to hold the iron at an angle where you touch the pads of the microcontroller and the PCB while adding solder.

The pads on the back are a bit fiddly to solder, so you should add a lot of flux to the pads on the microcontroller first.
Then apply the same technique as on the front: try to heat up the pads on the microcontroller and the PCB before adding solder.

## Switches
> **Warning:** Take your time when soldering the switches.
> Applying to much solder can jam the switches.

First, fill all corner holes of the switches with solder.
Make sure to fill the holes but do not overfill them.
If needed, you can remove some solder.
Ensure both, top and bottom of the PCB have no noticable bumps.

Apply a tiny amount of solder on one of the switch pads on top of the PCB.
Place the switch and ensure it's orientation is correct and the pads on the bottom of the switch line up with the holes in the PCB.
There are some pins on the bottom of the switches which must register in the according holes in the PCB.

Solder the remaining corners of the switch in a cross pattern.
While doing so, give the switch and the PCB some time to cool down before soldering the next corner.
This will reduce thermal expansion problems which could warp the PCB.

Now, flip the board over.
Apply some flux to the holes in the PCB and heat up the pads on the bottom of the switch.
Now reheat the solder in the corners of the holes in the PCB.
Do **not** apply any additional solder.
The solder from the corners will flow down and connect to the switches.

## Battery
Apply some solder to the ends of the wires comming from the battery.

Fill the battery connector holes with some solder.
Make sure no solder is coming out of the bottom of the holes.

Then you can solder the wires to the holes. The wires should come from the top of the PCB.
Remove any wire that is poking through the bottom of the PCB.

## Cleaning
You can use an old toothbrush and some isopropanol to clean it from residues.

## Flash the firmware
If you have not already flashed the firmware to the microcontroller you should do it now.
[Here](https://github.com/fooker/mnhttn-zmk) you can find my ZMK configuration for the board.

Probably a good idea to test all switches before gluing on the rubber mat.

## Rubber mat
Place the PCB on your rubber mat and trace the outlines with a graphite pen.
Now, cut out the traceline using a scissor or an exacto knife.

You can attach the rubber mat using either double sided tape of you can use super-glue.
If you use super-glue make sure to apply a thin layer on the outer rim of the rubber mat and place the PCB on top.
For double sided tape you can apply the tape to the PCB with some overhang and thrace the outline with a sharp knife of a deburring tool.

Make sure the the rubber mat is even and has no bubbles.

