.PHONY: drill clean

NAME := mnhttn

LAYERS := F.Cu B.Cu F.Paste B.Paste F.Silkscreen B.Silkscreen F.Mask B.Mask Edge.Cuts

DRLS := $(addprefix out/$(NAME)-, $(addsuffix .drl, PTH NPTH))

GBRS := $(addprefix out/$(NAME)-, $(addsuffix .gbr, $(LAYERS:.=_)))

SPACE := $(subst ,, )
COMMA := ,

out.zip: $(DRLS) $(GBRS) | out
	zip -rv out.zip out

out:
	mkdir -p out

$(DRLS) &: $(NAME).kicad_pcb | out
	kicad-cli pcb export drill \
		--format gerber \
		--drill-origin absolute \
		--excellon-units mm \
		--excellon-zeros-format decimal \
		--excellon-separate-th \
		--output out/ \
		$<

$(GBRS) &: $(NAME).kicad_pcb | out
	kicad-cli pcb export gerbers \
		--layers $(subst $(SPACE),$(COMMA),$(strip $(LAYERS))) \
		--output out/ \
		$<
	
clean:
	rm -fR out
	rm -f out.zip

