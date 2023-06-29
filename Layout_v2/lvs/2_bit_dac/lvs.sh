EXT_SCRIPT="ext_$1.tcl"
NETLIST_SCH="$1.sch.spice"
NETLIST_LAY="$1.ext.spice"
LVS_REPORT="$1.lvs.out"
LVS_LOG="$1.lvs.log"
TOPCELL="$1"

netgen -batch lvs "$NETLIST_LAY $TOPCELL" "$NETLIST_SCH $TOPCELL" \
		"$PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl" \
		"$LVS_REPORT" > "$LVS_LOG"
