all: stanovy.pdf
stanovy.pdf: stanovy.html stanovy.css
	xhtml2pdf --css stanovy.css stanovy.html
show: all
	evince stanovy.pdf
push: all
	scp stanovy.html stanovy.pdf data:data/mrac/
