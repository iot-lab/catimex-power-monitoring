<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.5.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X04" urn="urn:adsk.eagle:footprint:22258/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.1562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
<package name="1X04/90" urn="urn:adsk.eagle:footprint:22259/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-5.715" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="6.985" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X04" urn="urn:adsk.eagle:package:22407/2" type="model" library_version="3">
<description>PIN HEADER</description>
</package3d>
<package3d name="1X04/90" urn="urn:adsk.eagle:package:22404/2" type="model" library_version="3">
<description>PIN HEADER</description>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD4" urn="urn:adsk.eagle:symbol:22257/1" library_version="3">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X4" urn="urn:adsk.eagle:component:22499/4" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22407/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X04/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22404/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TS5A2316XDCUR">
<packages>
<package name="SOP50P310X90-8N">
<wire x1="-1.1938" y1="0.635" x2="-1.1938" y2="0.8636" width="0" layer="51"/>
<wire x1="-1.1938" y1="0.8636" x2="-1.6002" y2="0.8636" width="0" layer="51"/>
<wire x1="-1.6002" y1="0.8636" x2="-1.6002" y2="0.635" width="0" layer="51"/>
<wire x1="-1.6002" y1="0.635" x2="-1.1938" y2="0.635" width="0" layer="51"/>
<wire x1="-1.1938" y1="0.127" x2="-1.1938" y2="0.381" width="0" layer="51"/>
<wire x1="-1.1938" y1="0.381" x2="-1.6002" y2="0.381" width="0" layer="51"/>
<wire x1="-1.6002" y1="0.381" x2="-1.6002" y2="0.127" width="0" layer="51"/>
<wire x1="-1.6002" y1="0.127" x2="-1.1938" y2="0.127" width="0" layer="51"/>
<wire x1="-1.1938" y1="-0.381" x2="-1.1938" y2="-0.127" width="0" layer="51"/>
<wire x1="-1.1938" y1="-0.127" x2="-1.6002" y2="-0.127" width="0" layer="51"/>
<wire x1="-1.6002" y1="-0.127" x2="-1.6002" y2="-0.381" width="0" layer="51"/>
<wire x1="-1.6002" y1="-0.381" x2="-1.1938" y2="-0.381" width="0" layer="51"/>
<wire x1="-1.1938" y1="-0.8636" x2="-1.1938" y2="-0.635" width="0" layer="51"/>
<wire x1="-1.1938" y1="-0.635" x2="-1.6002" y2="-0.635" width="0" layer="51"/>
<wire x1="-1.6002" y1="-0.635" x2="-1.6002" y2="-0.8636" width="0" layer="51"/>
<wire x1="-1.6002" y1="-0.8636" x2="-1.1938" y2="-0.8636" width="0" layer="51"/>
<wire x1="1.1938" y1="-0.635" x2="1.1938" y2="-0.8636" width="0" layer="51"/>
<wire x1="1.1938" y1="-0.8636" x2="1.6002" y2="-0.8636" width="0" layer="51"/>
<wire x1="1.6002" y1="-0.8636" x2="1.6002" y2="-0.635" width="0" layer="51"/>
<wire x1="1.6002" y1="-0.635" x2="1.1938" y2="-0.635" width="0" layer="51"/>
<wire x1="1.1938" y1="-0.127" x2="1.1938" y2="-0.381" width="0" layer="51"/>
<wire x1="1.1938" y1="-0.381" x2="1.6002" y2="-0.381" width="0" layer="51"/>
<wire x1="1.6002" y1="-0.381" x2="1.6002" y2="-0.127" width="0" layer="51"/>
<wire x1="1.6002" y1="-0.127" x2="1.1938" y2="-0.127" width="0" layer="51"/>
<wire x1="1.1938" y1="0.381" x2="1.1938" y2="0.127" width="0" layer="51"/>
<wire x1="1.1938" y1="0.127" x2="1.6002" y2="0.127" width="0" layer="51"/>
<wire x1="1.6002" y1="0.127" x2="1.6002" y2="0.381" width="0" layer="51"/>
<wire x1="1.6002" y1="0.381" x2="1.1938" y2="0.381" width="0" layer="51"/>
<wire x1="1.1938" y1="0.8636" x2="1.1938" y2="0.635" width="0" layer="51"/>
<wire x1="1.1938" y1="0.635" x2="1.6002" y2="0.635" width="0" layer="51"/>
<wire x1="1.6002" y1="0.635" x2="1.6002" y2="0.8636" width="0" layer="51"/>
<wire x1="1.6002" y1="0.8636" x2="1.1938" y2="0.8636" width="0" layer="51"/>
<wire x1="-1.1938" y1="-1.0414" x2="1.1938" y2="-1.0414" width="0" layer="51"/>
<wire x1="1.1938" y1="-1.0414" x2="1.1938" y2="1.0414" width="0" layer="51"/>
<wire x1="1.1938" y1="1.0414" x2="0.3048" y2="1.0414" width="0" layer="51"/>
<wire x1="0.3048" y1="1.0414" x2="-0.3048" y2="1.0414" width="0" layer="51"/>
<wire x1="-0.3048" y1="1.0414" x2="-1.1938" y2="1.0414" width="0" layer="51"/>
<wire x1="-1.1938" y1="1.0414" x2="-1.1938" y2="-1.0414" width="0" layer="51"/>
<wire x1="0.3048" y1="1.0414" x2="-0.3048" y2="1.0414" width="0" layer="51" curve="-180"/>
<wire x1="0.6096" y1="1.0414" x2="0.3048" y2="1.0414" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.0414" x2="-0.3048" y2="1.0414" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="1.0414" x2="-0.6096" y2="1.0414" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.0414" x2="-0.3048" y2="1.0414" width="0.1524" layer="21" curve="-180"/>
<text x="-2.189709375" y="1.2739" size="0.8128" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-2.19105" y="-1.91356875" size="0.8128" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-1.4224" y="0.762" dx="1.0668" dy="0.254" layer="1"/>
<smd name="2" x="-1.4224" y="0.254" dx="1.0668" dy="0.254" layer="1"/>
<smd name="3" x="-1.4224" y="-0.254" dx="1.0668" dy="0.254" layer="1"/>
<smd name="4" x="-1.4224" y="-0.762" dx="1.0668" dy="0.254" layer="1"/>
<smd name="5" x="1.4224" y="-0.762" dx="1.0668" dy="0.254" layer="1"/>
<smd name="6" x="1.4224" y="-0.254" dx="1.0668" dy="0.254" layer="1"/>
<smd name="7" x="1.4224" y="0.254" dx="1.0668" dy="0.254" layer="1"/>
<smd name="8" x="1.4224" y="0.762" dx="1.0668" dy="0.254" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="TS5A23167DCUR">
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-15.24" x2="17.78" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="17.78" y1="-15.24" x2="17.78" y2="7.62" width="0.4064" layer="94"/>
<wire x1="17.78" y1="7.62" x2="-12.7" y2="7.62" width="0.4064" layer="94"/>
<text x="-4.170840625" y="10.0457" size="2.08541875" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.51525" y="-19.665" size="2.08876875" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="V+" x="22.86" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="IN1" x="-17.78" y="-10.16" length="middle" direction="in"/>
<pin name="IN2" x="-17.78" y="-12.7" length="middle" direction="in"/>
<pin name="GND" x="22.86" y="-12.7" length="middle" direction="pas" rot="R180"/>
<pin name="COM1" x="-17.78" y="2.54" length="middle"/>
<pin name="COM2" x="-17.78" y="-2.54" length="middle"/>
<pin name="NC1" x="22.86" y="2.54" length="middle" rot="R180"/>
<pin name="NC2" x="22.86" y="-2.54" length="middle" rot="R180"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.254" layer="97"/>
<wire x1="7.62" y1="2.54" x2="10.16" y2="2.54" width="0.254" layer="97"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="97"/>
<wire x1="7.62" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="97"/>
<wire x1="7.62" y1="2.54" x2="0" y2="2.54" width="0.254" layer="97" style="shortdash"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="97" style="shortdash"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TS5A23167DCUR" prefix="U">
<description>SPST ANALOG SWITCH</description>
<gates>
<gate name="G$1" symbol="TS5A23167DCUR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOP50P310X90-8N">
<connects>
<connect gate="G$1" pin="COM1" pad="2"/>
<connect gate="G$1" pin="COM2" pad="6"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="IN1" pad="7"/>
<connect gate="G$1" pin="IN2" pad="3"/>
<connect gate="G$1" pin="NC1" pad="1"/>
<connect gate="G$1" pin="NC2" pad="5"/>
<connect gate="G$1" pin="V+" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Good"/>
<attribute name="DESCRIPTION" value=" 0.9-Ohm Dual SPST Analog Switch 5-V/3.3-V 2-Channel Analog Switch 8-VSSOP -40 to 85 "/>
<attribute name="MF" value="Texas Instruments"/>
<attribute name="MP" value="TS5A23167DCUR"/>
<attribute name="PACKAGE" value="VFSOP-8 Texas Instruments"/>
<attribute name="PRICE" value="0.46 USD"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="TS5A2316XDCUR" deviceset="TS5A23167DCUR" device=""/>
<part name="JP1" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X4" device="" package3d_urn="urn:adsk.eagle:package:22407/2"/>
<part name="JP2" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X4" device="" package3d_urn="urn:adsk.eagle:package:22407/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="50.8" y="58.42"/>
<instance part="JP1" gate="A" x="15.24" y="58.42" rot="R180"/>
<instance part="JP2" gate="A" x="91.44" y="55.88"/>
</instances>
<busses>
</busses>
<nets>
<net name="NO1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NC1"/>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="73.66" y1="60.96" x2="88.9" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="COM1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="COM1"/>
<wire x1="33.02" y1="60.96" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<wire x1="33.02" y1="68.58" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="76.2" y1="58.42" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IN2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IN2"/>
<wire x1="33.02" y1="45.72" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
<wire x1="33.02" y1="38.1" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
<wire x1="78.74" y1="38.1" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="78.74" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="73.66" y1="45.72" x2="81.28" y2="45.72" width="0.1524" layer="91"/>
<wire x1="81.28" y1="45.72" x2="81.28" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="4"/>
<wire x1="81.28" y1="53.34" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="NO2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NC2"/>
<wire x1="73.66" y1="55.88" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="55.88" x2="76.2" y2="35.56" width="0.1524" layer="91"/>
<wire x1="76.2" y1="35.56" x2="22.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="22.86" y1="35.56" x2="22.86" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="22.86" y1="53.34" x2="17.78" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="COM2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="COM2"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="33.02" y1="55.88" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="IN1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="IN1"/>
<wire x1="33.02" y1="48.26" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
<wire x1="30.48" y1="48.26" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="30.48" y1="58.42" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="V+"/>
<wire x1="73.66" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<wire x1="83.82" y1="48.26" x2="83.82" y2="40.64" width="0.1524" layer="91"/>
<wire x1="83.82" y1="40.64" x2="25.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="25.4" y1="40.64" x2="25.4" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="25.4" y1="60.96" x2="17.78" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
