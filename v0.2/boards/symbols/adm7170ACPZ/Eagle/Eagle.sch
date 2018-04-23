<eagle version="6.1"><drawing><settings><setting alwaysvectorfont="no" verticaltext="up"/></settings><grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/><layers><layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/><layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/><layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/><layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/><layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/><layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/><layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/><layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/></layers><schematic><libraries><library name="AcceleratedDesigns_Lib"><packages><package name="CP_8_21"><pad name="1" drill="0" y="0.75" x="-1.4024"/><pad name="2" drill="0" y="0.25" x="-1.4024"/><pad name="3" drill="0" y="-0.25" x="-1.4024"/><pad name="4" drill="0" y="-0.75" x="-1.4024"/><pad name="5" drill="0" y="-0.75" x="1.4024"/><pad name="6" drill="0" y="-0.25" x="1.4024"/><pad name="7" drill="0" y="0.25" x="1.4024"/><pad name="8" drill="0" y="0.75" x="1.4024"/><pad name="9" drill="0" y="0" x="0"/></package><package name="CP_8_21-M"><pad name="1" drill="0" y="0.75" x="-1.4532"/><pad name="2" drill="0" y="0.25" x="-1.4532"/><pad name="3" drill="0" y="-0.25" x="-1.4532"/><pad name="4" drill="0" y="-0.75" x="-1.4532"/><pad name="5" drill="0" y="-0.75" x="1.4532"/><pad name="6" drill="0" y="-0.25" x="1.4532"/><pad name="7" drill="0" y="0.25" x="1.4532"/><pad name="8" drill="0" y="0.75" x="1.4532"/><pad name="9" drill="0" y="0" x="0"/></package><package name="CP_8_21-L"><pad name="1" drill="0" y="0.75" x="-1.3516"/><pad name="2" drill="0" y="0.25" x="-1.3516"/><pad name="3" drill="0" y="-0.25" x="-1.3516"/><pad name="4" drill="0" y="-0.75" x="-1.3516"/><pad name="5" drill="0" y="-0.75" x="1.3516"/><pad name="6" drill="0" y="-0.25" x="1.3516"/><pad name="7" drill="0" y="0.25" x="1.3516"/><pad name="8" drill="0" y="0.75" x="1.3516"/><pad name="9" drill="0" y="0" x="0"/></package></packages><symbols><symbol name="ADM7170ACPZ-1.3-R7@1"><pin name="VIN@6" x="0" y="0" rot="MR180" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="VIN@7" x="0" y="-2.54" rot="MR180" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="VOUT@8" x="0" y="-7.62" rot="MR180" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="VOUT@9" x="0" y="-10.16" rot="MR180" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="EN@1" x="0" y="-15.24" rot="MR180" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="SENSE@4" x="60.96" y="-15.24" rot="MR0" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="SS@5" x="60.96" y="-10.16" rot="MR0" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="GND@3" x="60.96" y="-5.08" rot="MR0" direction="pas" length="middle" visible="both" swaplevel="0"/><pin name="EP@2" x="60.96" y="0" rot="MR0" direction="pas" length="middle" visible="both" swaplevel="0"/><wire x1="7.62" y1="5.08" x2="7.62" y2="-20.32" width="0.127" layer="94"/><wire x1="7.62" y1="-20.32" x2="53.34" y2="-20.32" width="0.127" layer="94"/><wire x1="53.34" y1="-20.32" x2="53.34" y2="5.08" width="0.127" layer="94"/><wire x1="53.34" y1="5.08" x2="7.62" y2="5.08" width="0.127" layer="94"/><text size="2" x="30.48" y="10.16" layer="95" align="center">&gt;NAME</text><text size="2" x="30.48" y="7.62" layer="96" align="center">&gt;VALUE</text></symbol></symbols><devicesets><deviceset name="ADM7170ACPZ-1.3-R7" prefix="U"><gates><gate name="1" addlevel="always" y="0" x="0" symbol="ADM7170ACPZ-1.3-R7@1"/></gates><devices><device name="ADM7170ACPZ-1.3-R7" package="CP_8_21"><connects><connect pad="5" pin="EN@1" gate="1"/><connect pad="9" pin="EP@2" gate="1"/><connect pad="6" pin="GND@3" gate="1"/><connect pad="3" pin="SENSE@4" gate="1"/><connect pad="4" pin="SS@5" gate="1"/><connect pad="7" pin="VIN@6" gate="1"/><connect pad="8" pin="VIN@7" gate="1"/><connect pad="1" pin="VOUT@8" gate="1"/><connect pad="2" pin="VOUT@9" gate="1"/></connects><technologies><technology name=""><attribute name="Vendor" value="Analog Devices Inc" constant="no"/><attribute name="Manufacturer_Part_Number" value="ADM7170ACPZ-1.3-R7" constant="no"/></technology></technologies></device></devices></deviceset></devicesets></library></libraries><attributes/><variantdefs/><classes><class number="0" name="default" width="0" drill="0"/></classes><parts/><sheets/></schematic></drawing></eagle>
