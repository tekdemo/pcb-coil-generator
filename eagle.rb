HEAD= <<~HEAD
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="10" unitdist="mil" unit="mil" style="lines" multiple="5" display="yes" altdistance="1" altunitdist="mil" altunit="mil"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
<layer number="2" name="Route2" color="1" fill="2" visible="yes" active="yes"/>
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
<param name="rlMinPadTop" value="10mil"/>
<param name="rlMaxPadTop" value="20mil"/>
<param name="rlMinPadInner" value="10mil"/>
<param name="rlMaxPadInner" value="20mil"/>
<param name="rlMinPadBottom" value="10mil"/>
<param name="rlMaxPadBottom" value="20mil"/>
<param name="rlMinViaOuter" value="8mil"/>
<param name="rlMaxViaOuter" value="20mil"/>
<param name="rlMinViaInner" value="8mil"/>
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

FOOT=<<FOOT
</signal>
</signals>
</board>
</drawing>
</eagle>
FOOT

MISC=<<MISC
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.127" layer="1"/>
<wire x1="1.27" y1="0" x2="0" y2="1.27" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="-1.27" y1="0" x2="0" y2="-1.27" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="-1.27" x2="1.524" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="1.524" y1="0" x2="0" y2="1.524" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="1.524" x2="-1.524" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="-1.524" y1="0" x2="0" y2="-1.524" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="-1.524" x2="1.778" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="1.778" y1="0" x2="0" y2="1.778" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="1.778" x2="-1.778" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="-1.778" y1="0" x2="0" y2="-1.778" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="-1.778" x2="2.032" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="2.032" y1="0" x2="0" y2="2.032" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="2.032" x2="-2.032" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="-2.032" y1="0" x2="0" y2="-2.032" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="-2.032" x2="2.286" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="2.286" y1="0" x2="0" y2="2.286" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="2.286" x2="-2.286" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="-2.286" y1="0" x2="0" y2="-2.286" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="-2.286" x2="2.54" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="0" width="0.127" layer="1" curve="90"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="0.127" layer="1" curve="90"/>
<wire x1="0" y1="-2.54" x2="2.794" y2="0" width="0.127" layer="1" curve="90"/>

MISC
#
WIRE_BEND = '<wire x1="%f" y1="%f" x2="%f" y2="%f" width="%f" layer="%i" curve="%f"/>'
