APC4INI5 ; ; 17-JUN-2002
 ;;2.0;IHS RPMS/PCC Data Entry;**4**;MAR 09, 1999
 K ^UTILITY("DIF",$J) S DIFRDIFI=1 F I=1:1:0 S ^UTILITY("DIF",$J,DIFRDIFI)=$T(IXF+I),DIFRDIFI=DIFRDIFI+1
 Q
IXF ;;APC4 - PCC DATA ENTRY V2.0 P4^APC4
