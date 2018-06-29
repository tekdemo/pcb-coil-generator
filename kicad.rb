KICAD_HEADER=<<EOF
(kicad_pcb (version 4) (host pcbnew 4.0.6+dfsg1-1)

  (general
    (links 0)
    (no_connects 0)
    (area 0 0 0 0)
    (thickness 1.6)
    (drawings 0)
    (tracks 3)
    (zones 0)
    (modules 0)
    (nets 1)
  )

  (page A4)
  (layers
%s    
    (32 B.Adhes user)
    (33 F.Adhes user)
    (34 B.Paste user)
    (35 F.Paste user)
    (36 B.SilkS user)
    (37 F.SilkS user)
    (38 B.Mask user)
    (39 F.Mask user)
    (40 Dwgs.User user)
    (41 Cmts.User user)
    (42 Eco1.User user)
    (43 Eco2.User user)
    (44 Edge.Cuts user)
    (45 Margin user)
    (46 B.CrtYd user)
    (47 F.CrtYd user)
    (48 B.Fab user)
    (49 F.Fab user)
  )

  (setup
    (last_trace_width 0.25)
    (trace_clearance 0.2)
    (zone_clearance 0.508)
    (zone_45_only no)
    (trace_min 0.2)
    (segment_width 0.2)
    (edge_width 0.1)
    (via_size 0.6)
    (via_drill 0.4)
    (via_min_size 0.4)
    (via_min_drill 0.3)
    (uvia_size 0.3)
    (uvia_drill 0.1)
    (uvias_allowed no)
    (uvia_min_size 0.2)
    (uvia_min_drill 0.1)
    (pcb_text_width 0.3)
    (pcb_text_size 1.5 1.5)
    (mod_edge_width 0.15)
    (mod_text_size 1 1)
    (mod_text_width 0.15)
    (pad_size 1.5 1.5)
    (pad_drill 0.6)
    (pad_to_mask_clearance 0)
    (aux_axis_origin 0 0)
    (visible_elements FFFFFF7F)
    (pcbplotparams
      (layerselection 0x00030_80000001)
      (usegerberextensions false)
      (excludeedgelayer true)
      (linewidth 0.100000)
      (plotframeref false)
      (viasonmask false)
      (mode 1)
      (useauxorigin false)
      (hpglpennumber 1)
      (hpglpenspeed 20)
      (hpglpendiameter 15)
      (hpglpenoverlay 2)
      (psnegative false)
      (psa4output false)
      (plotreference true)
      (plotvalue true)
      (plotinvisibletext false)
      (padsonsilk false)
      (subtractmaskfromsilk false)
      (outputformat 1)
      (mirror false)
      (drillshape 1)
      (scaleselection 1)
      (outputdirectory ""))
  )

  (net 0 "")

  (net_class Default "This is the default net class."
    (clearance 0.2)
    (trace_width 0.25)
    (via_dia 0.6)
    (via_drill 0.4)
    (uvia_dia 0.3)
    (uvia_drill 0.1)
  )
EOF

# This is to make it a bit simpler to generate the layer names
KICAD_LAYERS = [
  [0, "F.Cu", "signal"],
  [1, "In1.Cu", "signal"],
  [2, "In2.Cu", "signal"],
  [31,"B.Cu", "signal"],
]

KICAD_LAYERS_2 = KICAD_LAYERS.values_at(0,-1)
KICAD_LAYERS_4 = KICAD_LAYERS
KICAD_LAYER_STRING_2 = KICAD_LAYERS_2.map{|s| "    (%s)" % s.join(" ")}.join("\n")
KICAD_LAYER_STRING_4 = KICAD_LAYERS_4.map{|s| "    (%s)" % s.join(" ")}.join("\n")

KICAD_WIRE="  (segment (start %f %f) (end %f %f) (width %f) (layer %s) (net 0))"
KICAD_VIA="  (via (at %f %f) (size %f) (drill %f) (layers F.Cu B.Cu) (net 0))"

# What's with the tstamp? 
# (segment (start 144.78 120.65) (end 140.97 120.65) (width 0.25) (layer F.Cu) (net 0) (tstamp 5B35CF0D))

KICAD_FOOTER=")"
