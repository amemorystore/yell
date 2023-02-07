all: yell.gbc

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

yell.o: yell.asm bank_*.asm
	rgbasm  -o yell.o yell.asm

yell.gbc: yell.o
	rgblink -n yell.sym -m yell.map -o $@ $<
	rgbfix -v -p 255 $@

	@if which md5sum &>/dev/null; then md5sum $@; else md5 $@; fi

clean:
	rm -f yell.o yell.gbc yell.sym yell.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +