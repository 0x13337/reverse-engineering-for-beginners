FILES=README.md Chapter-01/Chapter-1.md Chapter-02/Chapter-2.md Chapter-03/Chapter-3.md Chapter-04/Chapter-4.md Chapter-05/Chapter-5.md Chapter-06/Chapter-6.md Chapter-07/Chapter-7.md Chapter-08/Chapter-8.md Chapter-09/Chapter-9.md Chapter-10/Chapter-10.md Chapter-11/Chapter-11.md Chapter-12/Chapter-12.md Chapter-13/Chapter-13.md Chapter-14/Chapter-14.md Chapter-15/Chapter-15.md Chapter-16/Chapter-16.md Chapter-17/Chapter-17.md Chapter-18/Chapter-18.md Chapter-19/Chapter-19.md Chapter-20/Chapter-20.md Chapter-21/Chapter-21.md Chapter-22/Chapter-22.md Chapter-23/Chapter-23.md Chapter-24/Chapter-24.md Chapter-25/Chapter-25.md Chapter-26/Chapter-26.md Chapter-27/Chapter-27.md Chapter-28/Chapter-28.md Chapter-29/Chapter-29.md Chapter-30/Chapter-30.md Chapter-31/Chapter-31.md Chapter-32/Chapter-32.md Chapter-33/Chapter-33.md Chapter-54/54.10.md Chapter-54/54.12.md  Chapter-54/54.14.md  Chapter-54/54.16.md  Chapter-54/54.1.md  Chapter-54/54.3.md  Chapter-54/54.5.md  Chapter-54/54.7.md  Chapter-54/54.9.md Chapter-54/54.11.md  Chapter-54/54.13.md  Chapter-54/54.15.md  Chapter-54/54.17.md  Chapter-54/54.2.md  Chapter-54/54.4.md  Chapter-54/54.6.md  Chapter-54/54.8.md Chapter-55/55.1.md Chapter-56/56.md Chapter-57/57.1.md Chapter-58/58.md Chapter-59/59.md Chapter-60/60.md Chapter-61/61.1.md Chapter-62/62.md Chapter-63/63.1.md Chapter-64/64.md Chapter-65/65.md Chapter-66/66.md Chapter-67/Linux.md Chapter-68/Windows-NT.md Chapter-69/Disassembler.md Chapter-70/Debugger.md Chapter-71/SystemCallTracing.md Chapter-72/Decompilers.md Chapter-73/OtherTools.md Chapter-84/84.md Chapter-85/85.md Chapter-86/86.md Chapter-87/87.md 

.PHONY: html epub

all: html epub mobi

html:
	rm -rf out/html && mkdir -p out/html
	cp -r html/book.css out/html/
	cp --parents Chapter-02/*.jpg out/html/
	cp --parents Chapter-04/*.jpg out/html
	cp --parents Chapter-05/*.png out/html
	cp --parents Chapter-06/*.png out/html
	cp --parents Chapter-07/*.png out/html
	cp --parents Chapter-09/*.png out/html
	cp --parents Chapter-10/*.png out/html
	cp --parents Chapter-12/*.png out/html
	cp --parents Chapter-13/*.jpg out/html
	cp --parents Chapter-13/*.png out/html
	cp --parents Chapter-14/*.jpg out/html
	cp --parents Chapter-17/*.jpg out/html
	cp --parents Chapter-18/*.png out/html
	cp --parents Chapter-20/*.png out/html
	cp --parents Chapter-31/*.png out/html
	cp --parents Chapter-55/img/*.png out/html
	cp --parents Chapter-57/img/*.png out/html
	cp --parents Chapter-60/img/*.png out/html
	cp --parents Chapter-63/img/*.png out/html
	cp --parents Chapter-68/img/*.jpg out/html
	cp --parents Chapter-84/img/*.png out/html
	cp --parents Chapter-85/img/*.png out/html
	cp --parents Chapter-86/img/*.png out/html
	cp --parents Chapter-87/img/*.png out/html
	cp acorn.png out/html

	pandoc -S --to html5 -o out/html/RE4B-CN-partial.html --section-divs --toc --standalone --template=html/template.html $(FILES)

epub:
	mkdir -p out
	rm -f out/RE4B-CN-partial.epub
	pandoc -S --to epub3 -o out/RE4B-CN-partial.epub --toc --epub-chapter-level=2 --data-dir=epub --template=epub/template.html $(FILES)

