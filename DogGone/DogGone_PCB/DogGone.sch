<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
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
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_A_L">
<frame x1="0" y1="0" x2="279.4" y2="215.9" columns="6" rows="5" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_A_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt; A Size , 8 1/2 x 11 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_A_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="172.72" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="1206">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
</package>
<package name="LD260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
</package>
<package name="LED2X5">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
2 x 5 mm, rectangle</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="-0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="0" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-0.254" x2="1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.762" x2="0.9398" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.6096" x2="1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.651" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-0.762" x2="1.4478" y2="-0.6096" width="0.1524" layer="51"/>
<wire x1="1.4478" y1="-0.6096" x2="1.651" y2="-0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.413" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.159" y1="-1.27" x2="2.413" y2="1.27" layer="21"/>
</package>
<package name="LED3MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
3 mm, round</description>
<wire x1="1.5748" y1="-1.27" x2="1.5748" y2="1.27" width="0.254" layer="51"/>
<wire x1="-1.524" y1="0" x2="-1.1708" y2="0.9756" width="0.1524" layer="51" curve="-39.80361"/>
<wire x1="-1.524" y1="0" x2="-1.1391" y2="-1.0125" width="0.1524" layer="51" curve="41.633208"/>
<wire x1="1.1571" y1="0.9918" x2="1.524" y2="0" width="0.1524" layer="51" curve="-40.601165"/>
<wire x1="1.1708" y1="-0.9756" x2="1.524" y2="0" width="0.1524" layer="51" curve="39.80361"/>
<wire x1="0" y1="1.524" x2="1.2401" y2="0.8858" width="0.1524" layer="21" curve="-54.461337"/>
<wire x1="-1.2192" y1="0.9144" x2="0" y2="1.524" width="0.1524" layer="21" curve="-53.130102"/>
<wire x1="0" y1="-1.524" x2="1.203" y2="-0.9356" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-1.203" y1="-0.9356" x2="0" y2="-1.524" width="0.1524" layer="21" curve="52.126876"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="-1.016" x2="1.016" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0" y1="2.032" x2="1.561" y2="1.3009" width="0.254" layer="21" curve="-50.193108"/>
<wire x1="-1.7929" y1="0.9562" x2="0" y2="2.032" width="0.254" layer="21" curve="-61.926949"/>
<wire x1="0" y1="-2.032" x2="1.5512" y2="-1.3126" width="0.254" layer="21" curve="49.763022"/>
<wire x1="-1.7643" y1="-1.0082" x2="0" y2="-2.032" width="0.254" layer="21" curve="60.255215"/>
<wire x1="-2.032" y1="0" x2="-1.7891" y2="0.9634" width="0.254" layer="51" curve="-28.301701"/>
<wire x1="-2.032" y1="0" x2="-1.7306" y2="-1.065" width="0.254" layer="51" curve="31.60822"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="1.905" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.905" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED5MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LSU260">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
1 mm, round, Siemens</description>
<wire x1="0" y1="-0.508" x2="-1.143" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.508" x2="-1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.508" x2="0" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="-0.254" x2="-1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.397" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.254" x2="-1.143" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.254" x2="1.397" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="-0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.397" y1="0.254" x2="0.508" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.381" x2="0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-0.508" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-0.381" x2="-0.254" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.381" x2="0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.508" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0.381" x2="-0.254" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.254" x2="0.254" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.254" y1="0" x2="0" y2="0.254" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-0.381" x2="0.381" y2="0.381" width="0.1524" layer="21" curve="90"/>
<circle x="0" y="0" radius="0.508" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="0.8382" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.8542" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.397" y1="-0.254" x2="-1.143" y2="0.254" layer="51"/>
<rectangle x1="0.508" y1="-0.254" x2="1.397" y2="0.254" layer="51"/>
</package>
<package name="LZR181">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
1 LED, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-0.8678" y1="0.7439" x2="0" y2="1.143" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="0" y1="1.143" x2="0.8678" y2="0.7439" width="0.1524" layer="21" curve="-49.396139"/>
<wire x1="-0.8678" y1="-0.7439" x2="0" y2="-1.143" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0" y1="-1.143" x2="0.8678" y2="-0.7439" width="0.1524" layer="21" curve="49.396139"/>
<wire x1="0.8678" y1="0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="0.8678" y1="-0.7439" x2="1.143" y2="0" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="0.7439" width="0.1524" layer="51" curve="-40.604135"/>
<wire x1="-1.143" y1="0" x2="-0.8678" y2="-0.7439" width="0.1524" layer="51" curve="40.604135"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.27" y1="-0.889" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.27" y2="0.254" layer="51"/>
</package>
<package name="Q62902-B152">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-2.9718" y1="-1.8542" x2="-2.9718" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="-0.254" x2="-2.9718" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="2.9718" y1="-1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="-1.8542" x2="-2.54" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.1082" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.1082" y1="1.8542" x2="2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.54" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.8542" x2="-2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.8542" x2="-2.9718" y2="1.8542" width="0.1524" layer="21"/>
<wire x1="-2.9718" y1="0.254" x2="-2.9718" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-1.1486" y1="0.8814" x2="0" y2="1.4478" width="0.1524" layer="21" curve="-52.498642"/>
<wire x1="0" y1="1.4478" x2="1.1476" y2="0.8827" width="0.1524" layer="21" curve="-52.433716"/>
<wire x1="-1.1351" y1="-0.8987" x2="0" y2="-1.4478" width="0.1524" layer="21" curve="51.629985"/>
<wire x1="0" y1="-1.4478" x2="1.1305" y2="-0.9044" width="0.1524" layer="21" curve="51.339172"/>
<wire x1="1.1281" y1="-0.9074" x2="1.4478" y2="0" width="0.1524" layer="51" curve="38.811177"/>
<wire x1="1.1401" y1="0.8923" x2="1.4478" y2="0" width="0.1524" layer="51" curve="-38.048073"/>
<wire x1="-1.4478" y1="0" x2="-1.1305" y2="-0.9044" width="0.1524" layer="51" curve="38.659064"/>
<wire x1="-1.4478" y1="0" x2="-1.1456" y2="0.8853" width="0.1524" layer="51" curve="-37.696376"/>
<wire x1="0" y1="1.7018" x2="1.4674" y2="0.8618" width="0.1524" layer="21" curve="-59.573488"/>
<wire x1="-1.4618" y1="0.8714" x2="0" y2="1.7018" width="0.1524" layer="21" curve="-59.200638"/>
<wire x1="0" y1="-1.7018" x2="1.4571" y2="-0.8793" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.4571" y1="-0.8793" x2="0" y2="-1.7018" width="0.1524" layer="21" curve="58.891781"/>
<wire x1="-1.7018" y1="0" x2="-1.4447" y2="0.8995" width="0.1524" layer="51" curve="-31.907626"/>
<wire x1="-1.7018" y1="0" x2="-1.4502" y2="-0.8905" width="0.1524" layer="51" curve="31.551992"/>
<wire x1="1.4521" y1="0.8874" x2="1.7018" y2="0" width="0.1524" layer="51" curve="-31.429586"/>
<wire x1="1.4459" y1="-0.8975" x2="1.7018" y2="0" width="0.1524" layer="51" curve="31.828757"/>
<wire x1="-2.1082" y1="1.8542" x2="-2.1082" y2="-1.8542" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<wire x1="2.9718" y1="1.8542" x2="2.9718" y2="-1.8542" width="0.1524" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.905" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B153">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-5.5118" y1="-3.5052" x2="-5.5118" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="-0.254" x2="-5.5118" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="-3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="-3.5052" x2="-5.08" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-4.6482" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-4.6482" y1="3.5052" x2="5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.08" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.5052" x2="-5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.5052" x2="-5.5118" y2="3.5052" width="0.1524" layer="21"/>
<wire x1="-5.5118" y1="0.254" x2="-5.5118" y2="-0.254" width="0.1524" layer="21" curve="180"/>
<wire x1="-4.6482" y1="3.5052" x2="-4.6482" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="5.5118" y1="3.5052" x2="5.5118" y2="-3.5052" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.2129" y1="0.0539" x2="-0.0539" y2="2.2129" width="0.1524" layer="51" curve="-90.010616"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-4.191" y="3.937" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="Q62902-B155">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="-1.27" y1="-3.048" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="10.033" y1="3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="2.921" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="2.921" y2="3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-3.048" x2="10.033" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="2.921" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-5.207" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.54" x2="-5.207" y2="-2.54" width="0.1524" layer="21" curve="180"/>
<wire x1="-6.985" y1="0.635" x2="-6.985" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.397" x2="-6.096" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="1.905" x2="-5.207" y2="-1.905" width="0.1524" layer="21"/>
<pad name="K" x="7.62" y="1.27" drill="0.8128" shape="long"/>
<pad name="A" x="7.62" y="-1.27" drill="0.8128" shape="long"/>
<text x="3.302" y="-2.794" size="1.016" layer="21" ratio="14">A+</text>
<text x="3.302" y="1.778" size="1.016" layer="21" ratio="14">K-</text>
<text x="11.684" y="-2.794" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.635" y="-4.445" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.921" y1="1.016" x2="6.731" y2="1.524" layer="21"/>
<rectangle x1="2.921" y1="-1.524" x2="6.731" y2="-1.016" layer="21"/>
<hole x="0" y="0" drill="0.8128"/>
</package>
<package name="Q62902-B156">
<description>&lt;b&gt;LED HOLDER&lt;/b&gt;&lt;p&gt;
Siemens</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0.0539" y1="-2.2129" x2="2.2129" y2="-0.0539" width="0.1524" layer="51" curve="90.005308"/>
<wire x1="2.54" y1="3.81" x2="3.81" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.302" x2="-2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-3.302" x2="-2.54" y2="-3.302" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="3.175" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="4.0894" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.7846" y="-5.3594" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.556" y="-3.302" size="1.016" layer="21" ratio="14">+</text>
<text x="2.794" y="-3.302" size="1.016" layer="21" ratio="14">-</text>
</package>
<package name="SFH480">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SFH482">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="U57X32">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
rectangle, 5.7 x 3.2 mm</description>
<wire x1="-3.175" y1="1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="3.175" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.905" x2="-3.175" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="2.667" y2="1.397" width="0.1524" layer="21"/>
<wire x1="2.667" y1="-1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.397" x2="-2.667" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="2.54" y2="1.016" width="0.1524" layer="51"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="2.54" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="2.54" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="1.27" x2="-1.778" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.27" x2="1.778" y2="-1.27" width="0.1524" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="3.683" y="0.254" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.683" y="-1.524" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="IRL80A">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
IR transmitter Siemens</description>
<wire x1="0.889" y1="2.286" x2="0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.762" x2="0.889" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.635" x2="0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-1.778" x2="0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-2.286" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="-0.889" y2="1.778" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.762" x2="-0.889" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-1.778" x2="-0.889" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="2.286" x2="0.889" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-0.762" x2="-0.889" y2="0.762" width="0.1524" layer="21" curve="-180"/>
<wire x1="-1.397" y1="0.254" x2="-1.397" y2="-0.254" width="0.0508" layer="21"/>
<wire x1="-1.143" y1="0.508" x2="-1.143" y2="-0.508" width="0.0508" layer="21"/>
<pad name="K" x="0" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="A" x="0" y="-1.27" drill="0.8128" shape="octagon"/>
<text x="1.27" y="0.381" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="P-LCC-2">
<description>&lt;b&gt;TOPLED® High-optical Power LED (HOP)&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... ls_t675.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="C" x="0" y="-2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.75" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="2.54" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-2.25" x2="1.3" y2="-0.75" layer="31"/>
<rectangle x1="-1.3" y1="0.75" x2="1.3" y2="2.25" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.4" y1="0.65" x2="1.4" y2="2.35" layer="29"/>
<rectangle x1="-1.4" y1="-2.35" x2="1.4" y2="-0.65" layer="29"/>
</package>
<package name="OSRAM-MINI-TOP-LED">
<description>&lt;b&gt;BLUE LINETM Hyper Mini TOPLED® Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LB M676.pdf</description>
<wire x1="-0.6" y1="0.9" x2="-0.6" y2="-0.7" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="-0.9" x2="0.6" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="-0.9" x2="0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="0.6" y1="0.9" x2="-0.6" y2="0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.95" x2="-0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="1.1" x2="0.45" y2="1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="1.1" x2="0.45" y2="0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="-0.7" x2="-0.4" y2="-0.9" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-0.9" x2="-0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="-1.1" x2="0.45" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.45" y1="-1.1" x2="0.45" y2="-0.95" width="0.1016" layer="51"/>
<smd name="A" x="0" y="2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-2.6" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="1.905" size="1.27" layer="21">A</text>
<text x="-0.635" y="-3.175" size="1.27" layer="21">C</text>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.5" y1="0.6" x2="0.5" y2="1.4" layer="29"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-0.6" layer="29"/>
<rectangle x1="-0.15" y1="-0.6" x2="0.15" y2="-0.3" layer="51"/>
<rectangle x1="-0.45" y1="0.65" x2="0.45" y2="1.35" layer="31"/>
<rectangle x1="-0.45" y1="-1.35" x2="0.45" y2="-0.65" layer="31"/>
</package>
<package name="OSRAM-SIDELED">
<description>&lt;b&gt;Super SIDELED® High-Current LED&lt;/b&gt;&lt;p&gt;
LG A672, LP A672 &lt;br&gt;
Source: http://www.osram.convergy.de/ ... LG_LP_A672.pdf (2004.05.13)</description>
<wire x1="-1.85" y1="-2.05" x2="-1.85" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="-0.75" x2="-1.7" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="-0.75" x2="-1.7" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.7" y1="0.75" x2="-1.85" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="0.75" x2="-1.85" y2="2.05" width="0.1016" layer="51"/>
<wire x1="-1.85" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="2.05" x2="0.9" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="-1.85" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="0.9" y1="-2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="-2.05" x2="1.85" y2="-1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="-1.85" x2="1.85" y2="1.85" width="0.1016" layer="51"/>
<wire x1="1.85" y1="1.85" x2="1.05" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="0.9" y2="2.05" width="0.1016" layer="51"/>
<wire x1="1.05" y1="2.05" x2="1.05" y2="-2.05" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.9" x2="-0.55" y2="0.9" width="0.1016" layer="51" curve="-167.319617"/>
<wire x1="-0.55" y1="-0.9" x2="0.85" y2="-1.2" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.55" y1="0.9" x2="0.85" y2="1.2" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="-2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="0.635" y="-3.175" size="1.27" layer="21" rot="R90">C</text>
<text x="0.635" y="2.54" size="1.27" layer="21" rot="R90">A</text>
<text x="-2.54" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1" y1="-2.2" x2="2.1" y2="-0.4" layer="29"/>
<rectangle x1="-2.1" y1="0.4" x2="2.1" y2="2.2" layer="29"/>
<rectangle x1="-1.9" y1="-2.1" x2="1.9" y2="-0.6" layer="31"/>
<rectangle x1="-1.9" y1="0.6" x2="1.9" y2="2.1" layer="31"/>
<rectangle x1="-1.85" y1="-2.05" x2="-0.7" y2="-1" layer="51"/>
</package>
<package name="SMART-LED">
<description>&lt;b&gt;SmartLEDTM Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY L896.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="A" x="0" y="0.725" dx="0.35" dy="0.35" layer="1"/>
<smd name="B" x="0" y="-0.725" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-0.635" size="1.016" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.016" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
</package>
<package name="P-LCC-2-TOPLED-RG">
<description>&lt;b&gt;Hyper TOPLED® RG Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY T776.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1.1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1.1" y1="1.6" x2="-1.1" y2="2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="2.45" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1.1" y1="-1.6" x2="-1.1" y2="-2.45" width="0.1016" layer="51"/>
<wire x1="1.1" y1="-2.45" x2="1.1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="21"/>
<smd name="C" x="0" y="-3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="3.5" dx="4" dy="4" layer="1" stop="no" cream="no"/>
<text x="-2.54" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-0.635" y="3.29" size="1.27" layer="21">A</text>
<text x="-0.635" y="-4.56" size="1.27" layer="21">C</text>
<rectangle x1="-1.3" y1="-3" x2="1.3" y2="-1.5" layer="31"/>
<rectangle x1="-1.3" y1="1.5" x2="1.3" y2="3" layer="31"/>
<rectangle x1="-0.25" y1="-0.25" x2="0.25" y2="0.25" layer="21"/>
<rectangle x1="-1.15" y1="2.4" x2="1.15" y2="2.7" layer="51"/>
<rectangle x1="-1.15" y1="-2.7" x2="1.15" y2="-2.4" layer="51"/>
<rectangle x1="-1.5" y1="1.5" x2="1.5" y2="3.2" layer="29"/>
<rectangle x1="-1.5" y1="-3.2" x2="1.5" y2="-1.5" layer="29"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="MICRO-SIDELED">
<description>&lt;b&gt;Hyper Micro SIDELED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LS_LY Y876.pdf</description>
<wire x1="0.65" y1="1.1" x2="-0.1" y2="1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.35" y2="1" width="0.1016" layer="51"/>
<wire x1="-0.35" y1="1" x2="-0.35" y2="-0.9" width="0.1016" layer="21"/>
<wire x1="-0.35" y1="-0.9" x2="-0.1" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="-0.1" y1="-1.1" x2="0.65" y2="-1.1" width="0.1016" layer="51"/>
<wire x1="0.65" y1="-1.1" x2="0.65" y2="1.1" width="0.1016" layer="21"/>
<wire x1="0.6" y1="0.9" x2="0.25" y2="0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="0.7" x2="0.25" y2="-0.7" width="0.0508" layer="21"/>
<wire x1="0.25" y1="-0.7" x2="0.6" y2="-0.9" width="0.0508" layer="21"/>
<smd name="A" x="0" y="1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="C" x="0" y="-1.95" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.4" y1="1.1" x2="0.4" y2="1.8" layer="29"/>
<rectangle x1="-0.4" y1="-1.8" x2="0.4" y2="-1.1" layer="29"/>
<rectangle x1="-0.35" y1="-1.75" x2="0.35" y2="-1.15" layer="31"/>
<rectangle x1="-0.35" y1="1.15" x2="0.35" y2="1.75" layer="31"/>
<rectangle x1="-0.125" y1="1.125" x2="0.125" y2="1.75" layer="51"/>
<rectangle x1="-0.125" y1="-1.75" x2="0.125" y2="-1.125" layer="51"/>
</package>
<package name="P-LCC-4">
<description>&lt;b&gt;Power TOPLED®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LA_LO_LA_LY E67B.pdf</description>
<wire x1="-1.4" y1="-1.05" x2="-1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="-1.6" x2="-1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-0.85" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="1" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1" y1="-1.6" x2="1.4" y2="-1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="-1.6" x2="1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.4" y1="1.6" x2="1.1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="1.1" y1="1.6" x2="-1" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1.4" y2="1.6" width="0.2032" layer="51"/>
<wire x1="-1" y1="1.6" x2="-1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="1.8" x2="-0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="1.8" x2="-0.5" y2="1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.65" x2="0.5" y2="1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="1.8" x2="1.1" y2="1.8" width="0.1016" layer="51"/>
<wire x1="1.1" y1="1.8" x2="1.1" y2="1.6" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.6" x2="-1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-1" y1="-1.8" x2="-0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="-0.5" y1="-1.8" x2="-0.5" y2="-1.65" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.65" x2="0.5" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="0.5" y1="-1.8" x2="1" y2="-1.8" width="0.1016" layer="51"/>
<wire x1="1" y1="-1.8" x2="1" y2="-1.6" width="0.1016" layer="51"/>
<wire x1="-0.85" y1="-1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<wire x1="-1.4" y1="1.6" x2="-1.4" y2="-1.05" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.1" width="0.2032" layer="51"/>
<smd name="A" x="-2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@3" x="2" y="3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@4" x="2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="-2" y="-3.15" dx="3.3" dy="4.8" layer="1" stop="no" cream="no"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.27" layer="21">C</text>
<text x="-1.905" y="2.54" size="1.27" layer="21">A</text>
<text x="1.27" y="2.54" size="1.27" layer="21">C</text>
<text x="1.27" y="-3.81" size="1.27" layer="21">C</text>
<rectangle x1="-1.15" y1="0.75" x2="-0.35" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="0.75" x2="1.15" y2="1.85" layer="29"/>
<rectangle x1="0.35" y1="-1.85" x2="1.15" y2="-0.75" layer="29"/>
<rectangle x1="-1.15" y1="-1.85" x2="-0.35" y2="-0.75" layer="29"/>
<rectangle x1="-1.1" y1="-1.8" x2="-0.4" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="-1.8" x2="1.1" y2="-0.8" layer="31"/>
<rectangle x1="0.4" y1="0.8" x2="1.1" y2="1.8" layer="31"/>
<rectangle x1="-1.1" y1="0.8" x2="-0.4" y2="1.8" layer="31"/>
<rectangle x1="-0.2" y1="-0.2" x2="0.2" y2="0.2" layer="21"/>
</package>
<package name="CHIP-LED0603">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB Q993&lt;br&gt;
Source: http://www.osram.convergy.de/ ... Lb_q993.pdf</description>
<wire x1="-0.4" y1="0.45" x2="-0.4" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.45" x2="0.4" y2="-0.45" width="0.1016" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.45" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="0.45" y2="-0.45" layer="51"/>
<rectangle x1="-0.45" y1="0" x2="-0.3" y2="0.3" layer="21"/>
<rectangle x1="0.3" y1="0" x2="0.45" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
</package>
<package name="CHIP-LED0805">
<description>&lt;b&gt;Hyper CHIPLED Hyper-Bright LED&lt;/b&gt;&lt;p&gt;
LB R99A&lt;br&gt;
Source: http://www.osram.convergy.de/ ... lb_r99a.pdf</description>
<wire x1="-0.625" y1="0.45" x2="-0.625" y2="-0.45" width="0.1016" layer="51"/>
<wire x1="0.625" y1="0.45" x2="0.625" y2="-0.475" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.675" y1="0" x2="-0.525" y2="0.3" layer="21"/>
<rectangle x1="0.525" y1="0" x2="0.675" y2="0.3" layer="21"/>
<rectangle x1="-0.15" y1="0" x2="0.15" y2="0.3" layer="21"/>
<rectangle x1="-0.675" y1="0.45" x2="0.675" y2="1.05" layer="51"/>
<rectangle x1="-0.675" y1="-1.05" x2="0.675" y2="-0.45" layer="51"/>
</package>
<package name="MINI-TOPLED-SANTANA">
<description>&lt;b&gt;Mini TOPLED Santana®&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG M470.pdf</description>
<wire x1="0.7" y1="-1" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.35" y1="-1" x2="-0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="-1" x2="-0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="-0.7" y1="1" x2="0.7" y2="1" width="0.1016" layer="21"/>
<wire x1="0.7" y1="1" x2="0.7" y2="-0.65" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.7" y2="-1" width="0.1016" layer="21"/>
<wire x1="0.45" y1="-0.7" x2="-0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="-0.7" x2="-0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="-0.45" y1="0.7" x2="0.45" y2="0.7" width="0.1016" layer="21"/>
<wire x1="0.45" y1="0.7" x2="0.45" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="0.7" y1="-0.65" x2="0.35" y2="-1" width="0.1016" layer="21"/>
<smd name="C" x="0" y="-2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="2.2" dx="1.6" dy="1.6" layer="1" stop="no" cream="no"/>
<text x="-1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.905" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.55" y1="1.5" x2="0.55" y2="2.1" layer="29"/>
<rectangle x1="-0.55" y1="-2.1" x2="0.55" y2="-1.5" layer="29"/>
<rectangle x1="-0.5" y1="-2.05" x2="0.5" y2="-1.55" layer="31"/>
<rectangle x1="-0.5" y1="1.55" x2="0.5" y2="2.05" layer="31"/>
<rectangle x1="-0.2" y1="-0.4" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.5" y1="-2.1" x2="0.5" y2="-1.4" layer="51"/>
<rectangle x1="-0.5" y1="1.4" x2="0.5" y2="2.05" layer="51"/>
<rectangle x1="-0.5" y1="1" x2="0.5" y2="1.4" layer="21"/>
<rectangle x1="-0.5" y1="-1.4" x2="0.5" y2="-1.05" layer="21"/>
<hole x="0" y="0" drill="2.7"/>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_R971.pdf</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.1" y1="0" x2="0.1" y2="0.2" layer="21"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.8" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_1206">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY N971.pdf</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.1016" layer="51"/>
<smd name="C" x="0" y="1.75" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.75" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="2.54" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
<rectangle x1="-0.85" y1="0.35" x2="-0.525" y2="0.775" layer="21"/>
<rectangle x1="0.525" y1="0.35" x2="0.85" y2="0.775" layer="21"/>
<rectangle x1="-0.175" y1="0" x2="0.175" y2="0.35" layer="21"/>
</package>
<package name="CHIPLED_0603">
<description>&lt;b&gt;CHIPLED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de/ ... LG_LY Q971.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
</package>
<package name="CHIPLED-0603-TTW">
<description>&lt;b&gt;CHIPLED-0603&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.125" y1="0" x2="0.125" y2="0.25" layer="21"/>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.4" y1="0.625" x2="0.4" y2="1.125" layer="29"/>
<rectangle x1="-0.4" y1="-1.125" x2="0.4" y2="-0.625" layer="29"/>
<rectangle x1="-0.175" y1="-0.675" x2="0.175" y2="-0.325" layer="29"/>
</package>
<package name="SMARTLED-TTW">
<description>&lt;b&gt;SmartLED TTW&lt;/b&gt;&lt;p&gt;
Recommended Solder Pad useable for SmartLEDTM and Chipled - Package 0603&lt;br&gt;
Package able to withstand TTW-soldering heat&lt;br&gt;
Package suitable for TTW-soldering&lt;br&gt;
Source: http://www.osram.convergy.de/ ... LO_LS_LY L89K.pdf</description>
<wire x1="-0.35" y1="0.6" x2="0.35" y2="0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.35" y1="0.6" x2="0.35" y2="-0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.6" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="0.15" y1="-0.6" x2="-0.35" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<wire x1="-0.35" y1="-0.6" x2="-0.35" y2="0.6" width="0.1016" layer="21" style="shortdash"/>
<wire x1="0.35" y1="-0.4" x2="0.15" y2="-0.6" width="0.1016" layer="51" style="shortdash"/>
<smd name="C" x="0" y="0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A" x="0" y="-0.875" dx="0.8" dy="0.5" layer="1" stop="no" cream="no"/>
<smd name="A@1" x="0" y="-0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<smd name="C@1" x="0" y="0.5" dx="0.35" dy="0.35" layer="1" stop="no" cream="no"/>
<text x="-0.635" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.905" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.175" y1="0.325" x2="0.175" y2="0.7" layer="29"/>
<rectangle x1="-0.15" y1="-0.35" x2="0.15" y2="-0.05" layer="21"/>
<rectangle x1="-0.15" y1="0.6" x2="0.15" y2="0.85" layer="51"/>
<rectangle x1="-0.15" y1="-0.85" x2="0.15" y2="-0.6" layer="51"/>
<rectangle x1="-0.225" y1="0.3" x2="0.225" y2="0.975" layer="31"/>
<rectangle x1="-0.175" y1="-0.7" x2="0.175" y2="-0.325" layer="29" rot="R180"/>
<rectangle x1="-0.225" y1="-0.975" x2="0.225" y2="-0.3" layer="31" rot="R180"/>
</package>
<package name="LUMILED+">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; with cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="1">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LUMILED">
<description>&lt;b&gt;Lumileds Lighting. LUXEON®&lt;/b&gt; without cool pad&lt;p&gt;
Source: K2.pdf</description>
<wire x1="-3.575" y1="2.3375" x2="-2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="3.575" x2="2.3375" y2="3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="2.3375" x2="3.575" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="3.575" y1="-3.575" x2="-2.3375" y2="-3.575" width="0.2032" layer="21"/>
<wire x1="-2.3375" y1="-3.575" x2="-2.5" y2="-3.4125" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-3.4125" x2="-3.4125" y2="-2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="-3.4125" y1="-2.5" x2="-3.575" y2="-2.3375" width="0.2032" layer="21"/>
<wire x1="-3.575" y1="-2.3375" x2="-3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="2.3375" y1="3.575" x2="2.5" y2="3.4125" width="0.2032" layer="21"/>
<wire x1="2.5" y1="3.4125" x2="3.4125" y2="2.5" width="0.2032" layer="21" curve="167.429893"/>
<wire x1="3.4125" y1="2.5" x2="3.575" y2="2.3375" width="0.2032" layer="21"/>
<wire x1="-1.725" y1="2.225" x2="-1.0625" y2="2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<wire x1="1.725" y1="-2.225" x2="1.0625" y2="-2.5625" width="0.2032" layer="21" curve="-255.44999"/>
<circle x="0" y="0" radius="2.725" width="0.2032" layer="51"/>
<smd name="1NC" x="-5.2" y="1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="2+" x="-5.2" y="-1.15" dx="2.9" dy="1.7" layer="1"/>
<smd name="3NC" x="5.2" y="-1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<smd name="4-" x="5.2" y="1.15" dx="2.9" dy="1.7" layer="1" rot="R180"/>
<text x="-3.175" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.975" y1="0.575" x2="-3.625" y2="1.6" layer="51"/>
<rectangle x1="-5.975" y1="-1.6" x2="-3.625" y2="-0.575" layer="51"/>
<rectangle x1="3.625" y1="-1.6" x2="5.975" y2="-0.575" layer="51" rot="R180"/>
<rectangle x1="3.625" y1="0.575" x2="5.975" y2="1.6" layer="51" rot="R180"/>
<polygon width="0.4064" layer="29">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
<polygon width="0.4064" layer="31">
<vertex x="2.3383" y="1.35"/>
<vertex x="0" y="2.7"/>
<vertex x="-2.3383" y="1.35"/>
<vertex x="-2.3383" y="-1.35"/>
<vertex x="0" y="-2.7"/>
<vertex x="2.3383" y="-1.35"/>
</polygon>
</package>
<package name="LED10MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
10 mm, round</description>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.254" layer="21" curve="-306.869898"/>
<wire x1="4.445" y1="0" x2="0" y2="-4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="3.81" y1="0" x2="0" y2="-3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="3.175" y1="0" x2="0" y2="-3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="-4.445" y1="0" x2="0" y2="4.445" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.81" y1="0" x2="0" y2="3.81" width="0.127" layer="21" curve="-90"/>
<wire x1="-3.175" y1="0" x2="0" y2="3.175" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.08" width="0.127" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="1.6764" shape="square"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="1.6764" shape="octagon"/>
<text x="6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="6.35" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="KA-3528ASYC">
<description>&lt;b&gt;SURFACE MOUNT LED LAMP&lt;/b&gt; 3.5x2.8mm&lt;p&gt;
Source: http://www.kingbright.com/manager/upload/pdf/KA-3528ASYC(Ver1189474662.1)</description>
<wire x1="-1.55" y1="1.35" x2="1.55" y2="1.35" width="0.1016" layer="21"/>
<wire x1="1.55" y1="1.35" x2="1.55" y2="-1.35" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-1.35" x2="-1.55" y2="-1.35" width="0.1016" layer="21"/>
<wire x1="-1.55" y1="-1.35" x2="-1.55" y2="1.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="0.95" x2="0.65" y2="0.95" width="0.1016" layer="21" curve="-68.40813"/>
<wire x1="0.65" y1="-0.95" x2="-0.65" y2="-0.95" width="0.1016" layer="21" curve="-68.40813"/>
<circle x="0" y="0" radius="1.15" width="0.1016" layer="51"/>
<smd name="A" x="-1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<smd name="C" x="1.55" y="0" dx="1.5" dy="2.2" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.75" y1="0.6" x2="-1.6" y2="1.1" layer="51"/>
<rectangle x1="-1.75" y1="-1.1" x2="-1.6" y2="-0.6" layer="51"/>
<rectangle x1="1.6" y1="-1.1" x2="1.75" y2="-0.6" layer="51" rot="R180"/>
<rectangle x1="1.6" y1="0.6" x2="1.75" y2="1.1" layer="51" rot="R180"/>
<polygon width="0.1016" layer="51">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-0.625"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
<polygon width="0.1016" layer="21">
<vertex x="1.55" y="-1.35"/>
<vertex x="1.55" y="-1.175"/>
<vertex x="1" y="-1.175"/>
<vertex x="0.825" y="-1.35"/>
</polygon>
</package>
<package name="SML0805">
<description>&lt;b&gt;SML0805-2CW-TR (0805 PROFILE)&lt;/b&gt; COOL WHITE&lt;p&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0093.pdf</description>
<wire x1="-0.95" y1="-0.55" x2="0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="-0.55" x2="0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="0.95" y1="0.55" x2="-0.95" y2="0.55" width="0.1016" layer="51"/>
<wire x1="-0.95" y1="0.55" x2="-0.95" y2="-0.55" width="0.1016" layer="51"/>
<wire x1="-0.175" y1="-0.025" x2="0" y2="0.15" width="0.0634" layer="21"/>
<wire x1="0" y1="0.15" x2="0.15" y2="0" width="0.0634" layer="21"/>
<wire x1="0.15" y1="0" x2="-0.025" y2="-0.175" width="0.0634" layer="21"/>
<wire x1="-0.025" y1="-0.175" x2="-0.175" y2="-0.025" width="0.0634" layer="21"/>
<circle x="-0.275" y="0.4" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="1.05" y="0" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SML1206">
<description>&lt;b&gt;SML10XXKH-TR (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;SML10R3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10E3KH-TR&lt;/td&gt;&lt;td&gt;SUPER REDSUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10O3KH-TR&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PY3KH-TR&lt;/td&gt;&lt;td&gt;PURE YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10OY3KH-TR&lt;/td&gt;&lt;td&gt;ULTRA YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10AG3KH-TR&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10BG3KH-TR&lt;/td&gt;&lt;td&gt;BLUE GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10PB1KH-TR&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;SML10CW1KH-TR&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;

Source: http://www.ledtronics.com/ds/smd-1206/dstr0094.PDF</description>
<wire x1="-1.5" y1="0.5" x2="-1.5" y2="-0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="1.5" y1="-0.5" x2="1.5" y2="0.5" width="0.2032" layer="51" curve="-180"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<circle x="-0.725" y="0.525" radius="0.125" width="0" layer="21"/>
<smd name="C" x="-1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="1.75" y="0" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.5" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.5" y="-2.5" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6" y1="0.4" x2="-1.15" y2="0.8" layer="51"/>
<rectangle x1="-1.6" y1="-0.8" x2="-1.15" y2="-0.4" layer="51"/>
<rectangle x1="-1.175" y1="-0.6" x2="-1" y2="-0.275" layer="51"/>
<rectangle x1="1.15" y1="-0.8" x2="1.6" y2="-0.4" layer="51" rot="R180"/>
<rectangle x1="1.15" y1="0.4" x2="1.6" y2="0.8" layer="51" rot="R180"/>
<rectangle x1="1" y1="0.275" x2="1.175" y2="0.6" layer="51" rot="R180"/>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
</package>
<package name="SML0603">
<description>&lt;b&gt;SML0603-XXX (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;AG3K&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B1K&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R1K&lt;/td&gt;&lt;td&gt;SUPER RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R3K&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3K&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3KH&lt;/td&gt;&lt;td&gt;SOFT ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3KH&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3K&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2CW&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.3" x2="-0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.3" x2="0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.35" x2="0.2" y2="0.35" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.35" x2="0.2" y2="-0.35" width="0.1016" layer="21"/>
<smd name="C" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.4" y1="0.175" x2="0" y2="0.4" layer="51"/>
<rectangle x1="-0.25" y1="0.175" x2="0" y2="0.4" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="LED">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED" prefix="LED" uservalue="yes">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
&lt;u&gt;OSRAM&lt;/u&gt;:&lt;br&gt;

- &lt;u&gt;CHIPLED&lt;/u&gt;&lt;br&gt;
LG R971, LG N971, LY N971, LG Q971, LY Q971, LO R971, LY R971
LH N974, LH R974&lt;br&gt;
LS Q976, LO Q976, LY Q976&lt;br&gt;
LO Q996&lt;br&gt;

- &lt;u&gt;Hyper CHIPLED&lt;/u&gt;&lt;br&gt;
LW Q18S&lt;br&gt;
LB Q993, LB Q99A, LB R99A&lt;br&gt;

- &lt;u&gt;SideLED&lt;/u&gt;&lt;br&gt;
LS A670, LO A670, LY A670, LG A670, LP A670&lt;br&gt;
LB A673, LV A673, LT A673, LW A673&lt;br&gt;
LH A674&lt;br&gt;
LY A675&lt;br&gt;
LS A676, LA A676, LO A676, LY A676, LW A676&lt;br&gt;
LS A679, LY A679, LG A679&lt;br&gt;

-  &lt;u&gt;Hyper Micro SIDELED®&lt;/u&gt;&lt;br&gt;
LS Y876, LA Y876, LO Y876, LY Y876&lt;br&gt;
LT Y87S&lt;br&gt;

- &lt;u&gt;SmartLED&lt;/u&gt;&lt;br&gt;
LW L88C, LW L88S&lt;br&gt;
LB L89C, LB L89S, LG L890&lt;br&gt;
LS L89K, LO L89K, LY L89K&lt;br&gt;
LS L896, LA L896, LO L896, LY L896&lt;br&gt;

- &lt;u&gt;TOPLED&lt;/u&gt;&lt;br&gt;
LS T670, LO T670, LY T670, LG T670, LP T670&lt;br&gt;
LSG T670, LSP T670, LSY T670, LOP T670, LYG T670&lt;br&gt;
LG T671, LOG T671, LSG T671&lt;br&gt;
LB T673, LV T673, LT T673, LW T673&lt;br&gt;
LH T674&lt;br&gt;
LS T676, LA T676, LO T676, LY T676, LB T676, LH T676, LSB T676, LW T676&lt;br&gt;
LB T67C, LV T67C, LT T67C, LS T67K, LO T67K, LY T67K, LW E67C&lt;br&gt;
LS E67B, LA E67B, LO E67B, LY E67B, LB E67C, LV E67C, LT E67C&lt;br&gt;
LW T67C&lt;br&gt;
LS T679, LY T679, LG T679&lt;br&gt;
LS T770, LO T770, LY T770, LG T770, LP T770&lt;br&gt;
LB T773, LV T773, LT T773, LW T773&lt;br&gt;
LH T774&lt;br&gt;
LS E675, LA E675, LY E675, LS T675&lt;br&gt;
LS T776, LA T776, LO T776, LY T776, LB T776&lt;br&gt;
LHGB T686&lt;br&gt;
LT T68C, LB T68C&lt;br&gt;

- &lt;u&gt;Hyper Mini TOPLED®&lt;/u&gt;&lt;br&gt;
LB M676&lt;br&gt;

- &lt;u&gt;Mini TOPLED Santana®&lt;/u&gt;&lt;br&gt;
LG M470&lt;br&gt;
LS M47K, LO M47K, LY M47K
&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;

&lt;u&gt;LUXEON:&lt;/u&gt;&lt;br&gt;
- &lt;u&gt;LUMILED®&lt;/u&gt;&lt;br&gt;
LXK2-PW12-R00, LXK2-PW12-S00, LXK2-PW14-U00, LXK2-PW14-V00&lt;br&gt;
LXK2-PM12-R00, LXK2-PM12-S00, LXK2-PM14-U00&lt;br&gt;
LXK2-PE12-Q00, LXK2-PE12-R00, LXK2-PE12-S00, LXK2-PE14-T00, LXK2-PE14-U00&lt;br&gt;
LXK2-PB12-K00, LXK2-PB12-L00, LXK2-PB12-M00, LXK2-PB14-N00, LXK2-PB14-P00, LXK2-PB14-Q00&lt;br&gt;
LXK2-PR12-L00, LXK2-PR12-M00, LXK2-PR14-Q00, LXK2-PR14-R00&lt;br&gt;
LXK2-PD12-Q00, LXK2-PD12-R00, LXK2-PD12-S00&lt;br&gt;
LXK2-PH12-R00, LXK2-PH12-S00&lt;br&gt;
LXK2-PL12-P00, LXK2-PL12-Q00, LXK2-PL12-R00
&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;

&lt;u&gt;KINGBRIGHT:&lt;/U&gt;&lt;p&gt;
KA-3528ASYC&lt;br&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="SMT1206" package="1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LD260" package="LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR2X5" package="LED2X5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3MM" package="LED3MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="LED5MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LSU260" package="LSU260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LZR181" package="LZR181">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B152" package="Q62902-B152">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B153" package="Q62902-B153">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B155" package="Q62902-B155">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B156" package="Q62902-B156">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH480" package="SFH480">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SFH482" package="SFH482">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SQR5.7X3.2" package="U57X32">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="IRL80A" package="IRL80A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2" package="P-LCC-2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MINI-TOP" package="OSRAM-MINI-TOP-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIDELED" package="OSRAM-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMART-LED" package="SMART-LED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-2-BACK" package="P-LCC-2-TOPLED-RG">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MICRO-SIDELED" package="MICRO-SIDELED">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="P-LCC-4" package="P-LCC-4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C@4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0603" package="CHIP-LED0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIP-LED0805" package="CHIP-LED0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TOPLED-SANTANA" package="MINI-TOPLED-SANTANA">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED_0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CHIPLED-0603-TTW" package="CHIPLED-0603-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SMARTLED-TTW">
<connects>
<connect gate="G$1" pin="A" pad="A@1"/>
<connect gate="G$1" pin="C" pad="C@1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED+" package="LUMILED+">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-LUMILED" package="LUMILED">
<connects>
<connect gate="G$1" pin="A" pad="2+"/>
<connect gate="G$1" pin="C" pad="4-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10MM" package="LED10MM">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KA-3528ASYC" package="KA-3528ASYC">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SML0805" package="SML0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SML1206" package="SML1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SML0603" package="SML0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="53047-02">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
straight&lt;br&gt;
Sourcxe: http://www.molex.com/pdm_docs/sd/530470210_sd.pdf</description>
<wire x1="-2.025" y1="-1.5" x2="2.025" y2="-1.5" width="0.2032" layer="21"/>
<wire x1="2.025" y1="-1.5" x2="2.025" y2="1.5" width="0.2032" layer="21"/>
<wire x1="2.025" y1="1.5" x2="-2.025" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-2.025" y1="1.5" x2="-2.025" y2="-1.5" width="0.2032" layer="21"/>
<wire x1="-2" y1="-0.25" x2="-1.625" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="-1.625" y1="-0.25" x2="-1.625" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="1.625" y1="-0.25" x2="2" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="1.625" y1="-0.25" x2="1.625" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="-2" y1="0.375" x2="-1.625" y2="0.375" width="0.0508" layer="21"/>
<wire x1="1.625" y1="0.375" x2="2" y2="0.375" width="0.0508" layer="21"/>
<wire x1="-1.625" y1="0.375" x2="-1.625" y2="1.125" width="0.0508" layer="21"/>
<wire x1="-1.625" y1="1.125" x2="1.625" y2="1.125" width="0.0508" layer="21"/>
<wire x1="1.625" y1="1.125" x2="1.625" y2="0.375" width="0.0508" layer="21"/>
<wire x1="1.625" y1="1.125" x2="1.875" y2="1.375" width="0.0508" layer="21"/>
<wire x1="-1.625" y1="1.125" x2="-1.875" y2="1.375" width="0.0508" layer="21"/>
<pad name="1" x="0.625" y="0.45" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="2" x="-0.625" y="0.45" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<text x="-1.875" y="1.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.375" y="-3.25" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2" y1="-1.5" x2="2" y2="-1.125" layer="21"/>
</package>
<package name="53048-02">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
right angle</description>
<wire x1="-2.025" y1="-2.25" x2="-1.5" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-2.25" x2="2.025" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="2.025" y1="-2.25" x2="2.025" y2="3.125" width="0.2032" layer="21"/>
<wire x1="2.025" y1="3.125" x2="1.875" y2="3.125" width="0.2032" layer="21"/>
<wire x1="1.875" y1="3.125" x2="-1.875" y2="3.125" width="0.2032" layer="21"/>
<wire x1="-1.875" y1="3.125" x2="-2.025" y2="3.125" width="0.2032" layer="21"/>
<wire x1="-2.025" y1="3.125" x2="-2.025" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-2" y1="1.5" x2="-1.5" y2="1.5" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-1.25" y2="1.5" width="0.0508" layer="21"/>
<wire x1="-1.25" y1="1.5" x2="-1.25" y2="0.625" width="0.0508" layer="21"/>
<wire x1="-1.25" y1="0.625" x2="1.25" y2="0.625" width="0.0508" layer="21"/>
<wire x1="1.25" y1="1.5" x2="1.5" y2="1.5" width="0.0508" layer="21"/>
<wire x1="1.5" y1="1.5" x2="2" y2="1.5" width="0.0508" layer="21"/>
<wire x1="1.25" y1="1.5" x2="1.25" y2="0.625" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="-1" x2="1.5" y2="-1" width="0.2032" layer="51"/>
<wire x1="-0.875" y1="-1.5" x2="-1" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="0.375" y1="-1.5" x2="0.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="0.25" y1="-1.625" x2="-0.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-0.375" y1="-1.5" x2="-0.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-1.625" x2="1" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="0.875" y1="-1.5" x2="1" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.625" x2="-1.5" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1" x2="-1.5" y2="-1" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-1" x2="-1.5" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-1" x2="2" y2="-1" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-1" x2="1.5" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="1.5" x2="-1.5" y2="2.75" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="2.75" x2="1.5" y2="2.75" width="0.0508" layer="21"/>
<wire x1="1.5" y1="2.75" x2="1.5" y2="1.5" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="2.75" x2="-1.875" y2="3.125" width="0.0508" layer="21"/>
<wire x1="1.5" y1="2.75" x2="1.875" y2="3.125" width="0.0508" layer="21"/>
<wire x1="-0.75" y1="1.5" x2="-0.625" y2="2" width="0.2032" layer="21"/>
<wire x1="-0.625" y1="2" x2="-0.5" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.5" y1="1.5" x2="0.625" y2="2" width="0.2032" layer="21"/>
<wire x1="0.625" y1="2" x2="0.75" y2="1.5" width="0.2032" layer="21"/>
<pad name="1" x="0.625" y="-1.25" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="2" x="-0.625" y="-1.25" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<text x="-1.875" y="3.375" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="-3.875" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.875" y1="-1.5" x2="-0.375" y2="-1" layer="51"/>
<rectangle x1="0.375" y1="-1.5" x2="0.875" y2="-1" layer="51"/>
<rectangle x1="-0.875" y1="0.625" x2="-0.375" y2="1.5" layer="21"/>
<rectangle x1="0.375" y1="0.625" x2="0.875" y2="1.5" layer="21"/>
</package>
<package name="53261-02">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
SMT&lt;p&gt;
right angle</description>
<wire x1="-2.025" y1="-1.375" x2="-1.5" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-1.375" x2="1.5" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-1.375" x2="2.025" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="2.025" y1="-1.375" x2="2.025" y2="2.625" width="0.2032" layer="21"/>
<wire x1="2.025" y1="2.625" x2="1.875" y2="2.625" width="0.2032" layer="21"/>
<wire x1="1.875" y1="2.625" x2="-1.875" y2="2.625" width="0.2032" layer="21"/>
<wire x1="-1.875" y1="2.625" x2="-2.025" y2="2.625" width="0.2032" layer="21"/>
<wire x1="-2.025" y1="2.625" x2="-2.025" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-2" y1="1.625" x2="-1.5" y2="1.625" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="1.625" x2="-1.25" y2="1.625" width="0.0508" layer="21"/>
<wire x1="-1.25" y1="1.625" x2="-1.25" y2="1" width="0.0508" layer="21"/>
<wire x1="-1.25" y1="1" x2="1.25" y2="1" width="0.0508" layer="21"/>
<wire x1="1.25" y1="1.625" x2="1.5" y2="1.625" width="0.0508" layer="21"/>
<wire x1="1.5" y1="1.625" x2="2" y2="1.625" width="0.0508" layer="21"/>
<wire x1="1.25" y1="1.625" x2="1.25" y2="1" width="0.0508" layer="21"/>
<wire x1="-2" y1="-0.75" x2="-1.5" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="-0.75" x2="-1.5" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="2" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="1.5" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="1.625" x2="-1.5" y2="2.25" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="2.25" x2="1.5" y2="2.25" width="0.0508" layer="21"/>
<wire x1="1.5" y1="2.25" x2="1.5" y2="1.625" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="2.25" x2="-1.875" y2="2.625" width="0.0508" layer="21"/>
<wire x1="1.5" y1="2.25" x2="1.875" y2="2.625" width="0.0508" layer="21"/>
<wire x1="-0.875" y1="-1.25" x2="-0.875" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-0.875" y1="-0.75" x2="-0.375" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-0.375" y1="-0.75" x2="-0.375" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="0.375" y1="-1.25" x2="0.375" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="0.375" y1="-0.75" x2="0.875" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="0.875" y1="-0.75" x2="0.875" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="-2.125" y1="2.25" x2="-4" y2="2.25" width="0.2032" layer="51"/>
<wire x1="-4" y1="2.25" x2="-4" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="-4" y1="-0.75" x2="-2.125" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="2.125" y1="-0.75" x2="4" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="4" y1="-0.75" x2="4" y2="2.25" width="0.2032" layer="51"/>
<wire x1="4" y1="2.25" x2="2.125" y2="2.25" width="0.2032" layer="51"/>
<smd name="1" x="0.625" y="-2.5" dx="0.8" dy="2" layer="1"/>
<smd name="2" x="-0.625" y="-2.5" dx="0.8" dy="2" layer="1"/>
<smd name="S1" x="3.125" y="0.625" dx="2.1" dy="3" layer="1"/>
<smd name="S2" x="-3.125" y="0.625" dx="2.1" dy="3" layer="1"/>
<text x="-1.875" y="2.875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.625" y="-3" size="1.27" layer="27">&gt;VALUE</text>
<text x="2.5" y="-0.25" size="1.9304" layer="51">1</text>
<rectangle x1="-0.875" y1="1" x2="-0.375" y2="1.875" layer="21"/>
<rectangle x1="0.375" y1="1" x2="0.875" y2="1.875" layer="21"/>
</package>
<package name="53398-02">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
SMT&lt;p&gt;
straight</description>
<wire x1="-2.025" y1="-1.375" x2="-1.25" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-1.25" y1="-1.375" x2="1.25" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="1.25" y1="-1.375" x2="2.025" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="2.025" y1="-1.375" x2="2.025" y2="2.125" width="0.2032" layer="21"/>
<wire x1="2.025" y1="2.125" x2="1.875" y2="2.125" width="0.2032" layer="21"/>
<wire x1="1.875" y1="2.125" x2="-1.875" y2="2.125" width="0.2032" layer="21"/>
<wire x1="-1.875" y1="2.125" x2="-2.025" y2="2.125" width="0.2032" layer="21"/>
<wire x1="-2.025" y1="2.125" x2="-2.025" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-2" y1="1" x2="-1.5" y2="1" width="0.0508" layer="21"/>
<wire x1="1.5" y1="1" x2="2" y2="1" width="0.0508" layer="21"/>
<wire x1="-2" y1="-0.25" x2="-1.5" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="-0.25" x2="-1.5" y2="-1" width="0.0508" layer="21"/>
<wire x1="1.5" y1="-0.25" x2="2" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="1.5" y1="-0.25" x2="1.5" y2="-1" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="1" x2="-1.5" y2="1.75" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="1.75" x2="1.5" y2="1.75" width="0.0508" layer="21"/>
<wire x1="1.5" y1="1.75" x2="1.5" y2="1" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="1.75" x2="-1.875" y2="2.125" width="0.0508" layer="21"/>
<wire x1="1.5" y1="1.75" x2="1.875" y2="2.125" width="0.0508" layer="21"/>
<wire x1="-2.125" y1="2.125" x2="-4" y2="2.125" width="0.2032" layer="51"/>
<wire x1="-4" y1="2.125" x2="-4" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="-4" y1="-0.75" x2="-2.125" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="2.125" y1="-0.75" x2="4" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="4" y1="-0.75" x2="4" y2="2.125" width="0.2032" layer="51"/>
<wire x1="4" y1="2.125" x2="2.125" y2="2.125" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1" x2="-1.5" y2="-1" width="0.0508" layer="21"/>
<wire x1="-1.5" y1="-1" x2="-1.25" y2="-1" width="0.0508" layer="21"/>
<wire x1="-1.25" y1="-1" x2="-1.25" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="1.5" y1="-1" x2="2" y2="-1" width="0.0508" layer="21"/>
<wire x1="1.25" y1="-1" x2="1.5" y2="-1" width="0.0508" layer="21"/>
<wire x1="1.25" y1="-1" x2="1.25" y2="-1.375" width="0.0508" layer="21"/>
<smd name="1" x="0.625" y="-2.5" dx="0.8" dy="1.8" layer="1"/>
<smd name="2" x="-0.625" y="-2.5" dx="0.8" dy="1.8" layer="1"/>
<smd name="S1" x="3.125" y="0.625" dx="2.1" dy="3" layer="1"/>
<smd name="S2" x="-3.125" y="0.625" dx="2.1" dy="3" layer="1"/>
<text x="-3" y="2.375" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.5" y="-3.5" size="1.27" layer="27">&gt;VALUE</text>
<text x="2.5" y="-0.25" size="1.9304" layer="51">1</text>
<rectangle x1="-0.875" y1="0.375" x2="-0.375" y2="1" layer="21"/>
<rectangle x1="0.375" y1="0.375" x2="0.875" y2="1" layer="21"/>
</package>
<package name="53047-04">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
straight&lt;br&gt;
Sourcxe: http://www.molex.com/pdm_docs/sd/530470210_sd.pdf</description>
<wire x1="-3.275" y1="-1.5" x2="3.275" y2="-1.5" width="0.2032" layer="21"/>
<wire x1="3.275" y1="-1.5" x2="3.275" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3.275" y1="1.5" x2="-3.275" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-3.275" y1="1.5" x2="-3.275" y2="-1.5" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="-0.25" x2="-2.875" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="-2.875" y1="-0.25" x2="-2.875" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="2.875" y1="-0.25" x2="3.25" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="2.875" y1="-0.25" x2="2.875" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="-3.25" y1="0.375" x2="-2.875" y2="0.375" width="0.0508" layer="21"/>
<wire x1="2.875" y1="0.375" x2="3.25" y2="0.375" width="0.0508" layer="21"/>
<wire x1="-2.875" y1="0.375" x2="-2.875" y2="1.125" width="0.0508" layer="21"/>
<wire x1="-2.875" y1="1.125" x2="2.875" y2="1.125" width="0.0508" layer="21"/>
<wire x1="2.875" y1="1.125" x2="2.875" y2="0.375" width="0.0508" layer="21"/>
<wire x1="2.875" y1="1.125" x2="3.125" y2="1.375" width="0.0508" layer="21"/>
<wire x1="-2.875" y1="1.125" x2="-3.125" y2="1.375" width="0.0508" layer="21"/>
<pad name="1" x="1.875" y="0.45" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="2" x="0.625" y="0.45" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="3" x="-0.625" y="0.45" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="4" x="-1.875" y="0.45" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<text x="-3.125" y="1.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.625" y="-3.25" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.25" y1="-1.5" x2="3.25" y2="-1.125" layer="21"/>
</package>
<package name="53048-04">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
right angle</description>
<wire x1="-3.275" y1="-2.25" x2="-2.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="2.75" y1="-2.25" x2="3.275" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="3.275" y1="-2.25" x2="3.275" y2="3.125" width="0.2032" layer="21"/>
<wire x1="3.275" y1="3.125" x2="3.125" y2="3.125" width="0.2032" layer="21"/>
<wire x1="3.125" y1="3.125" x2="-3.125" y2="3.125" width="0.2032" layer="21"/>
<wire x1="-3.125" y1="3.125" x2="-3.275" y2="3.125" width="0.2032" layer="21"/>
<wire x1="-3.275" y1="3.125" x2="-3.275" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="1.5" x2="-2.75" y2="1.5" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="1.5" x2="-2.5" y2="1.5" width="0.0508" layer="21"/>
<wire x1="-2.5" y1="1.5" x2="-2.5" y2="0.625" width="0.0508" layer="21"/>
<wire x1="-2.5" y1="0.625" x2="2.5" y2="0.625" width="0.0508" layer="21"/>
<wire x1="2.5" y1="1.5" x2="2.75" y2="1.5" width="0.0508" layer="21"/>
<wire x1="2.75" y1="1.5" x2="3.25" y2="1.5" width="0.0508" layer="21"/>
<wire x1="2.5" y1="1.5" x2="2.5" y2="0.625" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="-1" x2="2.75" y2="-1" width="0.2032" layer="51"/>
<wire x1="-2.125" y1="-1.5" x2="-2.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-0.875" y1="-1.5" x2="-1" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-1" y1="-1.625" x2="-1.5" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-1.625" y1="-1.5" x2="-1.5" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="0.375" y1="-1.5" x2="0.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="0.25" y1="-1.625" x2="-0.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-0.375" y1="-1.5" x2="-0.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="1.625" y1="-1.5" x2="1.5" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-1.625" x2="1" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="0.875" y1="-1.5" x2="1" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="2.75" y1="-1.625" x2="2.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="2.125" y1="-1.5" x2="2.25" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.625" x2="-2.75" y2="-1.625" width="0.2032" layer="51"/>
<wire x1="-3.25" y1="-1" x2="-2.75" y2="-1" width="0.2032" layer="21"/>
<wire x1="-2.75" y1="-1" x2="-2.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="2.75" y1="-1" x2="3.25" y2="-1" width="0.2032" layer="21"/>
<wire x1="2.75" y1="-1" x2="2.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-2.75" y1="1.5" x2="-2.75" y2="2.75" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="2.75" x2="2.75" y2="2.75" width="0.0508" layer="21"/>
<wire x1="2.75" y1="2.75" x2="2.75" y2="1.5" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="2.75" x2="-3.125" y2="3.125" width="0.0508" layer="21"/>
<wire x1="2.75" y1="2.75" x2="3.125" y2="3.125" width="0.0508" layer="21"/>
<wire x1="-2" y1="1.5" x2="-1.875" y2="2" width="0.2032" layer="21"/>
<wire x1="-1.875" y1="2" x2="-1.75" y2="1.5" width="0.2032" layer="21"/>
<wire x1="-0.75" y1="1.5" x2="-0.625" y2="2" width="0.2032" layer="21"/>
<wire x1="-0.625" y1="2" x2="-0.5" y2="1.5" width="0.2032" layer="21"/>
<wire x1="0.5" y1="1.5" x2="0.625" y2="2" width="0.2032" layer="21"/>
<wire x1="0.625" y1="2" x2="0.75" y2="1.5" width="0.2032" layer="21"/>
<wire x1="1.75" y1="1.5" x2="1.875" y2="2" width="0.2032" layer="21"/>
<wire x1="1.875" y1="2" x2="2" y2="1.5" width="0.2032" layer="21"/>
<pad name="1" x="1.875" y="-1.25" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="2" x="0.625" y="-1.25" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="3" x="-0.625" y="-1.25" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<pad name="4" x="-1.875" y="-1.25" drill="0.5" diameter="0.6984" shape="long" rot="R90"/>
<text x="-1.875" y="3.375" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.25" y="-3.75" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.125" y1="-1.5" x2="-1.625" y2="-1" layer="51"/>
<rectangle x1="-0.875" y1="-1.5" x2="-0.375" y2="-1" layer="51"/>
<rectangle x1="0.375" y1="-1.5" x2="0.875" y2="-1" layer="51"/>
<rectangle x1="1.625" y1="-1.5" x2="2.125" y2="-1" layer="51"/>
<rectangle x1="-2.125" y1="0.625" x2="-1.625" y2="1.5" layer="21"/>
<rectangle x1="-0.875" y1="0.625" x2="-0.375" y2="1.5" layer="21"/>
<rectangle x1="0.375" y1="0.625" x2="0.875" y2="1.5" layer="21"/>
<rectangle x1="1.625" y1="0.625" x2="2.125" y2="1.5" layer="21"/>
</package>
<package name="53261-04">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
SMT&lt;p&gt;
right angle</description>
<wire x1="-3.275" y1="-1.375" x2="-2.75" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-2.75" y1="-1.375" x2="2.75" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="2.75" y1="-1.375" x2="3.275" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="3.275" y1="-1.375" x2="3.275" y2="2.625" width="0.2032" layer="21"/>
<wire x1="3.275" y1="2.625" x2="3.125" y2="2.625" width="0.2032" layer="21"/>
<wire x1="3.125" y1="2.625" x2="-3.125" y2="2.625" width="0.2032" layer="21"/>
<wire x1="-3.125" y1="2.625" x2="-3.275" y2="2.625" width="0.2032" layer="21"/>
<wire x1="-3.275" y1="2.625" x2="-3.275" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="1.625" x2="-2.75" y2="1.625" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="1.625" x2="-2.5" y2="1.625" width="0.0508" layer="21"/>
<wire x1="-2.5" y1="1.625" x2="-2.5" y2="1" width="0.0508" layer="21"/>
<wire x1="-2.5" y1="1" x2="2.5" y2="1" width="0.0508" layer="21"/>
<wire x1="2.5" y1="1.625" x2="2.75" y2="1.625" width="0.0508" layer="21"/>
<wire x1="2.75" y1="1.625" x2="3.25" y2="1.625" width="0.0508" layer="21"/>
<wire x1="2.5" y1="1.625" x2="2.5" y2="1" width="0.0508" layer="21"/>
<wire x1="-3.25" y1="-0.75" x2="-2.75" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="-0.75" x2="-2.75" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="2.75" y1="-0.75" x2="3.25" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="2.75" y1="-0.75" x2="2.75" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="1.625" x2="-2.75" y2="2.25" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="2.25" x2="2.75" y2="2.25" width="0.0508" layer="21"/>
<wire x1="2.75" y1="2.25" x2="2.75" y2="1.625" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="2.25" x2="-3.125" y2="2.625" width="0.0508" layer="21"/>
<wire x1="2.75" y1="2.25" x2="3.125" y2="2.625" width="0.0508" layer="21"/>
<wire x1="-2.125" y1="-1.25" x2="-2.125" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-2.125" y1="-0.75" x2="-1.625" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-1.625" y1="-0.75" x2="-1.625" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="-0.875" y1="-1.25" x2="-0.875" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-0.875" y1="-0.75" x2="-0.375" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="-0.375" y1="-0.75" x2="-0.375" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="0.375" y1="-1.25" x2="0.375" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="0.375" y1="-0.75" x2="0.875" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="0.875" y1="-0.75" x2="0.875" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="1.625" y1="-1.25" x2="1.625" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="1.625" y1="-0.75" x2="2.125" y2="-0.75" width="0.0508" layer="21"/>
<wire x1="2.125" y1="-0.75" x2="2.125" y2="-1.25" width="0.0508" layer="21"/>
<wire x1="-3.375" y1="2.25" x2="-5.25" y2="2.25" width="0.2032" layer="51"/>
<wire x1="-5.25" y1="2.25" x2="-5.25" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="-5.25" y1="-0.75" x2="-3.375" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="3.375" y1="-0.75" x2="5.25" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-0.75" x2="5.25" y2="2.25" width="0.2032" layer="51"/>
<wire x1="5.25" y1="2.25" x2="3.375" y2="2.25" width="0.2032" layer="51"/>
<smd name="1" x="1.875" y="-2.5" dx="0.8" dy="2" layer="1"/>
<smd name="2" x="0.625" y="-2.5" dx="0.8" dy="2" layer="1"/>
<smd name="3" x="-0.625" y="-2.5" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-1.875" y="-2.5" dx="0.8" dy="2" layer="1"/>
<smd name="S1" x="4.375" y="0.625" dx="2.1" dy="3" layer="1"/>
<smd name="S2" x="-4.375" y="0.625" dx="2.1" dy="3" layer="1"/>
<text x="-3.125" y="2.875" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.75" y="-0.5" size="1.27" layer="27">&gt;VALUE</text>
<text x="3.75" y="-0.25" size="1.9304" layer="51">1</text>
<rectangle x1="-2.125" y1="1" x2="-1.625" y2="1.875" layer="21"/>
<rectangle x1="-0.875" y1="1" x2="-0.375" y2="1.875" layer="21"/>
<rectangle x1="0.375" y1="1" x2="0.875" y2="1.875" layer="21"/>
<rectangle x1="1.625" y1="1" x2="2.125" y2="1.875" layer="21"/>
</package>
<package name="53398-04">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header&lt;p&gt;
SMT&lt;p&gt;
straight</description>
<wire x1="-3.275" y1="-1.375" x2="-2.5" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-2.5" y1="-1.375" x2="2.5" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="2.5" y1="-1.375" x2="3.275" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="3.275" y1="-1.375" x2="3.275" y2="2.125" width="0.2032" layer="21"/>
<wire x1="3.275" y1="2.125" x2="3.125" y2="2.125" width="0.2032" layer="21"/>
<wire x1="3.125" y1="2.125" x2="-3.125" y2="2.125" width="0.2032" layer="21"/>
<wire x1="-3.125" y1="2.125" x2="-3.275" y2="2.125" width="0.2032" layer="21"/>
<wire x1="-3.275" y1="2.125" x2="-3.275" y2="-1.375" width="0.2032" layer="21"/>
<wire x1="-3.25" y1="1" x2="-2.75" y2="1" width="0.0508" layer="21"/>
<wire x1="2.75" y1="1" x2="3.25" y2="1" width="0.0508" layer="21"/>
<wire x1="-3.25" y1="-0.25" x2="-2.75" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="-0.25" x2="-2.75" y2="-1" width="0.0508" layer="21"/>
<wire x1="2.75" y1="-0.25" x2="3.25" y2="-0.25" width="0.0508" layer="21"/>
<wire x1="2.75" y1="-0.25" x2="2.75" y2="-1" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="1" x2="-2.75" y2="1.75" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="1.75" x2="2.75" y2="1.75" width="0.0508" layer="21"/>
<wire x1="2.75" y1="1.75" x2="2.75" y2="1" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="1.75" x2="-3.125" y2="2.125" width="0.0508" layer="21"/>
<wire x1="2.75" y1="1.75" x2="3.125" y2="2.125" width="0.0508" layer="21"/>
<wire x1="-3.375" y1="2.125" x2="-5.25" y2="2.125" width="0.2032" layer="51"/>
<wire x1="-5.25" y1="2.125" x2="-5.25" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="-5.25" y1="-0.75" x2="-3.375" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="3.375" y1="-0.75" x2="5.25" y2="-0.75" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-0.75" x2="5.25" y2="2.125" width="0.2032" layer="51"/>
<wire x1="5.25" y1="2.125" x2="3.375" y2="2.125" width="0.2032" layer="51"/>
<wire x1="-3.25" y1="-1" x2="-2.75" y2="-1" width="0.0508" layer="21"/>
<wire x1="-2.75" y1="-1" x2="-2.5" y2="-1" width="0.0508" layer="21"/>
<wire x1="-2.5" y1="-1" x2="-2.5" y2="-1.375" width="0.0508" layer="21"/>
<wire x1="2.75" y1="-1" x2="3.25" y2="-1" width="0.0508" layer="21"/>
<wire x1="2.5" y1="-1" x2="2.75" y2="-1" width="0.0508" layer="21"/>
<wire x1="2.5" y1="-1" x2="2.5" y2="-1.375" width="0.0508" layer="21"/>
<smd name="1" x="1.875" y="-2.5" dx="0.8" dy="1.8" layer="1"/>
<smd name="2" x="0.625" y="-2.5" dx="0.8" dy="1.8" layer="1"/>
<smd name="3" x="-0.625" y="-2.5" dx="0.8" dy="1.8" layer="1"/>
<smd name="4" x="-1.875" y="-2.5" dx="0.8" dy="1.8" layer="1"/>
<smd name="S1" x="4.375" y="0.625" dx="2.1" dy="3" layer="1"/>
<smd name="S2" x="-4.375" y="0.625" dx="2.1" dy="3" layer="1"/>
<text x="-3" y="2.375" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.75" y="-3.5" size="1.27" layer="27">&gt;VALUE</text>
<text x="3.75" y="-0.25" size="1.9304" layer="51">1</text>
<rectangle x1="-2.125" y1="0.375" x2="-1.625" y2="1" layer="21"/>
<rectangle x1="-0.875" y1="0.375" x2="-0.375" y2="1" layer="21"/>
<rectangle x1="0.375" y1="0.375" x2="0.875" y2="1" layer="21"/>
<rectangle x1="1.625" y1="0.375" x2="2.125" y2="1" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="53?-02" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="047" package="53047-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="53047-0210" constant="no"/>
<attribute name="OC_FARNELL" value="9733051" constant="no"/>
<attribute name="OC_NEWARK" value="57H4701" constant="no"/>
</technology>
</technologies>
</device>
<device name="048" package="53048-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="53048-0210" constant="no"/>
<attribute name="OC_FARNELL" value="1012259" constant="no"/>
<attribute name="OC_NEWARK" value="57H4718" constant="no"/>
</technology>
</technologies>
</device>
<device name="261" package="53261-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1125373" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="398" package="53398-02">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="53?-04" prefix="X">
<description>&lt;b&gt;CONNECTOR&lt;/b&gt;&lt;p&gt;
wire to board 1.25 mm (.049 inch) pitch header</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="047" package="53047-04">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="WALDOM/MOLEX" constant="no"/>
<attribute name="MPN" value="53047-0410" constant="no"/>
<attribute name="OC_FARNELL" value="9733060" constant="no"/>
<attribute name="OC_NEWARK" value="38C9900" constant="no"/>
</technology>
</technologies>
</device>
<device name="048" package="53048-04">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="MOLEX" constant="no"/>
<attribute name="MPN" value="53048-0410" constant="no"/>
<attribute name="OC_FARNELL" value="1462887" constant="no"/>
<attribute name="OC_NEWARK" value="57H4721" constant="no"/>
</technology>
</technologies>
</device>
<device name="261" package="53261-04">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1125374" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="398" package="53398-04">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="1125367" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MyLib">
<packages>
<package name="TSSOP20">
<description>TSSOP20 package with dimensions according to LPC82X datasheet</description>
<smd name="P2" x="-2.925" y="2.275" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P3" x="-2.925" y="1.625" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P4" x="-2.925" y="0.975" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P5" x="-2.925" y="0.325" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P6" x="-2.925" y="-0.325" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P7" x="-2.925" y="-0.975" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P8" x="-2.925" y="-1.625" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P9" x="-2.925" y="-2.275" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P1" x="-2.925" y="3.025" dx="0.6" dy="1.35" layer="1" rot="R270"/>
<smd name="P10" x="-2.925" y="-3.025" dx="0.6" dy="1.35" layer="1" rot="R270"/>
<smd name="P19" x="2.925" y="2.275" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P18" x="2.925" y="1.625" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P17" x="2.925" y="0.975" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P16" x="2.925" y="0.325" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P15" x="2.925" y="-0.325" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P14" x="2.925" y="-0.975" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P13" x="2.925" y="-1.625" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P12" x="2.925" y="-2.275" dx="0.4" dy="1.35" layer="1" rot="R270"/>
<smd name="P20" x="2.925" y="3.025" dx="0.6" dy="1.35" layer="1" rot="R270"/>
<smd name="P11" x="2.925" y="-3.025" dx="0.6" dy="1.35" layer="1" rot="R270"/>
<wire x1="2" y1="-3.25" x2="2" y2="3.25" width="0.2032" layer="21"/>
<wire x1="2" y1="3.25" x2="-2" y2="3.25" width="0.2032" layer="21"/>
<wire x1="-2" y1="3.25" x2="-2" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="-2" y1="-3.25" x2="2" y2="-3.25" width="0.2032" layer="21"/>
<circle x="-1" y="2.25" radius="0.559015625" width="0.2032" layer="21"/>
<text x="-2" y="-5" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="3.75" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SIM8050">
<description>Nano SIM card socket</description>
<smd name="C3" x="-2.54" y="-5.9" dx="1" dy="1.1" layer="1"/>
<smd name="C1" x="2.54" y="-5.9" dx="1" dy="1.1" layer="1"/>
<smd name="C2" x="0" y="-5.9" dx="1" dy="1.1" layer="1"/>
<smd name="C7" x="-2.54" y="5.9" dx="1" dy="1.1" layer="1"/>
<smd name="C5" x="2.54" y="5.9" dx="1" dy="1.1" layer="1"/>
<smd name="C6" x="0" y="5.9" dx="1" dy="1.1" layer="1"/>
<hole x="4.6" y="4.15" drill="0.8"/>
<hole x="-4.4" y="-4.15" drill="1"/>
<smd name="C4" x="5.3" y="0" dx="1" dy="3" layer="1"/>
<smd name="C8" x="-5.3" y="0" dx="1" dy="3" layer="1"/>
<wire x1="-1.94" y1="6.1" x2="-0.6" y2="6.1" width="0.127" layer="21"/>
<wire x1="0.6" y1="6.1" x2="1.94" y2="6.1" width="0.127" layer="21"/>
<wire x1="-1.94" y1="-6.1" x2="-0.6" y2="-6.1" width="0.127" layer="21"/>
<wire x1="0.6" y1="-6.1" x2="1.94" y2="-6.1" width="0.127" layer="21"/>
<wire x1="3.13" y1="-6.1" x2="4.3" y2="-6.1" width="0.127" layer="21"/>
<wire x1="4.3" y1="-6.1" x2="4.3" y2="-5.5" width="0.127" layer="21"/>
<wire x1="4.3" y1="-5.5" x2="4.7" y2="-5.5" width="0.127" layer="21"/>
<wire x1="3.14" y1="6.1" x2="4.7" y2="6.1" width="0.127" layer="21"/>
<wire x1="4.7" y1="6.1" x2="4.7" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-3.14" y1="-6.1" x2="-4.2" y2="-6.1" width="0.127" layer="21"/>
<wire x1="-4.2" y1="-6.1" x2="-4.2" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-4.2" y1="-5.5" x2="-4.7" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-4.7" y1="5.3" x2="-4.7" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-3.14" y1="6.1" x2="-3.8" y2="6.1" width="0.127" layer="21"/>
<wire x1="-4.7" y1="5.3" x2="-4.1" y2="5.3" width="0.127" layer="21"/>
<wire x1="-4.1" y1="5.3" x2="-3.8" y2="5.6" width="0.127" layer="21" curve="90"/>
<wire x1="-3.8" y1="5.6" x2="-3.8" y2="6.1" width="0.127" layer="21"/>
<text x="-4" y="-8.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-4" y="7" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MLF">
<description>28-pin MLF with thermal vias</description>
<smd name="P27" x="-2.255" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P26" x="-1.755" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P25" x="-1.255" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P24" x="-0.755" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P23" x="-0.255" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P22" x="0.245" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P21" x="0.745" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P20" x="1.245" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P19" x="1.745" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P18" x="2.245" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P2" x="-2.255" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P3" x="-1.755" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P4" x="-1.255" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P5" x="-0.755" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P6" x="-0.255" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P7" x="0.245" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P8" x="0.745" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P9" x="1.245" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P10" x="1.745" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P11" x="2.245" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P28" x="-2.755" y="1.85" dx="0.25" dy="0.5" layer="1"/>
<smd name="P17" x="2.845" y="1.25" dx="0.25" dy="0.5" layer="1" rot="R270"/>
<smd name="P16" x="2.845" y="0.75" dx="0.25" dy="0.5" layer="1" rot="R270"/>
<smd name="P15" x="2.845" y="0.25" dx="0.25" dy="0.5" layer="1" rot="R270"/>
<smd name="P14" x="2.845" y="-0.25" dx="0.25" dy="0.5" layer="1" rot="R270"/>
<smd name="P13" x="2.845" y="-0.75" dx="0.25" dy="0.5" layer="1" rot="R270"/>
<smd name="P12" x="2.845" y="-1.25" dx="0.25" dy="0.5" layer="1" rot="R270"/>
<smd name="P23-28" x="-1.505" y="0.875" dx="1.75" dy="0.75" layer="1"/>
<smd name="P1-5" x="-1.63" y="-0.875" dx="1.5" dy="0.75" layer="1"/>
<smd name="P8-21" x="1.165" y="0" dx="2.1" dy="2.5" layer="1"/>
<text x="-3" y="-4" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="2.5" size="1.27" layer="27">&gt;VALUE</text>
<smd name="P1" x="-2.755" y="-1.85" dx="0.25" dy="0.5" layer="1"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.683" x2="1.473" y2="0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.683" x2="1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.683" x2="-1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.683" x2="-1.473" y2="0.683" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="0603">
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.683" x2="1.473" y2="0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.683" x2="1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.683" x2="-1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.683" x2="-1.473" y2="0.683" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="J502-ND-142-0701-801/806">
<description>&lt;b&gt;SMA 50 Ohm&lt;/b&gt; Board Thickness &lt;b&gt;0.062&lt;/b&gt; Inch, End Launch Jack Receptacle&lt;p&gt;
Johnson Components&lt;br&gt;
Source: www.johnsoncomponents.com .. J502-ND.pdf</description>
<wire x1="0" y1="5.588" x2="0" y2="-5.588" width="0" layer="20"/>
<wire x1="-1.55" y1="-4.65" x2="-1.55" y2="-2" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-2" x2="-3.7" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.7" y1="-2" x2="-4.45" y2="-2.75" width="0.2032" layer="21"/>
<wire x1="-4.45" y1="-2.75" x2="-8.25" y2="-2.75" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="-2.75" x2="-8.25" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="-1.9" x2="-9.425" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-9.425" y1="-1.9" x2="-9.425" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-9.425" y1="1.9" x2="-8.25" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="1.9" x2="-8.25" y2="2.75" width="0.2032" layer="21"/>
<wire x1="-8.25" y1="2.75" x2="-4.45" y2="2.75" width="0.2032" layer="21"/>
<wire x1="-4.45" y1="2.75" x2="-3.7" y2="2" width="0.2032" layer="21"/>
<wire x1="-3.7" y1="2" x2="-1.55" y2="2" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="2" x2="-1.55" y2="4.65" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="4.65" x2="4.65" y2="4.65" width="0.2032" layer="51"/>
<wire x1="4.65" y1="-4.65" x2="-1.55" y2="-4.65" width="0.2032" layer="51"/>
<wire x1="4.65" y1="-4.65" x2="4.65" y2="-3.85" width="0.2032" layer="51"/>
<wire x1="4.65" y1="-3.85" x2="-0.1" y2="-3.85" width="0.2032" layer="51"/>
<wire x1="-0.1" y1="-3.85" x2="-0.1" y2="3.85" width="0.2032" layer="21"/>
<wire x1="-0.1" y1="3.85" x2="4.65" y2="3.85" width="0.2032" layer="51"/>
<wire x1="4.65" y1="3.85" x2="4.65" y2="4.65" width="0.2032" layer="51"/>
<wire x1="-1.55" y1="4.65" x2="-0.1" y2="4.65" width="0.2032" layer="21"/>
<wire x1="-0.1" y1="-4.65" x2="-1.55" y2="-4.65" width="0.2032" layer="21"/>
<smd name="1" x="2.5654" y="0" dx="5.08" dy="0.8" layer="1"/>
<smd name="G@1" x="2.5654" y="4.4196" dx="5.08" dy="2.286" layer="1"/>
<smd name="G@2" x="2.5654" y="-4.4196" dx="5.08" dy="2.286" layer="1"/>
<smd name="G@4" x="2.5654" y="-4.4196" dx="5.08" dy="2.286" layer="16"/>
<smd name="G@3" x="2.5654" y="4.4196" dx="5.08" dy="2.286" layer="16"/>
<text x="0.635" y="6.35" size="1.778" layer="25">&gt;NAME</text>
<text x="1.27" y="-8.89" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-0.025" y1="-0.4" x2="4.05" y2="0.4" layer="51"/>
</package>
<package name="DFN20">
<description>20-pin dual flat no-lead package with patch antenna</description>
<smd name="P1" x="-8" y="6.75" dx="2" dy="1" layer="1"/>
<smd name="P2" x="-8" y="5.25" dx="2" dy="1" layer="1"/>
<smd name="P3" x="-8" y="3.75" dx="2" dy="1" layer="1"/>
<smd name="P4" x="-8" y="2.25" dx="2" dy="1" layer="1"/>
<smd name="P5" x="-8" y="0.75" dx="2" dy="1" layer="1"/>
<smd name="P6" x="-8" y="-0.75" dx="2" dy="1" layer="1"/>
<smd name="P7" x="-8" y="-2.25" dx="2" dy="1" layer="1"/>
<smd name="P8" x="-8" y="-3.75" dx="2" dy="1" layer="1"/>
<smd name="P9" x="-8" y="-5.25" dx="2" dy="1" layer="1"/>
<smd name="P10" x="-8" y="-6.75" dx="2" dy="1" layer="1"/>
<smd name="P11" x="8" y="-6.75" dx="2" dy="1" layer="1"/>
<smd name="P12" x="8" y="-5.25" dx="2" dy="1" layer="1"/>
<smd name="P13" x="8" y="-3.75" dx="2" dy="1" layer="1"/>
<smd name="P14" x="8" y="-2.25" dx="2" dy="1" layer="1"/>
<smd name="P15" x="8" y="-0.75" dx="2" dy="1" layer="1"/>
<smd name="P16" x="8" y="0.75" dx="2" dy="1" layer="1"/>
<smd name="P17" x="8" y="2.25" dx="2" dy="1" layer="1"/>
<smd name="P18" x="8" y="3.75" dx="2" dy="1" layer="1"/>
<smd name="P19" x="8" y="5.25" dx="2" dy="1" layer="1"/>
<smd name="P20" x="8" y="6.75" dx="2" dy="1" layer="1"/>
<circle x="0.2" y="0.8" radius="0.6" width="0" layer="39"/>
<wire x1="-8" y1="7.5" x2="-8" y2="8" width="0.127" layer="21"/>
<wire x1="-8" y1="8" x2="8" y2="8" width="0.127" layer="21"/>
<wire x1="8" y1="8" x2="8" y2="7.5" width="0.127" layer="21"/>
<wire x1="-8" y1="-7.5" x2="-8" y2="-8" width="0.127" layer="21"/>
<wire x1="-8" y1="-8" x2="8" y2="-8" width="0.127" layer="21"/>
<wire x1="8" y1="-8" x2="8" y2="-7.5" width="0.127" layer="21"/>
<text x="-8" y="-10" size="1.27" layer="25">&gt;NAME</text>
<text x="-8" y="9" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5.5" y1="6.5" x2="-6.5" y2="5.5" width="0.127" layer="21"/>
<wire x1="-6.5" y1="5.5" x2="-6.5" y2="-5.5" width="0.127" layer="21"/>
<wire x1="-6.5" y1="-5.5" x2="-5.5" y2="-6.5" width="0.127" layer="21"/>
<wire x1="-5.5" y1="-6.5" x2="5.5" y2="-6.5" width="0.127" layer="21"/>
<wire x1="5.5" y1="-6.5" x2="6.5" y2="-5.5" width="0.127" layer="21"/>
<wire x1="6.5" y1="-5.5" x2="6.5" y2="5.5" width="0.127" layer="21"/>
<wire x1="6.5" y1="5.5" x2="5.5" y2="6.5" width="0.127" layer="21"/>
<wire x1="5.5" y1="6.5" x2="-5.5" y2="6.5" width="0.127" layer="21"/>
</package>
<package name="SMT_BUTTON">
<smd name="P2" x="3.1" y="1.85" dx="1.8" dy="1.1" layer="1"/>
<smd name="P4" x="3.1" y="-1.85" dx="1.8" dy="1.1" layer="1"/>
<smd name="P3" x="-3.1" y="-1.85" dx="1.8" dy="1.1" layer="1"/>
<smd name="P1" x="-3.1" y="1.85" dx="1.8" dy="1.1" layer="1"/>
<wire x1="1.3" y1="2.6" x2="-1.3" y2="2.6" width="0.127" layer="21"/>
<wire x1="-1.3" y1="2.6" x2="-2.6" y2="1.3" width="0.127" layer="21"/>
<wire x1="-2.6" y1="1.3" x2="-2.6" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-2.6" y1="-1.3" x2="-1.3" y2="-2.6" width="0.127" layer="21"/>
<wire x1="-1.3" y1="-2.6" x2="1.3" y2="-2.6" width="0.127" layer="21"/>
<wire x1="1.3" y1="-2.6" x2="2.6" y2="-1.3" width="0.127" layer="21"/>
<wire x1="2.6" y1="-1.3" x2="2.6" y2="1.3" width="0.127" layer="21"/>
<wire x1="2.6" y1="1.3" x2="1.3" y2="2.6" width="0.127" layer="21"/>
<polygon width="0.127" layer="51">
<vertex x="3.1" y="2.1"/>
<vertex x="3.1" y="1.6"/>
<vertex x="2.3" y="1.6"/>
<vertex x="1.8" y="2.1"/>
</polygon>
<polygon width="0.127" layer="51">
<vertex x="3.1" y="-2.1"/>
<vertex x="3.1" y="-1.6"/>
<vertex x="2.3" y="-1.6"/>
<vertex x="1.8" y="-2.1"/>
</polygon>
<polygon width="0.127" layer="51">
<vertex x="-3.1" y="-1.6"/>
<vertex x="-3.1" y="-2.1"/>
<vertex x="-1.8" y="-2.1"/>
<vertex x="-2.3" y="-1.6"/>
</polygon>
<polygon width="0.127" layer="51">
<vertex x="-3.1" y="2.1"/>
<vertex x="-3.1" y="1.6"/>
<vertex x="-2.3" y="1.6"/>
<vertex x="-1.8" y="2.1"/>
</polygon>
<circle x="0" y="0" radius="1.97230625" width="0.3048" layer="21"/>
<circle x="0" y="0" radius="1.019803125" width="0.127" layer="21"/>
<text x="-2.6" y="-4.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.6" y="3" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SOT23">
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<smd name="D" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="S" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="G" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LPC824-20">
<description>LPC824 microcontroller from NXP in TSSOP20 package</description>
<pin name="PIO0_23" x="-22.86" y="10.16" length="middle"/>
<pin name="PIO0_17" x="-22.86" y="7.62" length="middle"/>
<pin name="PIO0_13" x="-22.86" y="5.08" length="middle"/>
<pin name="PIO0_12" x="-22.86" y="2.54" length="middle"/>
<pin name="PIO0_5/!RESET" x="-22.86" y="0" length="middle"/>
<pin name="PIO0_4" x="-22.86" y="-2.54" length="middle"/>
<pin name="PIO0_3" x="-22.86" y="-5.08" length="middle"/>
<pin name="PIO0_2" x="-22.86" y="-7.62" length="middle"/>
<pin name="PIO0_11" x="-22.86" y="-10.16" length="middle"/>
<pin name="PIO0_10" x="-22.86" y="-12.7" length="middle"/>
<pin name="PIO0_15" x="22.86" y="-12.7" length="middle" rot="R180"/>
<pin name="PIO0_1" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="PIO0_9" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="PIO0_8" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="VDD" x="22.86" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="VSS" x="22.86" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="VREFN" x="22.86" y="2.54" length="middle" rot="R180"/>
<pin name="VREFP" x="22.86" y="5.08" length="middle" rot="R180"/>
<pin name="PIO0_0" x="22.86" y="7.62" length="middle" rot="R180"/>
<pin name="PIO0_14" x="22.86" y="10.16" length="middle" rot="R180"/>
<wire x1="-17.78" y1="12.7" x2="17.78" y2="12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="12.7" x2="17.78" y2="-15.24" width="0.254" layer="94"/>
<wire x1="17.78" y1="-15.24" x2="-17.78" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-15.24" x2="-17.78" y2="12.7" width="0.254" layer="94"/>
<text x="-17.78" y="-17.78" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="SIM">
<description>SIM card</description>
<pin name="CCVCC" x="-10.16" y="5.08" length="middle" direction="pwr"/>
<pin name="CCVPP" x="-10.16" y="2.54" length="middle" direction="pwr"/>
<pin name="CCIO" x="-10.16" y="0" length="middle"/>
<pin name="CCCLK" x="-10.16" y="-2.54" length="middle"/>
<pin name="CCRST" x="-10.16" y="-5.08" length="middle"/>
<pin name="GND" x="-10.16" y="-7.62" length="middle" direction="pwr"/>
<wire x1="-5.08" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="-12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="8.89" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="MIC38300">
<description>Micrel MIC38300 High Efficiency Low Dropout Regulator</description>
<pin name="SWO" x="17.78" y="12.7" length="middle" direction="pas" rot="R180"/>
<pin name="SW" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="EPAD" x="0" y="-20.32" length="middle" direction="pwr" rot="R90"/>
<pin name="AVIN" x="-17.78" y="-2.54" length="middle" direction="pwr"/>
<pin name="LPF" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="AGND" x="-17.78" y="-12.7" length="middle"/>
<pin name="FB" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="LDOOUT" x="17.78" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="LDOIN" x="17.78" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="PVIN" x="-17.78" y="12.7" length="middle" direction="pwr"/>
<pin name="EN" x="-17.78" y="2.54" length="middle"/>
<pin name="PGND" x="17.78" y="2.54" length="middle" direction="pwr" rot="R180"/>
<text x="-12.7" y="16.51" size="1.778" layer="95">&gt;NAME</text>
<text x="12.7" y="18.288" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<wire x1="-12.7" y1="15.24" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="-15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="-15.24" x2="-12.7" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-15.24" x2="-12.7" y2="15.24" width="0.254" layer="94"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="CAPACITOR">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202"/>
<wire x1="-2.4668" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.373024"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="ANTENNA">
<wire x1="0" y1="-2.54" x2="-0.762" y2="-1.778" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0.508" x2="-0.762" y2="0.508" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0.508" x2="-0.508" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="0" x2="-0.762" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-0.508" x2="-2.54" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="0.508" width="0.3048" layer="94" curve="-79.611142" cap="flat"/>
<wire x1="-2.54" y1="-2.54" x2="0" y2="-0.508" width="0.3048" layer="94" curve="79.611142" cap="flat"/>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="GND@1" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="PA6H">
<description>GlobalTop Ladybird 1 GPS/GNSS Module</description>
<pin name="VCC" x="-20.32" y="10.16" length="middle" direction="pwr"/>
<pin name="!RESET" x="-20.32" y="7.62" length="middle"/>
<pin name="GND@3" x="-20.32" y="5.08" length="middle" direction="pwr"/>
<pin name="VBACKUP" x="-20.32" y="2.54" length="middle" direction="pwr"/>
<pin name="3D-FIX" x="-20.32" y="0" length="middle"/>
<pin name="NC@6" x="-20.32" y="-2.54" length="middle" direction="nc"/>
<pin name="NC@7" x="-20.32" y="-5.08" length="middle" direction="nc"/>
<pin name="GND@8" x="-20.32" y="-7.62" length="middle" direction="pwr"/>
<pin name="TX" x="-20.32" y="-10.16" length="middle"/>
<pin name="RX" x="-20.32" y="-12.7" length="middle"/>
<pin name="EX_ANT" x="20.32" y="-12.7" length="middle" direction="pas" rot="R180"/>
<pin name="GND@12" x="20.32" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="1PPS" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="RTCM" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="NC@15" x="20.32" y="-2.54" length="middle" direction="nc" rot="R180"/>
<pin name="NC@16" x="20.32" y="0" length="middle" direction="nc" rot="R180"/>
<pin name="NC@17" x="20.32" y="2.54" length="middle" direction="nc" rot="R180"/>
<pin name="NC@18" x="20.32" y="5.08" length="middle" direction="nc" rot="R180"/>
<pin name="GND@19" x="20.32" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="NC@20" x="20.32" y="10.16" length="middle" direction="nc" rot="R180"/>
<wire x1="-15.24" y1="12.7" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-15.24" x2="15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="12.7" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
<text x="-15.24" y="-17.78" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="PSH_BTN">
<text x="-7.62" y="-10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P$1" x="-10.16" y="5.08" visible="off" length="short"/>
<pin name="P$2" x="10.16" y="5.08" visible="off" length="short" rot="R180"/>
<pin name="P$3" x="-10.16" y="-5.08" visible="off" length="short"/>
<pin name="P$4" x="10.16" y="-5.08" visible="off" length="short" rot="R180"/>
<wire x1="-7.62" y1="5.08" x2="0" y2="5.08" width="0.127" layer="94"/>
<wire x1="0" y1="5.08" x2="7.62" y2="5.08" width="0.127" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="0" y2="-5.08" width="0.127" layer="94"/>
<circle x="0" y="2.54" radius="1.04726875" width="0.127" layer="94"/>
<circle x="0" y="-2.54" radius="1.04726875" width="0.127" layer="94"/>
<wire x1="0" y1="-5.08" x2="7.62" y2="-5.08" width="0.127" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-3.556" width="0.127" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="3.556" width="0.127" layer="94"/>
<wire x1="1.016" y1="2.54" x2="2.54" y2="-2.54" width="0.127" layer="94"/>
</symbol>
<symbol name="P-MOSFET">
<pin name="S" x="2.54" y="5.08" visible="pad" length="point"/>
<pin name="G" x="-5.08" y="2.54" visible="pad" length="point"/>
<pin name="D" x="2.54" y="-5.08" visible="pad" length="point"/>
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="0" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="2.54" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="2.54" y2="-2.032" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.524" y2="0.508" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.032" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="4.572" y1="0.508" x2="5.08" y2="0.508" width="0.254" layer="94"/>
<wire x1="5.08" y1="0.508" x2="5.588" y2="0.508" width="0.254" layer="94"/>
<wire x1="5.08" y1="0.508" x2="4.572" y2="-0.508" width="0.254" layer="94"/>
<wire x1="4.572" y1="-0.508" x2="5.08" y2="-0.508" width="0.254" layer="94"/>
<wire x1="5.08" y1="-0.508" x2="5.588" y2="-0.508" width="0.254" layer="94"/>
<wire x1="5.588" y1="-0.508" x2="5.08" y2="0.508" width="0.254" layer="94"/>
<wire x1="5.08" y1="0.508" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="-0.508" width="0.254" layer="94"/>
<text x="-5.08" y="-5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LPC824M201JDH20">
<description>LPC824 microcontroller in TSSOP20 package made by NXP</description>
<gates>
<gate name="G$1" symbol="LPC824-20" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TSSOP20">
<connects>
<connect gate="G$1" pin="PIO0_0" pad="P19"/>
<connect gate="G$1" pin="PIO0_1" pad="P12"/>
<connect gate="G$1" pin="PIO0_10" pad="P10"/>
<connect gate="G$1" pin="PIO0_11" pad="P9"/>
<connect gate="G$1" pin="PIO0_12" pad="P4"/>
<connect gate="G$1" pin="PIO0_13" pad="P3"/>
<connect gate="G$1" pin="PIO0_14" pad="P20"/>
<connect gate="G$1" pin="PIO0_15" pad="P11"/>
<connect gate="G$1" pin="PIO0_17" pad="P2"/>
<connect gate="G$1" pin="PIO0_2" pad="P8"/>
<connect gate="G$1" pin="PIO0_23" pad="P1"/>
<connect gate="G$1" pin="PIO0_3" pad="P7"/>
<connect gate="G$1" pin="PIO0_4" pad="P6"/>
<connect gate="G$1" pin="PIO0_5/!RESET" pad="P5"/>
<connect gate="G$1" pin="PIO0_8" pad="P14"/>
<connect gate="G$1" pin="PIO0_9" pad="P13"/>
<connect gate="G$1" pin="VDD" pad="P15"/>
<connect gate="G$1" pin="VREFN" pad="P17"/>
<connect gate="G$1" pin="VREFP" pad="P18"/>
<connect gate="G$1" pin="VSS" pad="P16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SIM_CARD">
<description>Nano SIM card</description>
<gates>
<gate name="G$1" symbol="SIM" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SIM8050">
<connects>
<connect gate="G$1" pin="CCCLK" pad="C3"/>
<connect gate="G$1" pin="CCIO" pad="C7"/>
<connect gate="G$1" pin="CCRST" pad="C2"/>
<connect gate="G$1" pin="CCVCC" pad="C1"/>
<connect gate="G$1" pin="CCVPP" pad="C6"/>
<connect gate="G$1" pin="GND" pad="C4 C5 C8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MIC38300_HELDO">
<description>Micrel MIC38300 High Efficiency Low Dropout Regulator</description>
<gates>
<gate name="G$1" symbol="MIC38300" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MLF">
<connects>
<connect gate="G$1" pin="AGND" pad="P10"/>
<connect gate="G$1" pin="AVIN" pad="P8"/>
<connect gate="G$1" pin="EN" pad="P18"/>
<connect gate="G$1" pin="EPAD" pad="P7 P8-21 P22"/>
<connect gate="G$1" pin="FB" pad="P11"/>
<connect gate="G$1" pin="LDOIN" pad="P14 P15"/>
<connect gate="G$1" pin="LDOOUT" pad="P12 P13"/>
<connect gate="G$1" pin="LPF" pad="P9"/>
<connect gate="G$1" pin="PGND" pad="P19 P20 P21"/>
<connect gate="G$1" pin="PVIN" pad="P16 P17"/>
<connect gate="G$1" pin="SW" pad="P6 P23 P23-28 P24 P25 P26 P27 P28"/>
<connect gate="G$1" pin="SWO" pad="P1 P1-5 P2 P3 P4 P5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R0603" prefix="R" uservalue="yes">
<description>SMT 0603 resistor</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C0603" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SMA-">
<gates>
<gate name="G$1" symbol="ANTENNA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="J502-ND-142-0701-801/806">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="GND@1" pad="G@1 G@2 G@3 G@4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PA6H">
<gates>
<gate name="G$1" symbol="PA6H" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DFN20">
<connects>
<connect gate="G$1" pin="!RESET" pad="P2"/>
<connect gate="G$1" pin="1PPS" pad="P13"/>
<connect gate="G$1" pin="3D-FIX" pad="P5"/>
<connect gate="G$1" pin="EX_ANT" pad="P11"/>
<connect gate="G$1" pin="GND@12" pad="P12"/>
<connect gate="G$1" pin="GND@19" pad="P19"/>
<connect gate="G$1" pin="GND@3" pad="P3"/>
<connect gate="G$1" pin="GND@8" pad="P8"/>
<connect gate="G$1" pin="NC@15" pad="P15"/>
<connect gate="G$1" pin="NC@16" pad="P16"/>
<connect gate="G$1" pin="NC@17" pad="P17"/>
<connect gate="G$1" pin="NC@18" pad="P18"/>
<connect gate="G$1" pin="NC@20" pad="P20"/>
<connect gate="G$1" pin="NC@6" pad="P6"/>
<connect gate="G$1" pin="NC@7" pad="P7"/>
<connect gate="G$1" pin="RTCM" pad="P14"/>
<connect gate="G$1" pin="RX" pad="P10"/>
<connect gate="G$1" pin="TX" pad="P9"/>
<connect gate="G$1" pin="VBACKUP" pad="P4"/>
<connect gate="G$1" pin="VCC" pad="P1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SMT_BTN" prefix="BTN">
<gates>
<gate name="G$1" symbol="PSH_BTN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMT_BUTTON">
<connects>
<connect gate="G$1" pin="P$1" pad="P1"/>
<connect gate="G$1" pin="P$2" pad="P2"/>
<connect gate="G$1" pin="P$3" pad="P3"/>
<connect gate="G$1" pin="P$4" pad="P4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="AO3407A" prefix="M">
<gates>
<gate name="G$1" symbol="P-MOSFET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23">
<connects>
<connect gate="G$1" pin="D" pad="D"/>
<connect gate="G$1" pin="G" pad="G"/>
<connect gate="G$1" pin="S" pad="S"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="u-blox">
<description>&lt;b&gt;Produkte für GPS und drahtlose Kommunikation&lt;/b&gt;&lt;p&gt;
GPS Chips GPS Lösungen Wireless Module Wireless Lösungen Antennen&lt;br&gt;
http://www.u-blox.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LEON-G100/G200">
<description>&lt;b&gt;LEON-G100/G200 Quad Band GSM/GPRS Voice and Data Modules&lt;/b&gt;&lt;p&gt;
Source: http://www.u-blox.com</description>
<wire x1="-9.35" y1="14.65" x2="9.35" y2="14.65" width="0.2032" layer="21"/>
<wire x1="9.35" y1="14.65" x2="9.35" y2="-14.65" width="0.2032" layer="21"/>
<wire x1="9.35" y1="-14.65" x2="-9.35" y2="-14.65" width="0.2032" layer="21"/>
<wire x1="-9.35" y1="-14.65" x2="-9.35" y2="14.65" width="0.2032" layer="21"/>
<smd name="1" x="-9.35" y="13.6" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="2" x="-9.35" y="12.5" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="3" x="-9.35" y="11.4" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="4" x="-9.35" y="10.3" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="5" x="-9.35" y="9.2" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="6" x="-9.35" y="8.1" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="7" x="-9.35" y="7" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="8" x="-9.35" y="5.9" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="9" x="-9.35" y="4.8" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="10" x="-9.35" y="3.7" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="11" x="-9.35" y="2.6" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="12" x="-9.35" y="1.5" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="13" x="-9.35" y="0.4" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="14" x="-9.35" y="-0.7" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="15" x="-9.35" y="-1.8" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="16" x="-9.35" y="-2.9" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="17" x="-9.35" y="-4" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="18" x="-9.35" y="-5.1" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="19" x="-9.35" y="-6.2" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="20" x="-9.35" y="-7.3" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="21" x="-9.35" y="-8.4" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="22" x="-9.35" y="-9.5" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="23" x="-9.35" y="-10.6" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="24" x="-9.35" y="-11.7" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="25" x="-9.35" y="-12.8" dx="1.8" dy="0.8" layer="1" stop="no" cream="no"/>
<smd name="26" x="9.35" y="-12.8" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="27" x="9.35" y="-11.7" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="28" x="9.35" y="-10.6" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="29" x="9.35" y="-9.5" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="30" x="9.35" y="-8.4" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="31" x="9.35" y="-7.3" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="32" x="9.35" y="-6.2" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="33" x="9.35" y="-5.1" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="34" x="9.35" y="-4" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="35" x="9.35" y="-2.9" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="36" x="9.35" y="-1.8" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="37" x="9.35" y="-0.7" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="38" x="9.35" y="0.4" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="39" x="9.35" y="1.5" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="40" x="9.35" y="2.6" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="41" x="9.35" y="3.7" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="42" x="9.35" y="4.8" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="43" x="9.35" y="5.9" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="44" x="9.35" y="7" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="45" x="9.35" y="8.1" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="46" x="9.35" y="9.2" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="47" x="9.35" y="10.3" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="48" x="9.35" y="11.4" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="49" x="9.35" y="12.5" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<smd name="50" x="9.35" y="13.6" dx="1.8" dy="0.8" layer="1" rot="R180" stop="no" cream="no"/>
<rectangle x1="5.66" y1="12.65" x2="8.44" y2="13.95" layer="41"/>
<rectangle x1="7.05" y1="7.25" x2="8.05" y2="12.55" layer="41"/>
<rectangle x1="-9.6" y1="13.3" x2="-8.8" y2="13.9" layer="31"/>
<rectangle x1="-11.35" y1="13.2" x2="-9.45" y2="14" layer="31"/>
<rectangle x1="-11.4" y1="13.15" x2="-8.4" y2="14.05" layer="29"/>
<rectangle x1="-9.6" y1="12.2" x2="-8.8" y2="12.8" layer="31"/>
<rectangle x1="-11.35" y1="12.1" x2="-9.45" y2="12.9" layer="31"/>
<rectangle x1="-11.4" y1="12.05" x2="-8.4" y2="12.95" layer="29"/>
<rectangle x1="-9.6" y1="11.1" x2="-8.8" y2="11.7" layer="31"/>
<rectangle x1="-11.35" y1="11" x2="-9.45" y2="11.8" layer="31"/>
<rectangle x1="-11.4" y1="10.95" x2="-8.4" y2="11.85" layer="29"/>
<rectangle x1="-9.6" y1="10" x2="-8.8" y2="10.6" layer="31"/>
<rectangle x1="-11.35" y1="9.9" x2="-9.45" y2="10.7" layer="31"/>
<rectangle x1="-11.4" y1="9.85" x2="-8.4" y2="10.75" layer="29"/>
<rectangle x1="-9.6" y1="8.9" x2="-8.8" y2="9.5" layer="31"/>
<rectangle x1="-11.35" y1="8.8" x2="-9.45" y2="9.6" layer="31"/>
<rectangle x1="-11.4" y1="8.75" x2="-8.4" y2="9.65" layer="29"/>
<rectangle x1="-9.6" y1="7.8" x2="-8.8" y2="8.4" layer="31"/>
<rectangle x1="-11.35" y1="7.7" x2="-9.45" y2="8.5" layer="31"/>
<rectangle x1="-11.4" y1="7.65" x2="-8.4" y2="8.55" layer="29"/>
<rectangle x1="-9.6" y1="6.7" x2="-8.8" y2="7.3" layer="31"/>
<rectangle x1="-11.35" y1="6.6" x2="-9.45" y2="7.4" layer="31"/>
<rectangle x1="-11.4" y1="6.55" x2="-8.4" y2="7.45" layer="29"/>
<rectangle x1="-9.6" y1="5.6" x2="-8.8" y2="6.2" layer="31"/>
<rectangle x1="-11.35" y1="5.5" x2="-9.45" y2="6.3" layer="31"/>
<rectangle x1="-11.4" y1="5.45" x2="-8.4" y2="6.35" layer="29"/>
<rectangle x1="-9.6" y1="4.5" x2="-8.8" y2="5.1" layer="31"/>
<rectangle x1="-11.35" y1="4.4" x2="-9.45" y2="5.2" layer="31"/>
<rectangle x1="-11.4" y1="4.35" x2="-8.4" y2="5.25" layer="29"/>
<rectangle x1="-9.6" y1="3.4" x2="-8.8" y2="4" layer="31"/>
<rectangle x1="-11.35" y1="3.3" x2="-9.45" y2="4.1" layer="31"/>
<rectangle x1="-11.4" y1="3.25" x2="-8.4" y2="4.15" layer="29"/>
<rectangle x1="-9.6" y1="2.3" x2="-8.8" y2="2.9" layer="31"/>
<rectangle x1="-11.35" y1="2.2" x2="-9.45" y2="3" layer="31"/>
<rectangle x1="-11.4" y1="2.15" x2="-8.4" y2="3.05" layer="29"/>
<rectangle x1="-9.6" y1="1.2" x2="-8.8" y2="1.8" layer="31"/>
<rectangle x1="-11.35" y1="1.1" x2="-9.45" y2="1.9" layer="31"/>
<rectangle x1="-11.4" y1="1.05" x2="-8.4" y2="1.95" layer="29"/>
<rectangle x1="-9.6" y1="0.1" x2="-8.8" y2="0.7" layer="31"/>
<rectangle x1="-11.35" y1="0" x2="-9.45" y2="0.8" layer="31"/>
<rectangle x1="-11.4" y1="-0.05" x2="-8.4" y2="0.85" layer="29"/>
<rectangle x1="-9.6" y1="-1" x2="-8.8" y2="-0.4" layer="31"/>
<rectangle x1="-11.35" y1="-1.1" x2="-9.45" y2="-0.3" layer="31"/>
<rectangle x1="-11.4" y1="-1.15" x2="-8.4" y2="-0.25" layer="29"/>
<rectangle x1="-9.6" y1="-2.1" x2="-8.8" y2="-1.5" layer="31"/>
<rectangle x1="-11.35" y1="-2.2" x2="-9.45" y2="-1.4" layer="31"/>
<rectangle x1="-11.4" y1="-2.25" x2="-8.4" y2="-1.35" layer="29"/>
<rectangle x1="-9.6" y1="-3.2" x2="-8.8" y2="-2.6" layer="31"/>
<rectangle x1="-11.35" y1="-3.3" x2="-9.45" y2="-2.5" layer="31"/>
<rectangle x1="-11.4" y1="-3.35" x2="-8.4" y2="-2.45" layer="29"/>
<rectangle x1="-9.6" y1="-4.3" x2="-8.8" y2="-3.7" layer="31"/>
<rectangle x1="-11.35" y1="-4.4" x2="-9.45" y2="-3.6" layer="31"/>
<rectangle x1="-11.4" y1="-4.45" x2="-8.4" y2="-3.55" layer="29"/>
<rectangle x1="-9.6" y1="-5.4" x2="-8.8" y2="-4.8" layer="31"/>
<rectangle x1="-11.35" y1="-5.5" x2="-9.45" y2="-4.7" layer="31"/>
<rectangle x1="-11.4" y1="-5.55" x2="-8.4" y2="-4.65" layer="29"/>
<rectangle x1="-9.6" y1="-6.5" x2="-8.8" y2="-5.9" layer="31"/>
<rectangle x1="-11.35" y1="-6.6" x2="-9.45" y2="-5.8" layer="31"/>
<rectangle x1="-11.4" y1="-6.65" x2="-8.4" y2="-5.75" layer="29"/>
<rectangle x1="-9.6" y1="-7.6" x2="-8.8" y2="-7" layer="31"/>
<rectangle x1="-11.35" y1="-7.7" x2="-9.45" y2="-6.9" layer="31"/>
<rectangle x1="-11.4" y1="-7.75" x2="-8.4" y2="-6.85" layer="29"/>
<rectangle x1="-9.6" y1="-8.7" x2="-8.8" y2="-8.1" layer="31"/>
<rectangle x1="-11.35" y1="-8.8" x2="-9.45" y2="-8" layer="31"/>
<rectangle x1="-11.4" y1="-8.85" x2="-8.4" y2="-7.95" layer="29"/>
<rectangle x1="-9.6" y1="-9.8" x2="-8.8" y2="-9.2" layer="31"/>
<rectangle x1="-11.35" y1="-9.9" x2="-9.45" y2="-9.1" layer="31"/>
<rectangle x1="-11.4" y1="-9.95" x2="-8.4" y2="-9.05" layer="29"/>
<rectangle x1="-9.6" y1="-10.9" x2="-8.8" y2="-10.3" layer="31"/>
<rectangle x1="-11.35" y1="-11" x2="-9.45" y2="-10.2" layer="31"/>
<rectangle x1="-11.4" y1="-11.05" x2="-8.4" y2="-10.15" layer="29"/>
<rectangle x1="-9.6" y1="-12" x2="-8.8" y2="-11.4" layer="31"/>
<rectangle x1="-11.35" y1="-12.1" x2="-9.45" y2="-11.3" layer="31"/>
<rectangle x1="-11.4" y1="-12.15" x2="-8.4" y2="-11.25" layer="29"/>
<rectangle x1="-9.6" y1="-13.1" x2="-8.8" y2="-12.5" layer="31"/>
<rectangle x1="-11.35" y1="-13.2" x2="-9.45" y2="-12.4" layer="31"/>
<rectangle x1="-11.4" y1="-13.25" x2="-8.4" y2="-12.35" layer="29"/>
<rectangle x1="8.8" y1="-13.1" x2="9.6" y2="-12.5" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-13.2" x2="11.35" y2="-12.4" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-13.25" x2="11.4" y2="-12.35" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-12" x2="9.6" y2="-11.4" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-12.1" x2="11.35" y2="-11.3" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-12.15" x2="11.4" y2="-11.25" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-10.9" x2="9.6" y2="-10.3" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-11" x2="11.35" y2="-10.2" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-11.05" x2="11.4" y2="-10.15" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-9.8" x2="9.6" y2="-9.2" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-9.9" x2="11.35" y2="-9.1" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-9.95" x2="11.4" y2="-9.05" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-8.7" x2="9.6" y2="-8.1" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-8.8" x2="11.35" y2="-8" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-8.85" x2="11.4" y2="-7.95" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-7.6" x2="9.6" y2="-7" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-7.7" x2="11.35" y2="-6.9" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-7.75" x2="11.4" y2="-6.85" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-6.5" x2="9.6" y2="-5.9" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-6.6" x2="11.35" y2="-5.8" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-6.65" x2="11.4" y2="-5.75" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-5.4" x2="9.6" y2="-4.8" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-5.5" x2="11.35" y2="-4.7" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-5.55" x2="11.4" y2="-4.65" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-4.3" x2="9.6" y2="-3.7" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-4.4" x2="11.35" y2="-3.6" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-4.45" x2="11.4" y2="-3.55" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-3.2" x2="9.6" y2="-2.6" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-3.3" x2="11.35" y2="-2.5" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-3.35" x2="11.4" y2="-2.45" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-2.1" x2="9.6" y2="-1.5" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-2.2" x2="11.35" y2="-1.4" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-2.25" x2="11.4" y2="-1.35" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="-1" x2="9.6" y2="-0.4" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="-1.1" x2="11.35" y2="-0.3" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-1.15" x2="11.4" y2="-0.25" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="0.1" x2="9.6" y2="0.7" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="0" x2="11.35" y2="0.8" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="-0.05" x2="11.4" y2="0.85" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="1.2" x2="9.6" y2="1.8" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="1.1" x2="11.35" y2="1.9" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="1.05" x2="11.4" y2="1.95" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="2.3" x2="9.6" y2="2.9" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="2.2" x2="11.35" y2="3" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="2.15" x2="11.4" y2="3.05" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="3.4" x2="9.6" y2="4" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="3.3" x2="11.35" y2="4.1" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="3.25" x2="11.4" y2="4.15" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="4.5" x2="9.6" y2="5.1" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="4.4" x2="11.35" y2="5.2" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="4.35" x2="11.4" y2="5.25" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="5.6" x2="9.6" y2="6.2" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="5.5" x2="11.35" y2="6.3" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="5.45" x2="11.4" y2="6.35" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="6.7" x2="9.6" y2="7.3" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="6.6" x2="11.35" y2="7.4" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="6.55" x2="11.4" y2="7.45" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="7.8" x2="9.6" y2="8.4" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="7.7" x2="11.35" y2="8.5" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="7.65" x2="11.4" y2="8.55" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="8.9" x2="9.6" y2="9.5" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="8.8" x2="11.35" y2="9.6" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="8.75" x2="11.4" y2="9.65" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="10" x2="9.6" y2="10.6" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="9.9" x2="11.35" y2="10.7" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="9.85" x2="11.4" y2="10.75" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="11.1" x2="9.6" y2="11.7" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="11" x2="11.35" y2="11.8" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="10.95" x2="11.4" y2="11.85" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="12.2" x2="9.6" y2="12.8" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="12.1" x2="11.35" y2="12.9" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="12.05" x2="11.4" y2="12.95" layer="29" rot="R180"/>
<rectangle x1="8.8" y1="13.3" x2="9.6" y2="13.9" layer="31" rot="R180"/>
<rectangle x1="9.45" y1="13.2" x2="11.35" y2="14" layer="31" rot="R180"/>
<rectangle x1="8.4" y1="13.15" x2="11.4" y2="14.05" layer="29" rot="R180"/>
<hole x="-4.39" y="11.88" drill="1.31"/>
<hole x="3.23" y="12.96" drill="1.29"/>
<hole x="6.16" y="6.02" drill="1.7"/>
<hole x="-4.07" y="3.42" drill="1.4"/>
<hole x="-3.47" y="2.12" drill="1.24"/>
</package>
</packages>
<symbols>
<symbol name="LEON-G100/G200">
<wire x1="-20.32" y1="33.02" x2="20.32" y2="33.02" width="0.254" layer="94"/>
<wire x1="20.32" y1="33.02" x2="20.32" y2="-33.02" width="0.254" layer="94"/>
<wire x1="20.32" y1="-33.02" x2="-20.32" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-33.02" x2="-20.32" y2="33.02" width="0.254" layer="94"/>
<text x="-20.32" y="34.29" size="1.778" layer="95">&gt;NAME</text>
<text x="-20.32" y="-35.56" size="1.778" layer="96">&gt;VALUE</text>
<pin name="ANT" x="22.86" y="22.86" length="short" rot="R180"/>
<pin name="GND@1" x="-22.86" y="30.48" length="short" direction="pwr"/>
<pin name="GND@2" x="-22.86" y="25.4" length="short" direction="pwr"/>
<pin name="GND@3" x="-22.86" y="17.78" length="short" direction="pwr"/>
<pin name="GND@4" x="-22.86" y="15.24" length="short" direction="pwr"/>
<pin name="GND@5" x="-22.86" y="12.7" length="short" direction="pwr"/>
<pin name="GND@6" x="-22.86" y="-10.16" length="short" direction="pwr"/>
<pin name="GND@7" x="-22.86" y="-30.48" length="short" direction="pwr"/>
<pin name="GND@8" x="22.86" y="-5.08" length="short" direction="pwr" rot="R180"/>
<pin name="GND@9" x="22.86" y="17.78" length="short" direction="pwr" rot="R180"/>
<pin name="GND@10" x="22.86" y="20.32" length="short" direction="pwr" rot="R180"/>
<pin name="GND@11" x="22.86" y="25.4" length="short" direction="pwr" rot="R180"/>
<pin name="GND@12" x="22.86" y="27.94" length="short" direction="pwr" rot="R180"/>
<pin name="VCC" x="22.86" y="30.48" length="short" direction="pwr" rot="R180"/>
<pin name="V_CHARGE" x="-22.86" y="22.86" length="short" direction="in"/>
<pin name="V_BCKP" x="-22.86" y="27.94" length="short" direction="in"/>
<pin name="CHARGE_SENSE/ADC1" x="-22.86" y="20.32" length="short" direction="in"/>
<pin name="DSR" x="-22.86" y="10.16" length="short" direction="in"/>
<pin name="RI" x="-22.86" y="7.62" length="short" direction="in"/>
<pin name="DCD" x="-22.86" y="5.08" length="short" direction="in"/>
<pin name="DTR" x="-22.86" y="2.54" length="short" direction="in"/>
<pin name="RTS" x="-22.86" y="0" length="short" direction="out"/>
<pin name="CTS" x="-22.86" y="-2.54" length="short" direction="in"/>
<pin name="TXD" x="-22.86" y="-5.08" length="short" direction="out"/>
<pin name="RXD" x="-22.86" y="-7.62" length="short" direction="in"/>
<pin name="GPIO1" x="-22.86" y="-17.78" length="short" direction="in"/>
<pin name="GPIO2" x="-22.86" y="-20.32" length="short" direction="in"/>
<pin name="!RESET" x="-22.86" y="-22.86" length="short" direction="in"/>
<pin name="RESERVED@1" x="-22.86" y="-25.4" length="short" direction="pas"/>
<pin name="RESERVED@2" x="-22.86" y="-27.94" length="short" direction="pas"/>
<pin name="I2S_WA" x="22.86" y="-30.48" length="short" direction="out" rot="R180"/>
<pin name="I2S_TXD" x="22.86" y="-27.94" length="short" direction="out" rot="R180"/>
<pin name="I2S_CLK" x="22.86" y="-25.4" length="short" direction="out" rot="R180"/>
<pin name="I2S_RXD" x="22.86" y="-22.86" length="short" direction="out" rot="R180"/>
<pin name="SCL" x="22.86" y="-20.32" length="short" direction="in" rot="R180"/>
<pin name="SDA" x="22.86" y="-17.78" length="short" direction="in" rot="R180"/>
<pin name="SIM_CLK" x="22.86" y="-15.24" length="short" direction="in" rot="R180"/>
<pin name="SIM_IO" x="22.86" y="-12.7" length="short" direction="in" rot="R180"/>
<pin name="SIM_RST" x="22.86" y="-10.16" length="short" direction="in" rot="R180"/>
<pin name="VSIM" x="22.86" y="-7.62" length="short" direction="in" rot="R180"/>
<pin name="HS_P" x="22.86" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="SPK_P" x="22.86" y="0" length="short" direction="out" rot="R180"/>
<pin name="SPK_N" x="22.86" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="RESERVED@3" x="22.86" y="5.08" length="short" direction="pas" rot="R180"/>
<pin name="HS_DET" x="-22.86" y="-12.7" length="short" direction="in"/>
<pin name="PWR_ON" x="-22.86" y="-15.24" length="short" direction="in"/>
<pin name="MIC_BIAS2" x="22.86" y="7.62" length="short" direction="in" rot="R180"/>
<pin name="MIC_GND2" x="22.86" y="10.16" length="short" direction="pas" rot="R180"/>
<pin name="MIC_GND1" x="22.86" y="12.7" length="short" direction="pas" rot="R180"/>
<pin name="MIC_BIAS1" x="22.86" y="15.24" length="short" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LEON-G100/G200" prefix="G">
<description>&lt;b&gt;LEON-G100/G200 Quad Band GSM/GPRS Voice and Data Modules&lt;/b&gt;&lt;p&gt;
Source: http://www.u-blox.com</description>
<gates>
<gate name="G$1" symbol="LEON-G100/G200" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LEON-G100/G200">
<connects>
<connect gate="G$1" pin="!RESET" pad="22"/>
<connect gate="G$1" pin="ANT" pad="47"/>
<connect gate="G$1" pin="CHARGE_SENSE/ADC1" pad="5"/>
<connect gate="G$1" pin="CTS" pad="14"/>
<connect gate="G$1" pin="DCD" pad="11"/>
<connect gate="G$1" pin="DSR" pad="9"/>
<connect gate="G$1" pin="DTR" pad="12"/>
<connect gate="G$1" pin="GND@1" pad="1"/>
<connect gate="G$1" pin="GND@10" pad="46"/>
<connect gate="G$1" pin="GND@11" pad="48"/>
<connect gate="G$1" pin="GND@12" pad="49"/>
<connect gate="G$1" pin="GND@2" pad="3"/>
<connect gate="G$1" pin="GND@3" pad="6"/>
<connect gate="G$1" pin="GND@4" pad="7"/>
<connect gate="G$1" pin="GND@5" pad="8"/>
<connect gate="G$1" pin="GND@6" pad="17"/>
<connect gate="G$1" pin="GND@7" pad="25"/>
<connect gate="G$1" pin="GND@8" pad="36"/>
<connect gate="G$1" pin="GND@9" pad="45"/>
<connect gate="G$1" pin="GPIO1" pad="20"/>
<connect gate="G$1" pin="GPIO2" pad="21"/>
<connect gate="G$1" pin="HS_DET" pad="18"/>
<connect gate="G$1" pin="HS_P" pad="37"/>
<connect gate="G$1" pin="I2S_CLK" pad="28"/>
<connect gate="G$1" pin="I2S_RXD" pad="29"/>
<connect gate="G$1" pin="I2S_TXD" pad="27"/>
<connect gate="G$1" pin="I2S_WA" pad="26"/>
<connect gate="G$1" pin="MIC_BIAS1" pad="44"/>
<connect gate="G$1" pin="MIC_BIAS2" pad="41"/>
<connect gate="G$1" pin="MIC_GND1" pad="43"/>
<connect gate="G$1" pin="MIC_GND2" pad="42"/>
<connect gate="G$1" pin="PWR_ON" pad="19"/>
<connect gate="G$1" pin="RESERVED@1" pad="23"/>
<connect gate="G$1" pin="RESERVED@2" pad="24"/>
<connect gate="G$1" pin="RESERVED@3" pad="40"/>
<connect gate="G$1" pin="RI" pad="10"/>
<connect gate="G$1" pin="RTS" pad="13"/>
<connect gate="G$1" pin="RXD" pad="16"/>
<connect gate="G$1" pin="SCL" pad="30"/>
<connect gate="G$1" pin="SDA" pad="31"/>
<connect gate="G$1" pin="SIM_CLK" pad="32"/>
<connect gate="G$1" pin="SIM_IO" pad="33"/>
<connect gate="G$1" pin="SIM_RST" pad="34"/>
<connect gate="G$1" pin="SPK_N" pad="39"/>
<connect gate="G$1" pin="SPK_P" pad="38"/>
<connect gate="G$1" pin="TXD" pad="15"/>
<connect gate="G$1" pin="VCC" pad="50"/>
<connect gate="G$1" pin="VSIM" pad="35"/>
<connect gate="G$1" pin="V_BCKP" pad="2"/>
<connect gate="G$1" pin="V_CHARGE" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SJ">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.397" y1="-1.016" x2="-1.397" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.397" y1="1.016" x2="1.651" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.651" y1="0.762" x2="-1.397" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.651" y1="-0.762" x2="-1.397" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="-1.016" x2="1.651" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="1.651" y1="-0.762" x2="1.651" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="-0.762" x2="-1.651" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="1.016" x2="1.397" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0" x2="-1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<wire x1="0.254" y1="0.127" x2="0.254" y2="-0.127" width="1.27" layer="51" curve="-180" cap="flat"/>
<smd name="1" x="-0.762" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<smd name="2" x="0.762" y="0" dx="1.1684" dy="1.6002" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.4001" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="-0.0762" y1="-0.9144" x2="0.0762" y2="0.9144" layer="29"/>
</package>
<package name="SJW">
<description>&lt;b&gt;Solder jumper&lt;/b&gt;</description>
<wire x1="1.905" y1="-1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.524" x2="2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="1.27" x2="-1.905" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.159" y1="-1.27" x2="-1.905" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="1.905" y1="-1.524" x2="2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="2.159" y1="-1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-1.27" x2="-2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.524" x2="1.905" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0" x2="2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0" x2="-2.032" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.762" x2="0.762" y2="-0.762" width="0.1524" layer="51" curve="-180"/>
<wire x1="-0.762" y1="0.762" x2="-0.762" y2="-0.762" width="0.1524" layer="51" curve="180"/>
<smd name="1" x="-1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<smd name="2" x="1.27" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="-2.159" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="1" y="0" size="0.02" layer="27">&gt;VALUE</text>
<rectangle x1="0.762" y1="-0.762" x2="1.016" y2="0.762" layer="51"/>
<rectangle x1="1.016" y1="-0.635" x2="1.27" y2="0.635" layer="51"/>
<rectangle x1="1.27" y1="-0.508" x2="1.397" y2="0.508" layer="51"/>
<rectangle x1="1.397" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.016" y1="-0.762" x2="-0.762" y2="0.762" layer="51"/>
<rectangle x1="-1.27" y1="-0.635" x2="-1.016" y2="0.635" layer="51"/>
<rectangle x1="-1.397" y1="-0.508" x2="-1.27" y2="0.508" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.397" y2="0.254" layer="51"/>
<rectangle x1="0.9652" y1="-0.7112" x2="1.0922" y2="-0.5842" layer="51"/>
<rectangle x1="1.3462" y1="-0.3556" x2="1.4732" y2="-0.2286" layer="51"/>
<rectangle x1="1.3462" y1="0.2032" x2="1.4732" y2="0.3302" layer="51"/>
<rectangle x1="0.9652" y1="0.5842" x2="1.0922" y2="0.7112" layer="51"/>
<rectangle x1="-1.0922" y1="-0.7112" x2="-0.9652" y2="-0.5842" layer="51"/>
<rectangle x1="-1.4478" y1="-0.3302" x2="-1.3208" y2="-0.2032" layer="51"/>
<rectangle x1="-1.4732" y1="0.2032" x2="-1.3462" y2="0.3302" layer="51"/>
<rectangle x1="-1.1176" y1="0.5842" x2="-0.9906" y2="0.7112" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="SJ">
<wire x1="0.381" y1="0.635" x2="0.381" y2="-0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="-0.381" y1="-0.635" x2="-0.381" y2="0.635" width="1.27" layer="94" curve="-180" cap="flat"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SJ" prefix="SJ" uservalue="yes">
<description>SMD solder &lt;b&gt;JUMPER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="SJ" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SJ">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="W" package="SJW">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
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
<class number="1" name="antenna" width="0.8001" drill="0">
<clearance class="1" value="0.1524"/>
</class>
<class number="2" name="cell_vcc" width="0.8001" drill="0">
</class>
</classes>
<parts>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY8" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY10" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY12" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY14" library="supply2" deviceset="GND" device=""/>
<part name="FRAME1" library="frames" deviceset="FRAME_A_L" device=""/>
<part name="FIX" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="DBG" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="SUPPLY15" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY16" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY17" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY18" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY19" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY20" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY21" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY22" library="supply2" deviceset="GND" device=""/>
<part name="BAT1" library="con-molex" deviceset="53?-02" device="047"/>
<part name="PWR" library="led" deviceset="LED" device="CHIPLED_0603"/>
<part name="SUPPLY23" library="supply2" deviceset="GND" device=""/>
<part name="LPC" library="MyLib" deviceset="LPC824M201JDH20" device="" value="LPC824"/>
<part name="SIM" library="MyLib" deviceset="SIM_CARD" device=""/>
<part name="HELDO" library="MyLib" deviceset="MIC38300_HELDO" device="" value="MIC38300"/>
<part name="R1" library="MyLib" deviceset="R0603" device=""/>
<part name="R2" library="MyLib" deviceset="R0603" device=""/>
<part name="R3" library="MyLib" deviceset="R0603" device=""/>
<part name="R4" library="MyLib" deviceset="R0603" device=""/>
<part name="R5" library="MyLib" deviceset="R0603" device=""/>
<part name="R6" library="MyLib" deviceset="R0603" device=""/>
<part name="R7" library="MyLib" deviceset="R0603" device=""/>
<part name="R8" library="MyLib" deviceset="R0603" device=""/>
<part name="R9" library="MyLib" deviceset="R0603" device=""/>
<part name="C6" library="MyLib" deviceset="C0603" device="" value="47p"/>
<part name="C7" library="MyLib" deviceset="C0603" device="" value="47p"/>
<part name="C8" library="MyLib" deviceset="C0603" device="" value="47p"/>
<part name="C9" library="MyLib" deviceset="C0603" device="" value="47p"/>
<part name="C10" library="MyLib" deviceset="C0603" device="" value="100n"/>
<part name="C1" library="MyLib" deviceset="C0603" device="" value="10u"/>
<part name="C4" library="MyLib" deviceset="C0603" device="" value="10u"/>
<part name="C5" library="MyLib" deviceset="C0603" device="" value="10u"/>
<part name="C2" library="MyLib" deviceset="C0603" device="" value="1u"/>
<part name="C3" library="MyLib" deviceset="C0603" device="" value="10u"/>
<part name="FTDI" library="con-molex" deviceset="53?-04" device="047"/>
<part name="ANT" library="MyLib" deviceset="SMA-" device=""/>
<part name="GPS" library="MyLib" deviceset="PA6H" device=""/>
<part name="BTN" library="MyLib" deviceset="SMT_BTN" device=""/>
<part name="GSM" library="u-blox" deviceset="LEON-G100/G200" device=""/>
<part name="BAT2" library="con-molex" deviceset="53?-02" device="047"/>
<part name="SUPPLY24" library="supply2" deviceset="GND" device=""/>
<part name="R10" library="MyLib" deviceset="R0603" device=""/>
<part name="R11" library="MyLib" deviceset="R0603" device=""/>
<part name="SJ1" library="jumper" deviceset="SJ" device=""/>
<part name="C11" library="MyLib" deviceset="C0603" device="" value="10u"/>
<part name="R12" library="MyLib" deviceset="R0603" device=""/>
<part name="M1" library="MyLib" deviceset="AO3407A" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="76.2" y="198.12" size="6.4516" layer="97">Cell</text>
<text x="180.34" y="198.12" size="6.4516" layer="97">LPC</text>
<text x="187.96" y="144.78" size="6.4516" layer="97">GPS</text>
<text x="195.58" y="96.52" size="6.4516" layer="97">Power</text>
<text x="86.36" y="104.14" size="6.4516" layer="97">SIM Card</text>
<text x="17.78" y="78.74" size="6.4516" layer="97">Battery</text>
<text x="246.38" y="144.78" size="6.4516" layer="97">LEDs</text>
<text x="17.78" y="25.4" size="6.4516" layer="97">Button</text>
<text x="129.54" y="27.94" size="6.4516" layer="97">ANTENNA</text>
<text x="93.98" y="27.94" size="6.4516" layer="97">FTDI</text>
</plain>
<instances>
<instance part="SUPPLY1" gate="GND" x="35.56" y="177.8" rot="R270"/>
<instance part="SUPPLY2" gate="GND" x="35.56" y="190.5" rot="R270"/>
<instance part="SUPPLY3" gate="GND" x="35.56" y="185.42" rot="R270"/>
<instance part="SUPPLY4" gate="GND" x="43.18" y="149.86" rot="R270"/>
<instance part="SUPPLY5" gate="GND" x="43.18" y="129.54" rot="R270"/>
<instance part="SUPPLY6" gate="GND" x="127" y="154.94" rot="R90"/>
<instance part="SUPPLY7" gate="GND" x="127" y="187.96" rot="R90"/>
<instance part="SUPPLY8" gate="GND" x="127" y="177.8" rot="R90"/>
<instance part="SUPPLY9" gate="GND" x="144.78" y="121.92" rot="R270"/>
<instance part="SUPPLY10" gate="GND" x="139.7" y="134.62" rot="R270"/>
<instance part="SUPPLY11" gate="GND" x="226.06" y="137.16" rot="R90"/>
<instance part="SUPPLY12" gate="GND" x="226.06" y="119.38" rot="R90"/>
<instance part="SUPPLY13" gate="GND" x="228.6" y="180.34" rot="R90"/>
<instance part="SUPPLY14" gate="GND" x="109.22" y="7.62"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="172.72" y="0"/>
<instance part="FIX" gate="G$1" x="243.84" y="121.92"/>
<instance part="DBG" gate="G$1" x="254" y="121.92"/>
<instance part="SUPPLY15" gate="GND" x="243.84" y="111.76"/>
<instance part="SUPPLY16" gate="GND" x="254" y="111.76"/>
<instance part="SUPPLY17" gate="GND" x="129.54" y="66.04"/>
<instance part="SUPPLY18" gate="GND" x="43.18" y="66.04"/>
<instance part="SUPPLY19" gate="GND" x="208.28" y="48.26"/>
<instance part="SUPPLY20" gate="GND" x="248.92" y="175.26"/>
<instance part="SUPPLY21" gate="GND" x="60.96" y="7.62"/>
<instance part="SUPPLY22" gate="GND" x="147.32" y="10.16"/>
<instance part="BAT1" gate="-1" x="30.48" y="68.58" rot="R180"/>
<instance part="BAT1" gate="-2" x="30.48" y="71.12" rot="R180"/>
<instance part="PWR" gate="G$1" x="264.16" y="121.92"/>
<instance part="SUPPLY23" gate="GND" x="264.16" y="111.76"/>
<instance part="LPC" gate="G$1" x="187.96" y="180.34"/>
<instance part="SIM" gate="G$1" x="144.78" y="96.52"/>
<instance part="HELDO" gate="G$1" x="208.28" y="76.2"/>
<instance part="R1" gate="G$1" x="264.16" y="132.08" rot="R90"/>
<instance part="R2" gate="G$1" x="254" y="132.08" rot="R90"/>
<instance part="R3" gate="G$1" x="243.84" y="132.08" rot="R90"/>
<instance part="R4" gate="G$1" x="248.92" y="195.58" rot="R90"/>
<instance part="R5" gate="G$1" x="248.92" y="185.42" rot="R90"/>
<instance part="R6" gate="G$1" x="30.48" y="152.4" rot="R90"/>
<instance part="R7" gate="G$1" x="238.76" y="83.82" rot="R180"/>
<instance part="R8" gate="G$1" x="231.14" y="66.04" rot="R270"/>
<instance part="R9" gate="G$1" x="231.14" y="55.88" rot="R270"/>
<instance part="C6" gate="G$1" x="91.44" y="76.2"/>
<instance part="C7" gate="G$1" x="99.06" y="76.2"/>
<instance part="C8" gate="G$1" x="106.68" y="76.2"/>
<instance part="C9" gate="G$1" x="114.3" y="76.2"/>
<instance part="C10" gate="G$1" x="121.92" y="76.2"/>
<instance part="C1" gate="G$1" x="180.34" y="86.36"/>
<instance part="C4" gate="G$1" x="238.76" y="63.5"/>
<instance part="C5" gate="G$1" x="246.38" y="63.5"/>
<instance part="C2" gate="G$1" x="185.42" y="71.12"/>
<instance part="C3" gate="G$1" x="251.46" y="86.36"/>
<instance part="FTDI" gate="-1" x="96.52" y="10.16" rot="R180"/>
<instance part="FTDI" gate="-2" x="96.52" y="12.7" rot="R180"/>
<instance part="FTDI" gate="-3" x="96.52" y="15.24" rot="R180"/>
<instance part="FTDI" gate="-4" x="96.52" y="17.78" rot="R180"/>
<instance part="ANT" gate="G$1" x="149.86" y="17.78" rot="R270"/>
<instance part="GPS" gate="G$1" x="195.58" y="129.54"/>
<instance part="BTN" gate="G$1" x="38.1" y="15.24"/>
<instance part="GSM" gate="G$1" x="86.36" y="160.02"/>
<instance part="BAT2" gate="-1" x="30.48" y="55.88" rot="R180"/>
<instance part="BAT2" gate="-2" x="30.48" y="58.42" rot="R180"/>
<instance part="SUPPLY24" gate="GND" x="43.18" y="53.34"/>
<instance part="R10" gate="G$1" x="25.4" y="152.4" rot="R90"/>
<instance part="R11" gate="G$1" x="58.42" y="27.94" rot="R90"/>
<instance part="SJ1" gate="1" x="157.48" y="132.08"/>
<instance part="C11" gate="G$1" x="160.02" y="142.24"/>
<instance part="R12" gate="G$1" x="238.76" y="180.34" rot="R90"/>
<instance part="M1" gate="G$1" x="152.4" y="149.86" rot="MR270"/>
</instances>
<busses>
</busses>
<nets>
<net name="FTDI2LPC" class="0">
<segment>
<wire x1="210.82" y1="187.96" x2="215.9" y2="187.96" width="0.1524" layer="91"/>
<label x="215.9" y="187.96" size="1.778" layer="95"/>
<pinref part="LPC" gate="G$1" pin="PIO0_0"/>
</segment>
<segment>
<wire x1="99.06" y1="15.24" x2="109.22" y2="15.24" width="0.1524" layer="91"/>
<label x="109.22" y="15.24" size="1.778" layer="95" rot="MR180"/>
<pinref part="FTDI" gate="-3" pin="S"/>
</segment>
</net>
<net name="ISP_ENTRY" class="0">
<segment>
<wire x1="165.1" y1="182.88" x2="160.02" y2="182.88" width="0.1524" layer="91"/>
<label x="160.02" y="182.88" size="1.778" layer="95" rot="MR0"/>
<pinref part="LPC" gate="G$1" pin="PIO0_12"/>
</segment>
<segment>
<wire x1="48.26" y1="20.32" x2="58.42" y2="20.32" width="0.1524" layer="91"/>
<wire x1="58.42" y1="20.32" x2="58.42" y2="22.86" width="0.1524" layer="91"/>
<label x="58.42" y="20.32" size="1.778" layer="95" rot="MR180"/>
<pinref part="BTN" gate="G$1" pin="P$2"/>
<pinref part="R11" gate="G$1" pin="1"/>
</segment>
</net>
<net name="LPC2FTDI" class="0">
<segment>
<wire x1="99.06" y1="17.78" x2="109.22" y2="17.78" width="0.1524" layer="91"/>
<label x="109.22" y="17.78" size="1.778" layer="95" rot="MR180"/>
<pinref part="FTDI" gate="-4" pin="S"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_11"/>
<wire x1="165.1" y1="170.18" x2="160.02" y2="170.18" width="0.1524" layer="91"/>
<label x="160.02" y="170.18" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="DBG_LED" class="0">
<segment>
<wire x1="254" y1="139.7" x2="254" y2="137.16" width="0.1524" layer="91"/>
<label x="254" y="139.7" size="1.778" layer="95"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="210.82" y1="172.72" x2="215.9" y2="172.72" width="0.1524" layer="91"/>
<label x="215.9" y="172.72" size="1.778" layer="95"/>
<pinref part="LPC" gate="G$1" pin="PIO0_9"/>
</segment>
</net>
<net name="FIX_LED" class="0">
<segment>
<wire x1="175.26" y1="129.54" x2="170.18" y2="129.54" width="0.1524" layer="91"/>
<label x="170.18" y="129.54" size="1.778" layer="95" rot="MR0"/>
<pinref part="GPS" gate="G$1" pin="3D-FIX"/>
</segment>
<segment>
<wire x1="243.84" y1="139.7" x2="243.84" y2="137.16" width="0.1524" layer="91"/>
<label x="243.84" y="139.7" size="1.778" layer="95"/>
<label x="243.84" y="139.7" size="1.778" layer="95"/>
<label x="243.84" y="139.7" size="1.778" layer="95"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="GPS2LPC" class="0">
<segment>
<label x="160.02" y="119.38" size="1.778" layer="95" rot="MR0"/>
<wire x1="160.02" y1="119.38" x2="175.26" y2="119.38" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="TX"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_1"/>
<wire x1="210.82" y1="170.18" x2="215.9" y2="170.18" width="0.1524" layer="91"/>
<label x="215.9" y="170.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="LPC2GPS" class="0">
<segment>
<label x="160.02" y="116.84" size="1.778" layer="95" rot="MR0"/>
<wire x1="160.02" y1="116.84" x2="175.26" y2="116.84" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="RX"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_15"/>
<wire x1="210.82" y1="167.64" x2="215.9" y2="167.64" width="0.1524" layer="91"/>
<label x="215.9" y="167.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="ANTENNA" class="1">
<segment>
<wire x1="109.22" y1="182.88" x2="114.3" y2="182.88" width="0.1524" layer="91"/>
<label x="114.3" y="182.88" size="1.778" layer="95"/>
<pinref part="GSM" gate="G$1" pin="ANT"/>
</segment>
<segment>
<wire x1="149.86" y1="15.24" x2="149.86" y2="12.7" width="0.1524" layer="91"/>
<label x="149.86" y="12.7" size="1.778" layer="95" rot="MR180"/>
<pinref part="ANT" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VSIM" class="0">
<segment>
<wire x1="109.22" y1="152.4" x2="114.3" y2="152.4" width="0.1524" layer="91"/>
<label x="114.3" y="152.4" size="1.778" layer="95"/>
<pinref part="GSM" gate="G$1" pin="VSIM"/>
</segment>
<segment>
<wire x1="134.62" y1="99.06" x2="121.92" y2="99.06" width="0.1524" layer="91"/>
<wire x1="121.92" y1="99.06" x2="114.3" y2="99.06" width="0.1524" layer="91"/>
<label x="114.3" y="99.06" size="1.778" layer="95" rot="MR0"/>
<wire x1="114.3" y1="78.74" x2="114.3" y2="99.06" width="0.1524" layer="91"/>
<wire x1="121.92" y1="78.74" x2="121.92" y2="99.06" width="0.1524" layer="91"/>
<junction x="121.92" y="99.06"/>
<wire x1="134.62" y1="101.6" x2="121.92" y2="101.6" width="0.1524" layer="91"/>
<wire x1="121.92" y1="101.6" x2="121.92" y2="99.06" width="0.1524" layer="91"/>
<pinref part="SIM" gate="G$1" pin="CCVCC"/>
<pinref part="SIM" gate="G$1" pin="CCVPP"/>
<pinref part="C9" gate="G$1" pin="1"/>
<pinref part="C10" gate="G$1" pin="1"/>
</segment>
</net>
<net name="SIM_RST" class="0">
<segment>
<wire x1="109.22" y1="149.86" x2="114.3" y2="149.86" width="0.1524" layer="91"/>
<label x="114.3" y="149.86" size="1.778" layer="95"/>
<pinref part="GSM" gate="G$1" pin="SIM_RST"/>
</segment>
<segment>
<wire x1="134.62" y1="91.44" x2="91.44" y2="91.44" width="0.1524" layer="91"/>
<label x="91.44" y="91.44" size="1.778" layer="95" rot="MR0"/>
<wire x1="91.44" y1="78.74" x2="91.44" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SIM" gate="G$1" pin="CCRST"/>
<pinref part="C6" gate="G$1" pin="1"/>
</segment>
</net>
<net name="SIM_IO" class="0">
<segment>
<wire x1="109.22" y1="147.32" x2="114.3" y2="147.32" width="0.1524" layer="91"/>
<label x="114.3" y="147.32" size="1.778" layer="95"/>
<pinref part="GSM" gate="G$1" pin="SIM_IO"/>
</segment>
<segment>
<wire x1="134.62" y1="96.52" x2="106.68" y2="96.52" width="0.1524" layer="91"/>
<wire x1="106.68" y1="78.74" x2="106.68" y2="96.52" width="0.1524" layer="91"/>
<pinref part="SIM" gate="G$1" pin="CCIO"/>
<pinref part="C8" gate="G$1" pin="1"/>
<label x="106.68" y="96.52" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="SIM_CLK" class="0">
<segment>
<wire x1="109.22" y1="144.78" x2="114.3" y2="144.78" width="0.1524" layer="91"/>
<label x="114.3" y="144.78" size="1.778" layer="95"/>
<pinref part="GSM" gate="G$1" pin="SIM_CLK"/>
</segment>
<segment>
<wire x1="134.62" y1="93.98" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<label x="99.06" y="93.98" size="1.778" layer="95" rot="MR0"/>
<wire x1="99.06" y1="78.74" x2="99.06" y2="93.98" width="0.1524" layer="91"/>
<pinref part="SIM" gate="G$1" pin="CCCLK"/>
<pinref part="C7" gate="G$1" pin="1"/>
</segment>
</net>
<net name="CELL_PWR_ON" class="0">
<segment>
<wire x1="63.5" y1="144.78" x2="30.48" y2="144.78" width="0.1524" layer="91"/>
<label x="60.96" y="144.78" size="1.778" layer="95" rot="MR0"/>
<wire x1="30.48" y1="144.78" x2="30.48" y2="147.32" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="GSM" gate="G$1" pin="PWR_ON"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_2"/>
<wire x1="165.1" y1="172.72" x2="160.02" y2="172.72" width="0.1524" layer="91"/>
<label x="160.02" y="172.72" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="V_BCKP" class="0">
<segment>
<wire x1="30.48" y1="157.48" x2="30.48" y2="187.96" width="0.1524" layer="91"/>
<wire x1="30.48" y1="187.96" x2="63.5" y2="187.96" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="GSM" gate="G$1" pin="V_BCKP"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="25.4" y1="157.48" x2="25.4" y2="187.96" width="0.1524" layer="91"/>
<wire x1="25.4" y1="187.96" x2="30.48" y2="187.96" width="0.1524" layer="91"/>
<junction x="30.48" y="187.96"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<wire x1="63.5" y1="185.42" x2="38.1" y2="185.42" width="0.1524" layer="91"/>
<pinref part="GSM" gate="G$1" pin="GND@2"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<wire x1="63.5" y1="190.5" x2="38.1" y2="190.5" width="0.1524" layer="91"/>
<pinref part="GSM" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<wire x1="63.5" y1="177.8" x2="58.42" y2="177.8" width="0.1524" layer="91"/>
<wire x1="63.5" y1="172.72" x2="58.42" y2="172.72" width="0.1524" layer="91"/>
<wire x1="63.5" y1="175.26" x2="58.42" y2="175.26" width="0.1524" layer="91"/>
<wire x1="58.42" y1="172.72" x2="58.42" y2="175.26" width="0.1524" layer="91"/>
<wire x1="58.42" y1="177.8" x2="58.42" y2="175.26" width="0.1524" layer="91"/>
<junction x="58.42" y="175.26"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="58.42" y1="177.8" x2="38.1" y2="177.8" width="0.1524" layer="91"/>
<junction x="58.42" y="177.8"/>
<pinref part="GSM" gate="G$1" pin="GND@3"/>
<pinref part="GSM" gate="G$1" pin="GND@4"/>
<pinref part="GSM" gate="G$1" pin="GND@5"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="63.5" y1="149.86" x2="45.72" y2="149.86" width="0.1524" layer="91"/>
<pinref part="GSM" gate="G$1" pin="GND@6"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="63.5" y1="129.54" x2="45.72" y2="129.54" width="0.1524" layer="91"/>
<pinref part="GSM" gate="G$1" pin="GND@7"/>
</segment>
<segment>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<wire x1="109.22" y1="154.94" x2="124.46" y2="154.94" width="0.1524" layer="91"/>
<pinref part="GSM" gate="G$1" pin="GND@8"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<wire x1="109.22" y1="177.8" x2="114.3" y2="177.8" width="0.1524" layer="91"/>
<wire x1="114.3" y1="177.8" x2="124.46" y2="177.8" width="0.1524" layer="91"/>
<wire x1="109.22" y1="180.34" x2="114.3" y2="180.34" width="0.1524" layer="91"/>
<wire x1="114.3" y1="180.34" x2="114.3" y2="177.8" width="0.1524" layer="91"/>
<junction x="114.3" y="177.8"/>
<pinref part="GSM" gate="G$1" pin="GND@9"/>
<pinref part="GSM" gate="G$1" pin="GND@10"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<wire x1="109.22" y1="187.96" x2="114.3" y2="187.96" width="0.1524" layer="91"/>
<wire x1="114.3" y1="187.96" x2="124.46" y2="187.96" width="0.1524" layer="91"/>
<wire x1="109.22" y1="185.42" x2="114.3" y2="185.42" width="0.1524" layer="91"/>
<wire x1="114.3" y1="185.42" x2="114.3" y2="187.96" width="0.1524" layer="91"/>
<junction x="114.3" y="187.96"/>
<pinref part="GSM" gate="G$1" pin="GND@11"/>
<pinref part="GSM" gate="G$1" pin="GND@12"/>
</segment>
<segment>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="175.26" y1="134.62" x2="160.02" y2="134.62" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="GND@3"/>
<pinref part="C11" gate="G$1" pin="2"/>
<wire x1="160.02" y1="134.62" x2="142.24" y2="134.62" width="0.1524" layer="91"/>
<wire x1="160.02" y1="137.16" x2="160.02" y2="134.62" width="0.1524" layer="91"/>
<junction x="160.02" y="134.62"/>
</segment>
<segment>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<wire x1="175.26" y1="121.92" x2="147.32" y2="121.92" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="GND@8"/>
</segment>
<segment>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
<wire x1="215.9" y1="137.16" x2="223.52" y2="137.16" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="GND@19"/>
</segment>
<segment>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
<wire x1="215.9" y1="119.38" x2="223.52" y2="119.38" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="GND@12"/>
</segment>
<segment>
<pinref part="FIX" gate="G$1" pin="C"/>
<wire x1="243.84" y1="116.84" x2="243.84" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SUPPLY15" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="DBG" gate="G$1" pin="C"/>
<wire x1="254" y1="116.84" x2="254" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SUPPLY16" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY17" gate="GND" pin="GND"/>
<wire x1="134.62" y1="88.9" x2="129.54" y2="88.9" width="0.1524" layer="91"/>
<wire x1="129.54" y1="88.9" x2="129.54" y2="68.58" width="0.1524" layer="91"/>
<wire x1="91.44" y1="71.12" x2="91.44" y2="68.58" width="0.1524" layer="91"/>
<wire x1="91.44" y1="68.58" x2="99.06" y2="68.58" width="0.1524" layer="91"/>
<wire x1="99.06" y1="68.58" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<wire x1="106.68" y1="68.58" x2="114.3" y2="68.58" width="0.1524" layer="91"/>
<wire x1="114.3" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<wire x1="121.92" y1="68.58" x2="121.92" y2="71.12" width="0.1524" layer="91"/>
<wire x1="114.3" y1="71.12" x2="114.3" y2="68.58" width="0.1524" layer="91"/>
<junction x="114.3" y="68.58"/>
<wire x1="106.68" y1="71.12" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<junction x="106.68" y="68.58"/>
<wire x1="99.06" y1="71.12" x2="99.06" y2="68.58" width="0.1524" layer="91"/>
<junction x="99.06" y="68.58"/>
<wire x1="129.54" y1="68.58" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
<junction x="129.54" y="68.58"/>
<junction x="121.92" y="68.58"/>
<pinref part="SIM" gate="G$1" pin="GND"/>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="C10" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="33.02" y1="68.58" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<pinref part="SUPPLY18" gate="GND" pin="GND"/>
<pinref part="BAT1" gate="-1" pin="S"/>
</segment>
<segment>
<wire x1="190.5" y1="63.5" x2="185.42" y2="63.5" width="0.1524" layer="91"/>
<wire x1="185.42" y1="63.5" x2="180.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="180.34" y1="81.28" x2="180.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="185.42" y1="66.04" x2="185.42" y2="63.5" width="0.1524" layer="91"/>
<junction x="185.42" y="63.5"/>
<wire x1="185.42" y1="50.8" x2="185.42" y2="63.5" width="0.1524" layer="91"/>
<wire x1="185.42" y1="50.8" x2="208.28" y2="50.8" width="0.1524" layer="91"/>
<wire x1="208.28" y1="50.8" x2="231.14" y2="50.8" width="0.1524" layer="91"/>
<wire x1="231.14" y1="50.8" x2="238.76" y2="50.8" width="0.1524" layer="91"/>
<wire x1="208.28" y1="55.88" x2="208.28" y2="50.8" width="0.1524" layer="91"/>
<junction x="208.28" y="50.8"/>
<wire x1="246.38" y1="58.42" x2="246.38" y2="50.8" width="0.1524" layer="91"/>
<wire x1="246.38" y1="50.8" x2="238.76" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SUPPLY19" gate="GND" pin="GND"/>
<wire x1="226.06" y1="78.74" x2="251.46" y2="78.74" width="0.1524" layer="91"/>
<wire x1="251.46" y1="78.74" x2="251.46" y2="81.28" width="0.1524" layer="91"/>
<wire x1="251.46" y1="78.74" x2="251.46" y2="50.8" width="0.1524" layer="91"/>
<wire x1="251.46" y1="50.8" x2="246.38" y2="50.8" width="0.1524" layer="91"/>
<junction x="251.46" y="78.74"/>
<junction x="246.38" y="50.8"/>
<wire x1="238.76" y1="58.42" x2="238.76" y2="50.8" width="0.1524" layer="91"/>
<junction x="238.76" y="50.8"/>
<pinref part="HELDO" gate="G$1" pin="EPAD"/>
<pinref part="HELDO" gate="G$1" pin="AGND"/>
<pinref part="HELDO" gate="G$1" pin="PGND"/>
<pinref part="R9" gate="G$1" pin="2"/>
<junction x="231.14" y="50.8"/>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C3" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="248.92" y1="180.34" x2="248.92" y2="177.8" width="0.1524" layer="91"/>
<pinref part="SUPPLY20" gate="GND" pin="GND"/>
<pinref part="R5" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="147.32" y1="15.24" x2="147.32" y2="12.7" width="0.1524" layer="91"/>
<pinref part="SUPPLY22" gate="GND" pin="GND"/>
<pinref part="ANT" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<pinref part="PWR" gate="G$1" pin="C"/>
<pinref part="SUPPLY23" gate="GND" pin="GND"/>
<wire x1="264.16" y1="116.84" x2="264.16" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY21" gate="GND" pin="GND"/>
<wire x1="60.96" y1="10.16" x2="48.26" y2="10.16" width="0.1524" layer="91"/>
<pinref part="BTN" gate="G$1" pin="P$4"/>
</segment>
<segment>
<pinref part="FTDI" gate="-1" pin="S"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
<wire x1="99.06" y1="10.16" x2="109.22" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="VSS"/>
<wire x1="210.82" y1="180.34" x2="213.36" y2="180.34" width="0.1524" layer="91"/>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<pinref part="LPC" gate="G$1" pin="VREFN"/>
<wire x1="213.36" y1="180.34" x2="226.06" y2="180.34" width="0.1524" layer="91"/>
<wire x1="210.82" y1="182.88" x2="213.36" y2="182.88" width="0.1524" layer="91"/>
<wire x1="213.36" y1="182.88" x2="213.36" y2="180.34" width="0.1524" layer="91"/>
<junction x="213.36" y="180.34"/>
</segment>
<segment>
<pinref part="BAT2" gate="-1" pin="S"/>
<wire x1="33.02" y1="55.88" x2="43.18" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SUPPLY24" gate="GND" pin="GND"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="FIX" gate="G$1" pin="A"/>
<wire x1="243.84" y1="127" x2="243.84" y2="124.46" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="DBG" gate="G$1" pin="A"/>
<wire x1="254" y1="127" x2="254" y2="124.46" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VBAT" class="0">
<segment>
<wire x1="190.5" y1="88.9" x2="180.34" y2="88.9" width="0.1524" layer="91"/>
<wire x1="180.34" y1="88.9" x2="172.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="172.72" y1="88.9" x2="170.18" y2="88.9" width="0.1524" layer="91"/>
<wire x1="190.5" y1="78.74" x2="172.72" y2="78.74" width="0.1524" layer="91"/>
<wire x1="172.72" y1="78.74" x2="172.72" y2="88.9" width="0.1524" layer="91"/>
<junction x="172.72" y="88.9"/>
<label x="170.18" y="88.9" size="1.778" layer="95" rot="MR0"/>
<wire x1="190.5" y1="73.66" x2="185.42" y2="73.66" width="0.1524" layer="91"/>
<wire x1="185.42" y1="73.66" x2="172.72" y2="73.66" width="0.1524" layer="91"/>
<wire x1="172.72" y1="73.66" x2="172.72" y2="78.74" width="0.1524" layer="91"/>
<junction x="172.72" y="78.74"/>
<pinref part="HELDO" gate="G$1" pin="AVIN"/>
<pinref part="HELDO" gate="G$1" pin="PVIN"/>
<pinref part="HELDO" gate="G$1" pin="EN"/>
<pinref part="C1" gate="G$1" pin="1"/>
<junction x="180.34" y="88.9"/>
<pinref part="C2" gate="G$1" pin="1"/>
<junction x="185.42" y="73.66"/>
</segment>
<segment>
<wire x1="248.92" y1="200.66" x2="248.92" y2="203.2" width="0.1524" layer="91"/>
<label x="248.92" y="203.2" size="1.778" layer="95"/>
<pinref part="R4" gate="G$1" pin="2"/>
</segment>
<segment>
<label x="43.18" y="71.12" size="1.778" layer="95"/>
<pinref part="BAT1" gate="-2" pin="S"/>
<wire x1="43.18" y1="71.12" x2="33.02" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="FB" class="0">
<segment>
<wire x1="226.06" y1="63.5" x2="226.06" y2="60.96" width="0.1524" layer="91"/>
<wire x1="226.06" y1="60.96" x2="231.14" y2="60.96" width="0.1524" layer="91"/>
<pinref part="HELDO" gate="G$1" pin="FB"/>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="R9" gate="G$1" pin="1"/>
<junction x="231.14" y="60.96"/>
</segment>
</net>
<net name="SW" class="0">
<segment>
<wire x1="226.06" y1="86.36" x2="233.68" y2="86.36" width="0.1524" layer="91"/>
<wire x1="233.68" y1="86.36" x2="233.68" y2="83.82" width="0.1524" layer="91"/>
<pinref part="HELDO" gate="G$1" pin="SW"/>
<pinref part="R7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="LPF" class="0">
<segment>
<wire x1="226.06" y1="81.28" x2="243.84" y2="81.28" width="0.1524" layer="91"/>
<wire x1="243.84" y1="81.28" x2="243.84" y2="83.82" width="0.1524" layer="91"/>
<pinref part="HELDO" gate="G$1" pin="LPF"/>
<pinref part="R7" gate="G$1" pin="1"/>
</segment>
</net>
<net name="SWO" class="0">
<segment>
<wire x1="226.06" y1="88.9" x2="251.46" y2="88.9" width="0.1524" layer="91"/>
<wire x1="251.46" y1="88.9" x2="256.54" y2="88.9" width="0.1524" layer="91"/>
<wire x1="226.06" y1="73.66" x2="256.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="256.54" y1="73.66" x2="256.54" y2="88.9" width="0.1524" layer="91"/>
<pinref part="HELDO" gate="G$1" pin="SWO"/>
<pinref part="HELDO" gate="G$1" pin="LDOIN"/>
<pinref part="C3" gate="G$1" pin="1"/>
<junction x="251.46" y="88.9"/>
</segment>
</net>
<net name="ADC_IN" class="0">
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_14"/>
<wire x1="210.82" y1="190.5" x2="248.92" y2="190.5" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="R5" gate="G$1" pin="2"/>
<junction x="248.92" y="190.5"/>
</segment>
</net>
<net name="CELL_TX" class="0">
<segment>
<wire x1="63.5" y1="154.94" x2="58.42" y2="154.94" width="0.1524" layer="91"/>
<label x="58.42" y="154.94" size="1.778" layer="95" rot="MR0"/>
<pinref part="GSM" gate="G$1" pin="TXD"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_4"/>
<wire x1="165.1" y1="177.8" x2="160.02" y2="177.8" width="0.1524" layer="91"/>
<label x="160.02" y="177.8" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="CELL_RX" class="0">
<segment>
<wire x1="63.5" y1="152.4" x2="58.42" y2="152.4" width="0.1524" layer="91"/>
<label x="58.42" y="152.4" size="1.778" layer="95" rot="MR0"/>
<pinref part="GSM" gate="G$1" pin="RXD"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_3"/>
<wire x1="160.02" y1="175.26" x2="165.1" y2="175.26" width="0.1524" layer="91"/>
<label x="160.02" y="175.26" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="CELL_CTS" class="0">
<segment>
<wire x1="63.5" y1="157.48" x2="58.42" y2="157.48" width="0.1524" layer="91"/>
<label x="58.42" y="157.48" size="1.778" layer="95" rot="MR0"/>
<pinref part="GSM" gate="G$1" pin="CTS"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_13"/>
<wire x1="165.1" y1="185.42" x2="160.02" y2="185.42" width="0.1524" layer="91"/>
<label x="160.02" y="185.42" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="CELL_RTS" class="0">
<segment>
<wire x1="63.5" y1="160.02" x2="58.42" y2="160.02" width="0.1524" layer="91"/>
<label x="58.42" y="160.02" size="1.778" layer="95" rot="MR0"/>
<pinref part="GSM" gate="G$1" pin="RTS"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_17"/>
<wire x1="165.1" y1="187.96" x2="160.02" y2="187.96" width="0.1524" layer="91"/>
<label x="160.02" y="187.96" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="CELL_RI" class="0">
<segment>
<wire x1="63.5" y1="167.64" x2="58.42" y2="167.64" width="0.1524" layer="91"/>
<label x="58.42" y="167.64" size="1.778" layer="95" rot="MR0"/>
<pinref part="GSM" gate="G$1" pin="RI"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_23"/>
<wire x1="165.1" y1="190.5" x2="160.02" y2="190.5" width="0.1524" layer="91"/>
<label x="160.02" y="190.5" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="PWR" gate="G$1" pin="A"/>
<wire x1="264.16" y1="127" x2="264.16" y2="124.46" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VREG" class="0">
<segment>
<pinref part="BAT2" gate="-2" pin="S"/>
<wire x1="33.02" y1="58.42" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
<label x="43.18" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="226.06" y1="71.12" x2="231.14" y2="71.12" width="0.1524" layer="91"/>
<wire x1="231.14" y1="71.12" x2="238.76" y2="71.12" width="0.1524" layer="91"/>
<wire x1="238.76" y1="71.12" x2="246.38" y2="71.12" width="0.1524" layer="91"/>
<wire x1="246.38" y1="71.12" x2="246.38" y2="66.04" width="0.1524" layer="91"/>
<wire x1="246.38" y1="71.12" x2="259.08" y2="71.12" width="0.1524" layer="91"/>
<junction x="246.38" y="71.12"/>
<label x="259.08" y="71.12" size="1.778" layer="95"/>
<wire x1="238.76" y1="71.12" x2="238.76" y2="66.04" width="0.1524" layer="91"/>
<junction x="238.76" y="71.12"/>
<pinref part="HELDO" gate="G$1" pin="LDOOUT"/>
<pinref part="R8" gate="G$1" pin="1"/>
<junction x="231.14" y="71.12"/>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="C5" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="109.22" y1="190.5" x2="114.3" y2="190.5" width="0.1524" layer="91"/>
<label x="114.3" y="190.5" size="1.778" layer="95"/>
<pinref part="GSM" gate="G$1" pin="VCC"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="VDD"/>
<wire x1="210.82" y1="177.8" x2="215.9" y2="177.8" width="0.1524" layer="91"/>
<pinref part="LPC" gate="G$1" pin="VREFP"/>
<wire x1="215.9" y1="177.8" x2="220.98" y2="177.8" width="0.1524" layer="91"/>
<wire x1="210.82" y1="185.42" x2="215.9" y2="185.42" width="0.1524" layer="91"/>
<wire x1="215.9" y1="185.42" x2="215.9" y2="177.8" width="0.1524" layer="91"/>
<junction x="215.9" y="177.8"/>
<label x="220.98" y="177.8" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="264.16" y1="137.16" x2="264.16" y2="139.7" width="0.1524" layer="91"/>
<label x="264.16" y="139.7" size="1.778" layer="95"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="58.42" y1="33.02" x2="58.42" y2="35.56" width="0.1524" layer="91"/>
<label x="58.42" y="35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SJ1" gate="1" pin="1"/>
<wire x1="152.4" y1="132.08" x2="149.86" y2="132.08" width="0.1524" layer="91"/>
<label x="149.86" y="132.08" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="238.76" y1="185.42" x2="238.76" y2="187.96" width="0.1524" layer="91"/>
<label x="238.76" y="187.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="M1" gate="G$1" pin="S"/>
<wire x1="147.32" y1="147.32" x2="142.24" y2="147.32" width="0.1524" layer="91"/>
<label x="142.24" y="147.32" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="CELL_RESET" class="0">
<segment>
<pinref part="GSM" gate="G$1" pin="!RESET"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="63.5" y1="137.16" x2="25.4" y2="137.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="137.16" x2="25.4" y2="147.32" width="0.1524" layer="91"/>
<label x="38.1" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_10"/>
<wire x1="165.1" y1="167.64" x2="160.02" y2="167.64" width="0.1524" layer="91"/>
<label x="160.02" y="167.64" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="GPS" gate="G$1" pin="VBACKUP"/>
<pinref part="SJ1" gate="1" pin="2"/>
<wire x1="175.26" y1="132.08" x2="162.56" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="GPS" gate="G$1" pin="VCC"/>
<wire x1="175.26" y1="139.7" x2="172.72" y2="139.7" width="0.1524" layer="91"/>
<wire x1="172.72" y1="139.7" x2="172.72" y2="147.32" width="0.1524" layer="91"/>
<pinref part="C11" gate="G$1" pin="1"/>
<wire x1="172.72" y1="147.32" x2="160.02" y2="147.32" width="0.1524" layer="91"/>
<wire x1="160.02" y1="147.32" x2="160.02" y2="144.78" width="0.1524" layer="91"/>
<pinref part="GPS" gate="G$1" pin="!RESET"/>
<wire x1="175.26" y1="137.16" x2="172.72" y2="137.16" width="0.1524" layer="91"/>
<wire x1="172.72" y1="137.16" x2="172.72" y2="139.7" width="0.1524" layer="91"/>
<junction x="172.72" y="139.7"/>
<wire x1="160.02" y1="147.32" x2="157.48" y2="147.32" width="0.1524" layer="91"/>
<junction x="160.02" y="147.32"/>
<pinref part="M1" gate="G$1" pin="D"/>
</segment>
</net>
<net name="GPS_ON" class="0">
<segment>
<pinref part="M1" gate="G$1" pin="G"/>
<wire x1="149.86" y1="154.94" x2="149.86" y2="157.48" width="0.1524" layer="91"/>
<label x="149.86" y="157.48" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="LPC" gate="G$1" pin="PIO0_8"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="210.82" y1="175.26" x2="238.76" y2="175.26" width="0.1524" layer="91"/>
<label x="231.14" y="175.26" size="1.778" layer="95" rot="MR180"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="101,1,99.06,12.7,FTDI-2,S,,,,"/>
<approved hash="104,1,210.82,177.8,LPC,VDD,VREG,,,"/>
<approved hash="104,1,210.82,180.34,LPC,VSS,GND,,,"/>
<approved hash="104,1,134.62,101.6,SIM,CCVCC,VSIM,,,"/>
<approved hash="104,1,134.62,99.06,SIM,CCVPP,VSIM,,,"/>
<approved hash="104,1,208.28,55.88,HELDO,EPAD,GND,,,"/>
<approved hash="104,1,190.5,73.66,HELDO,AVIN,VBAT,,,"/>
<approved hash="104,1,226.06,71.12,HELDO,LDOOUT,VREG,,,"/>
<approved hash="104,1,226.06,73.66,HELDO,LDOIN,SWO,,,"/>
<approved hash="104,1,190.5,88.9,HELDO,PVIN,VBAT,,,"/>
<approved hash="104,1,226.06,78.74,HELDO,PGND,GND,,,"/>
<approved hash="104,1,175.26,139.7,GPS,VCC,N$3,,,"/>
<approved hash="104,1,175.26,132.08,GPS,VBACKUP,N$2,,,"/>
<approved hash="104,1,109.22,190.5,GSM,VCC,VREG,,,"/>
<approved hash="202,1,63.5,182.88,GSM,V_CHARGE,,,,"/>
<approved hash="202,1,63.5,180.34,GSM,CHARGE_SENSE/ADC1,,,,"/>
<approved hash="202,1,63.5,170.18,GSM,DSR,,,,"/>
<approved hash="202,1,63.5,165.1,GSM,DCD,,,,"/>
<approved hash="202,1,63.5,162.56,GSM,DTR,,,,"/>
<approved hash="202,1,63.5,142.24,GSM,GPIO1,,,,"/>
<approved hash="202,1,63.5,139.7,GSM,GPIO2,,,,"/>
<approved hash="202,1,109.22,139.7,GSM,SCL,,,,"/>
<approved hash="202,1,109.22,142.24,GSM,SDA,,,,"/>
<approved hash="202,1,63.5,147.32,GSM,HS_DET,,,,"/>
<approved hash="202,1,109.22,167.64,GSM,MIC_BIAS2,,,,"/>
<approved hash="202,1,109.22,175.26,GSM,MIC_BIAS1,,,,"/>
<approved hash="113,1,139.596,107.846,FRAME1,,,,,"/>
<approved hash="113,1,244.162,120.65,FIX,,,,,"/>
<approved hash="113,1,254.322,120.65,DBG,,,,,"/>
<approved hash="113,1,264.482,120.65,PWR,,,,,"/>
<approved hash="113,1,263.165,132.08,R1,,,,,"/>
<approved hash="113,1,253.005,132.08,R2,,,,,"/>
<approved hash="113,1,242.845,132.08,R3,,,,,"/>
<approved hash="113,1,247.925,195.58,R4,,,,,"/>
<approved hash="113,1,247.925,185.42,R5,,,,,"/>
<approved hash="113,1,29.4852,152.4,R6,,,,,"/>
<approved hash="113,1,238.76,82.8252,R7,,,,,"/>
<approved hash="113,1,232.135,66.04,R8,,,,,"/>
<approved hash="113,1,232.135,55.88,R9,,,,,"/>
<approved hash="113,1,24.4052,152.4,R10,,,,,"/>
<approved hash="113,1,57.4252,27.94,R11,,,,,"/>
<approved hash="113,1,157.48,133.596,SJ1,,,,,"/>
<approved hash="113,1,237.765,180.34,R12,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
