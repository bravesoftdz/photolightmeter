ARCH="arm-linux"
LAZARUS = "/media/mmc1/noch/src/freepascal/lazarus"
PATH = "/usr/bin:/bin:/usr/sbin:/sbin"
SETPATH = PATH=/local/fpc-svn/lib/fpc/2.5.1:/local/fpc-svn/bin:$(PATH)
PROJECT = project1.lpr
OUTFILE = lightmeter
FPC = $(SETPATH) fpc
PARAMS =  $(PROJECT) -Xs -Xg -XX -MObjFPC -Scgi -O1 -gl -WG -vewnhi -l -Fu$(LAZARUS)/lcl/units/$(ARCH)/ -Fu$(LAZARUS)/lcl/units/$(ARCH)/gtk2/ -Fu$(LAZARUS)/packager/units/$(ARCH)/ -Fu. -o$(OUTFILE) -dLCL -dLCLgtk2

all:
	    $(FPC) $(PARAMS)
	    

clean:
	    rm *.o
	    rm *.ppu
	    rm *.dbg
install:
	    cp lightmeter.png /usr/share/pixmaps/
	    cp lightmeter.desktop /usr/share/applications/
	    mkdir -p /opt/lightmeter/bin
	    cp lightmeter /opt/lightmeter/bin/
	    
uninstall:	
	    rm -rf /opt/lightmeter
	    rm /usr/share/pixmaps/lightmeter.png
	    rm /usr/share/applications/lightmeter.desktop
	    
 


 


