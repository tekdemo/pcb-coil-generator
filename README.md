# PCB Coil Generator

A script to generate coils, possibly useful for projects like [small pcb motors](https://hackaday.io/project/158017-linear-pcb-motor)

### Configuring

No interface at this time. Simply modify the top few lines in `coilgen.rb` and adjust the parameters to your liking. 
The generated coil can be adjusted for 
- trace width
- trace spacing
- drill size
- annular ring size
- number of pcb layers

### Usage
`cd` to the directory, and run `ruby coilgen.rb`. It will generate the relevant files for you in a couple formats
- A few gerber files, for checking and verification
- An Eagle BRD file.
- An Eagle LBR file.
- A Kicad .kicad_pcb.

Before using any generated files, ensure they pass relevant DRC checks for your fab. See notes below for why. 

### Known issues:
- The vias in the Kicad PCB file don't seem to behave well, and probably need to be manually adjusted.
- The Eagle BRD file works, but because Eagle won't let you specify annular rings that violate the DRC, it's possible to accidentally break it. 
- The Eagle LBR file should work, but be mindful that the LBR allows no way to specify any drc constraints. Make sure that any imported parts do not violate DRC rules. 

