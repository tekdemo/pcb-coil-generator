BRD_HEADER= <<~HEAD
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="10" unitdist="mil" unit="mil" style="lines" multiple="5" display="yes" altdistance="1" altunitdist="mil" altunit="mil"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
<layer number="2" name="Route2" color="1" fill="2" visible="yes" active="yes"/>
<layer number="3" name="Route3" color="4" fill="2" visible="yes" active="yes"/>
<layer number="4" name="Route3" color="4" fill="2" visible="yes" active="yes"/>
<layer number="5" name="Route3" color="5" fill="2" visible="yes" active="yes"/>
<layer number="6" name="Route3" color="6" fill="2" visible="yes" active="yes"/>
<layer number="7" name="Route3" color="7" fill="2" visible="yes" active="yes"/>
<layer number="8" name="Route3" color="8" fill="2" visible="yes" active="yes"/>
<layer number="9" name="Route3" color="9" fill="2" visible="yes" active="yes"/>
<layer number="10" name="Route3" color="10" fill="2" visible="yes" active="yes"/>
<layer number="11" name="Route3" color="11" fill="2" visible="yes" active="yes"/>
<layer number="12" name="Route3" color="12" fill="2" visible="yes" active="yes"/>
<layer number="13" name="Route3" color="13" fill="2" visible="yes" active="yes"/>
<layer number="14" name="Route3" color="14" fill="2" visible="yes" active="yes"/>
<layer number="15" name="Route15" color="1" fill="2" visible="yes" active="yes"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="yes" active="yes"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="yes" active="yes"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="yes" active="yes"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="yes"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="yes"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="yes"/>
<layer number="29" name="tStop" color="7" fill="3" visible="yes" active="yes"/>
<layer number="30" name="bStop" color="7" fill="6" visible="yes" active="yes"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="yes"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="yes"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="yes"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="yes"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="yes"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="yes"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="yes"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="yes"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="yes"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="yes"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="yes"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="yes"/>
<layer number="45" name="Holes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="yes"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="yes"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="yes"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="yes"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="yes" active="yes"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="yes"/>
</layers>
<board>
<plain>
</plain>
<libraries>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<designrules name="default">
<description language="en">&lt;b&gt;EAGLE Design Rules&lt;/b&gt;
&lt;p&gt;
The default Design Rules have been set to cover
a wide range of applications. Your particular design
may have different requirements, so please make the
necessary adjustments and save your customized
design rules under a new name.
</description>
<param name="layerSetup" value="(1*2*15*16)"/>
<param name="mtCopper" value="0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm"/>
<param name="mtIsolate" value="1.5mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm"/>
<param name="mdWireWire" value="5mil"/>
<param name="mdWirePad" value="5mil"/>
<param name="mdWireVia" value="5mil"/>
<param name="mdPadPad" value="5mil"/>
<param name="mdPadVia" value="5mil"/>
<param name="mdViaVia" value="5mil"/>
<param name="mdSmdPad" value="5mil"/>
<param name="mdSmdVia" value="5mil"/>
<param name="mdSmdSmd" value="5mil"/>
<param name="mdViaViaSameLayer" value="5mil"/>
<param name="mnLayersViaInSmd" value="2"/>
<param name="mdCopperDimension" value="40mil"/>
<param name="mdDrill" value="5mil"/>
<param name="mdSmdStop" value="0mil"/>
<param name="msWidth" value="5mil"/>
<param name="msDrill" value="0.35mm"/>
<param name="msMicroVia" value="9.99mm"/>
<param name="msBlindViaRatio" value="0.5"/>
<param name="rvPadTop" value="0.25"/>
<param name="rvPadInner" value="0.25"/>
<param name="rvPadBottom" value="0.25"/>
<param name="rvViaOuter" value="0.25"/>
<param name="rvViaInner" value="0.25"/>
<param name="rvMicroViaOuter" value="0.25"/>
<param name="rvMicroViaInner" value="0.25"/>
<param name="rlMinPadTop" value="5mil"/>
<param name="rlMaxPadTop" value="20mil"/>
<param name="rlMinPadInner" value="5mil"/>
<param name="rlMaxPadInner" value="20mil"/>
<param name="rlMinPadBottom" value="5mil"/>
<param name="rlMaxPadBottom" value="20mil"/>
<param name="rlMinViaOuter" value="5mil"/>
<param name="rlMaxViaOuter" value="20mil"/>
<param name="rlMinViaInner" value="5mil"/>
<param name="rlMaxViaInner" value="20mil"/>
<param name="rlMinMicroViaOuter" value="4mil"/>
<param name="rlMaxMicroViaOuter" value="20mil"/>
<param name="rlMinMicroViaInner" value="4mil"/>
<param name="rlMaxMicroViaInner" value="20mil"/>
<param name="psTop" value="-1"/>
<param name="psBottom" value="-1"/>
<param name="psFirst" value="-1"/>
<param name="psElongationLong" value="100"/>
<param name="psElongationOffset" value="100"/>
<param name="mvStopFrame" value="1"/>
<param name="mvCreamFrame" value="0"/>
<param name="mlMinStopFrame" value="4mil"/>
<param name="mlMaxStopFrame" value="4mil"/>
<param name="mlMinCreamFrame" value="0mil"/>
<param name="mlMaxCreamFrame" value="0mil"/>
<param name="mlViaStopLimit" value="0mil"/>
<param name="srRoundness" value="0"/>
<param name="srMinRoundness" value="0mil"/>
<param name="srMaxRoundness" value="0mil"/>
<param name="slThermalIsolate" value="10mil"/>
<param name="slThermalsForVias" value="0"/>
<param name="dpMaxLengthDifference" value="10mm"/>
<param name="dpGapFactor" value="2.5"/>
<param name="checkAngle" value="0"/>
<param name="checkFont" value="1"/>
<param name="checkRestrict" value="1"/>
<param name="checkStop" value="0"/>
<param name="checkValues" value="0"/>
<param name="useDiameter" value="13"/>
<param name="maxErrors" value="999999"/>
</designrules>
<autorouter>
<pass name="Default">
<param name="RoutingGrid" value="50mil"/>
<param name="AutoGrid" value="1"/>
<param name="Efforts" value="0"/>
<param name="TopRouterVariant" value="1"/>
<param name="tpViaShape" value="round"/>
<param name="PrefDir.1" value="a"/>
<param name="PrefDir.2" value="0"/>
<param name="PrefDir.3" value="0"/>
<param name="PrefDir.4" value="0"/>
<param name="PrefDir.5" value="0"/>
<param name="PrefDir.6" value="0"/>
<param name="PrefDir.7" value="0"/>
<param name="PrefDir.8" value="0"/>
<param name="PrefDir.9" value="0"/>
<param name="PrefDir.10" value="0"/>
<param name="PrefDir.11" value="0"/>
<param name="PrefDir.12" value="0"/>
<param name="PrefDir.13" value="0"/>
<param name="PrefDir.14" value="0"/>
<param name="PrefDir.15" value="0"/>
<param name="PrefDir.16" value="a"/>
<param name="cfVia" value="8"/>
<param name="cfNonPref" value="5"/>
<param name="cfChangeDir" value="2"/>
<param name="cfOrthStep" value="2"/>
<param name="cfDiagStep" value="3"/>
<param name="cfExtdStep" value="0"/>
<param name="cfBonusStep" value="1"/>
<param name="cfMalusStep" value="1"/>
<param name="cfPadImpact" value="4"/>
<param name="cfSmdImpact" value="4"/>
<param name="cfBusImpact" value="0"/>
<param name="cfHugging" value="3"/>
<param name="cfAvoid" value="4"/>
<param name="cfPolygon" value="10"/>
<param name="cfBase.1" value="0"/>
<param name="cfBase.2" value="1"/>
<param name="cfBase.3" value="1"/>
<param name="cfBase.4" value="1"/>
<param name="cfBase.5" value="1"/>
<param name="cfBase.6" value="1"/>
<param name="cfBase.7" value="1"/>
<param name="cfBase.8" value="1"/>
<param name="cfBase.9" value="1"/>
<param name="cfBase.10" value="1"/>
<param name="cfBase.11" value="1"/>
<param name="cfBase.12" value="1"/>
<param name="cfBase.13" value="1"/>
<param name="cfBase.14" value="1"/>
<param name="cfBase.15" value="1"/>
<param name="cfBase.16" value="0"/>
<param name="mnVias" value="20"/>
<param name="mnSegments" value="9999"/>
<param name="mnExtdSteps" value="9999"/>
<param name="mnRipupLevel" value="10"/>
<param name="mnRipupSteps" value="100"/>
<param name="mnRipupTotal" value="100"/>
</pass>
<pass name="Follow-me" refer="Default" active="yes">
</pass>
<pass name="Busses" refer="Default" active="yes">
<param name="cfNonPref" value="4"/>
<param name="cfBusImpact" value="4"/>
<param name="cfHugging" value="0"/>
<param name="mnVias" value="0"/>
</pass>
<pass name="Route" refer="Default" active="yes">
</pass>
<pass name="Optimize1" refer="Default" active="yes">
<param name="cfVia" value="99"/>
<param name="cfExtdStep" value="10"/>
<param name="cfHugging" value="1"/>
<param name="mnExtdSteps" value="1"/>
<param name="mnRipupLevel" value="0"/>
</pass>
<pass name="Optimize2" refer="Optimize1" active="yes">
<param name="cfNonPref" value="0"/>
<param name="cfChangeDir" value="6"/>
<param name="cfExtdStep" value="0"/>
<param name="cfBonusStep" value="2"/>
<param name="cfMalusStep" value="2"/>
<param name="cfPadImpact" value="2"/>
<param name="cfSmdImpact" value="2"/>
<param name="cfHugging" value="0"/>
</pass>
<pass name="Optimize3" refer="Optimize2" active="yes">
<param name="cfChangeDir" value="8"/>
<param name="cfPadImpact" value="0"/>
<param name="cfSmdImpact" value="0"/>
</pass>
<pass name="Optimize4" refer="Optimize3" active="yes">
<param name="cfChangeDir" value="25"/>
</pass>
</autorouter>
<elements>
</elements>
<signals>
<signal name="S$1">
HEAD

BRD_FOOTER=<<FOOT
</signal>
</signals>
</board>
</drawing>
</eagle>
FOOT

WIRE_BEND = '<wire x1="%f" y1="%f" x2="%f" y2="%f" width="%f" layer="%i" curve="%f"/>'
WIRE = '<wire x1="%f" y1="%f" x2="%f" y2="%f" width="%f" layer="%i"/>'
VIA = '<via x="%f" y="%f" extent="1-16" drill="%f"/>'
VIA_PAD = '<via x="%f" y="%f" extent="1-16" drill="%f" diameter="%f"/>'




# Put together a library file
# Stop should be "yes" or "no"
LBR_PAD='<pad name="%s" x="%f" y="%f" drill="%f" mask="%s"/>'

LBR_PACKAGE=<<EOF
<package name="%s">
%s
</package>
EOF

LBR_FILE=<<EOF
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="10" unitdist="mil" unit="mil" style="lines" multiple="5" display="yes" altdistance="1" altunitdist="mil" altunit="mil"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
<layer number="2" name="Route2" color="2" fill="2" visible="yes" active="yes"/>
<layer number="15" name="Route15" color="3" fill="2" visible="yes" active="yes"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="yes"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="yes"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="yes"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="yes"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="yes"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="yes"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="yes"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="yes"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="yes"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="yes" active="yes"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="yes" active="yes"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="yes" active="yes"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="yes" active="yes"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="yes" active="yes"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="yes"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="yes"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="yes"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="yes"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="yes"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<library>
<packages>
%s
</packages>
<symbols>
<symbol name="COIL">
<pin name="P$2" x="0" y="2.54" length="middle" rot="R180"/>
<pin name="P$1" x="0" y="0" length="middle" rot="R180"/>
<wire x1="-5.588" y1="2.54" x2="-13.208" y2="1.27" width="0.254" layer="94" curve="158.103748"/>
<wire x1="-13.208" y1="1.27" x2="-6.096" y2="0" width="0.254" layer="94" curve="165.551305"/>
<wire x1="-6.096" y1="0" x2="-12.7" y2="1.27" width="0.254" layer="94" curve="194.640685"/>
<wire x1="-12.7" y1="1.27" x2="-6.604" y2="0" width="0.254" layer="94" curve="156.29401"/>
<wire x1="-6.604" y1="0" x2="-5.588" y2="0" width="0.1524" layer="94" curve="-106.260205"/>
<wire x1="-5.588" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.588" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<text x="-6.35" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
<text x="-5.08" y="3.81" size="1.27" layer="96">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="COIL">
<gates>
<gate name="G$1" symbol="COIL" x="2.54" y="-2.54"/>
</gates>
<devices>
<device name="COIL_SAMPLE" package="COIL_SAMPLE">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</drawing>
</eagle>
EOF

