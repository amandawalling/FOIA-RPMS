BGP06D12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"978,12843-0148-20 ",.01)
 ;;12843-0148-20
 ;;9002226.02101,"978,12843-0148-20 ",.02)
 ;;12843-0148-20
 ;;9002226.02101,"978,12843-0148-21 ",.01)
 ;;12843-0148-21
 ;;9002226.02101,"978,12843-0148-21 ",.02)
 ;;12843-0148-21
 ;;9002226.02101,"978,12843-0165-21 ",.01)
 ;;12843-0165-21
 ;;9002226.02101,"978,12843-0165-21 ",.02)
 ;;12843-0165-21
 ;;9002226.02101,"978,12843-0165-23 ",.01)
 ;;12843-0165-23
 ;;9002226.02101,"978,12843-0165-23 ",.02)
 ;;12843-0165-23
 ;;9002226.02101,"978,16500-0010-20 ",.01)
 ;;16500-0010-20
 ;;9002226.02101,"978,16500-0010-20 ",.02)
 ;;16500-0010-20
 ;;9002226.02101,"978,16500-0010-22 ",.01)
 ;;16500-0010-22
 ;;9002226.02101,"978,16500-0010-22 ",.02)
 ;;16500-0010-22
 ;;9002226.02101,"978,16590-0078-20 ",.01)
 ;;16590-0078-20
 ;;9002226.02101,"978,16590-0078-20 ",.02)
 ;;16590-0078-20
 ;;9002226.02101,"978,16590-0079-20 ",.01)
 ;;16590-0079-20
 ;;9002226.02101,"978,16590-0079-20 ",.02)
 ;;16590-0079-20
 ;;9002226.02101,"978,16590-0122-20 ",.01)
 ;;16590-0122-20
 ;;9002226.02101,"978,16590-0122-20 ",.02)
 ;;16590-0122-20
 ;;9002226.02101,"978,16590-0122-30 ",.01)
 ;;16590-0122-30
 ;;9002226.02101,"978,16590-0122-30 ",.02)
 ;;16590-0122-30
 ;;9002226.02101,"978,16590-0122-40 ",.01)
 ;;16590-0122-40
 ;;9002226.02101,"978,16590-0122-40 ",.02)
 ;;16590-0122-40
 ;;9002226.02101,"978,16590-0122-60 ",.01)
 ;;16590-0122-60
 ;;9002226.02101,"978,16590-0122-60 ",.02)
 ;;16590-0122-60
 ;;9002226.02101,"978,16590-0122-90 ",.01)
 ;;16590-0122-90
 ;;9002226.02101,"978,16590-0122-90 ",.02)
 ;;16590-0122-90
 ;;9002226.02101,"978,16590-0191-10 ",.01)
 ;;16590-0191-10
 ;;9002226.02101,"978,16590-0191-10 ",.02)
 ;;16590-0191-10
 ;;9002226.02101,"978,16590-0191-15 ",.01)
 ;;16590-0191-15
 ;;9002226.02101,"978,16590-0191-15 ",.02)
 ;;16590-0191-15
 ;;9002226.02101,"978,16590-0191-20 ",.01)
 ;;16590-0191-20
 ;;9002226.02101,"978,16590-0191-20 ",.02)
 ;;16590-0191-20
 ;;9002226.02101,"978,16590-0191-30 ",.01)
 ;;16590-0191-30
 ;;9002226.02101,"978,16590-0191-30 ",.02)
 ;;16590-0191-30
 ;;9002226.02101,"978,16590-0191-60 ",.01)
 ;;16590-0191-60
 ;;9002226.02101,"978,16590-0191-60 ",.02)
 ;;16590-0191-60
 ;;9002226.02101,"978,16590-0191-90 ",.01)
 ;;16590-0191-90
 ;;9002226.02101,"978,16590-0191-90 ",.02)
 ;;16590-0191-90
 ;;9002226.02101,"978,16590-0192-04 ",.01)
 ;;16590-0192-04
 ;;9002226.02101,"978,16590-0192-04 ",.02)
 ;;16590-0192-04
 ;;9002226.02101,"978,16590-0357-09 ",.01)
 ;;16590-0357-09
 ;;9002226.02101,"978,16590-0357-09 ",.02)
 ;;16590-0357-09
 ;;9002226.02101,"978,16590-0357-12 ",.01)
 ;;16590-0357-12
 ;;9002226.02101,"978,16590-0357-12 ",.02)
 ;;16590-0357-12
 ;;9002226.02101,"978,16590-0357-20 ",.01)
 ;;16590-0357-20
 ;;9002226.02101,"978,16590-0357-20 ",.02)
 ;;16590-0357-20
 ;;9002226.02101,"978,16590-0357-30 ",.01)
 ;;16590-0357-30
 ;;9002226.02101,"978,16590-0357-30 ",.02)
 ;;16590-0357-30
 ;;9002226.02101,"978,16714-0081-04 ",.01)
 ;;16714-0081-04
 ;;9002226.02101,"978,16714-0081-04 ",.02)
 ;;16714-0081-04
 ;;9002226.02101,"978,16714-0081-05 ",.01)
 ;;16714-0081-05
 ;;9002226.02101,"978,16714-0081-05 ",.02)
 ;;16714-0081-05
 ;;9002226.02101,"978,16714-0082-04 ",.01)
 ;;16714-0082-04
 ;;9002226.02101,"978,16714-0082-04 ",.02)
 ;;16714-0082-04
 ;;9002226.02101,"978,16714-0082-05 ",.01)
 ;;16714-0082-05
 ;;9002226.02101,"978,16714-0082-05 ",.02)
 ;;16714-0082-05
 ;;9002226.02101,"978,16714-0082-06 ",.01)
 ;;16714-0082-06
 ;;9002226.02101,"978,16714-0082-06 ",.02)
 ;;16714-0082-06
 ;;9002226.02101,"978,16714-0083-04 ",.01)
 ;;16714-0083-04
 ;;9002226.02101,"978,16714-0083-04 ",.02)
 ;;16714-0083-04
 ;;9002226.02101,"978,16714-0083-05 ",.01)
 ;;16714-0083-05
 ;;9002226.02101,"978,16714-0083-05 ",.02)
 ;;16714-0083-05
 ;;9002226.02101,"978,17236-0516-01 ",.01)
 ;;17236-0516-01
 ;;9002226.02101,"978,17236-0516-01 ",.02)
 ;;17236-0516-01
 ;;9002226.02101,"978,17236-0516-10 ",.01)
 ;;17236-0516-10
 ;;9002226.02101,"978,17236-0516-10 ",.02)
 ;;17236-0516-10
 ;;9002226.02101,"978,17236-0518-01 ",.01)
 ;;17236-0518-01
 ;;9002226.02101,"978,17236-0518-01 ",.02)
 ;;17236-0518-01
 ;;9002226.02101,"978,17236-0518-10 ",.01)
 ;;17236-0518-10
 ;;9002226.02101,"978,17236-0518-10 ",.02)
 ;;17236-0518-10
 ;;9002226.02101,"978,17714-0020-01 ",.01)
 ;;17714-0020-01
 ;;9002226.02101,"978,17714-0020-01 ",.02)
 ;;17714-0020-01
 ;;9002226.02101,"978,17714-0020-10 ",.01)
 ;;17714-0020-10
 ;;9002226.02101,"978,17714-0020-10 ",.02)
 ;;17714-0020-10
 ;;9002226.02101,"978,17714-0021-01 ",.01)
 ;;17714-0021-01
 ;;9002226.02101,"978,17714-0021-01 ",.02)
 ;;17714-0021-01
 ;;9002226.02101,"978,17714-0021-10 ",.01)
 ;;17714-0021-10
 ;;9002226.02101,"978,17714-0021-10 ",.02)
 ;;17714-0021-10
 ;;9002226.02101,"978,17714-0042-01 ",.01)
 ;;17714-0042-01
 ;;9002226.02101,"978,17714-0042-01 ",.02)
 ;;17714-0042-01
 ;;9002226.02101,"978,18837-0043-30 ",.01)
 ;;18837-0043-30
 ;;9002226.02101,"978,18837-0043-30 ",.02)
 ;;18837-0043-30
 ;;9002226.02101,"978,18837-0070-30 ",.01)
 ;;18837-0070-30
 ;;9002226.02101,"978,18837-0070-30 ",.02)
 ;;18837-0070-30
 ;;9002226.02101,"978,18837-0127-10 ",.01)
 ;;18837-0127-10
 ;;9002226.02101,"978,18837-0127-10 ",.02)
 ;;18837-0127-10
 ;;9002226.02101,"978,18837-0127-30 ",.01)
 ;;18837-0127-30
 ;;9002226.02101,"978,18837-0127-30 ",.02)
 ;;18837-0127-30
 ;;9002226.02101,"978,18837-0127-60 ",.01)
 ;;18837-0127-60
 ;;9002226.02101,"978,18837-0127-60 ",.02)
 ;;18837-0127-60
 ;;9002226.02101,"978,18837-0127-90 ",.01)
 ;;18837-0127-90
 ;;9002226.02101,"978,18837-0127-90 ",.02)
 ;;18837-0127-90
 ;;9002226.02101,"978,19810-0001-56 ",.01)
 ;;19810-0001-56
 ;;9002226.02101,"978,19810-0001-56 ",.02)
 ;;19810-0001-56
 ;;9002226.02101,"978,19810-0001-82 ",.01)
 ;;19810-0001-82
 ;;9002226.02101,"978,19810-0001-82 ",.02)
 ;;19810-0001-82
 ;;9002226.02101,"978,19810-0001-83 ",.01)
 ;;19810-0001-83
 ;;9002226.02101,"978,19810-0001-83 ",.02)
 ;;19810-0001-83
 ;;9002226.02101,"978,19810-0002-40 ",.01)
 ;;19810-0002-40
 ;;9002226.02101,"978,19810-0002-40 ",.02)
 ;;19810-0002-40
 ;;9002226.02101,"978,19810-0003-22 ",.01)
 ;;19810-0003-22
 ;;9002226.02101,"978,19810-0003-22 ",.02)
 ;;19810-0003-22
 ;;9002226.02101,"978,19810-0003-23 ",.01)
 ;;19810-0003-23
 ;;9002226.02101,"978,19810-0003-23 ",.02)
 ;;19810-0003-23
 ;;9002226.02101,"978,19810-0003-26 ",.01)
 ;;19810-0003-26
 ;;9002226.02101,"978,19810-0003-26 ",.02)
 ;;19810-0003-26
 ;;9002226.02101,"978,19810-0018-01 ",.01)
 ;;19810-0018-01
 ;;9002226.02101,"978,19810-0018-01 ",.02)
 ;;19810-0018-01
 ;;9002226.02101,"978,19810-0018-02 ",.01)
 ;;19810-0018-02
 ;;9002226.02101,"978,19810-0018-02 ",.02)
 ;;19810-0018-02
 ;;9002226.02101,"978,19810-0018-03 ",.01)
 ;;19810-0018-03
 ;;9002226.02101,"978,19810-0018-03 ",.02)
 ;;19810-0018-03
 ;;9002226.02101,"978,19810-0018-04 ",.01)
 ;;19810-0018-04
 ;;9002226.02101,"978,19810-0018-04 ",.02)
 ;;19810-0018-04
 ;;9002226.02101,"978,19810-0032-02 ",.01)
 ;;19810-0032-02
 ;;9002226.02101,"978,19810-0032-02 ",.02)
 ;;19810-0032-02
 ;;9002226.02101,"978,19810-0032-03 ",.01)
 ;;19810-0032-03
 ;;9002226.02101,"978,19810-0032-03 ",.02)
 ;;19810-0032-03
 ;;9002226.02101,"978,19810-0032-06 ",.01)
 ;;19810-0032-06
 ;;9002226.02101,"978,19810-0032-06 ",.02)
 ;;19810-0032-06
 ;;9002226.02101,"978,19810-0070-67 ",.01)
 ;;19810-0070-67
 ;;9002226.02101,"978,19810-0070-67 ",.02)
 ;;19810-0070-67
 ;;9002226.02101,"978,19810-0070-68 ",.01)
 ;;19810-0070-68
 ;;9002226.02101,"978,19810-0070-68 ",.02)
 ;;19810-0070-68
 ;;9002226.02101,"978,20254-0207-06 ",.01)
 ;;20254-0207-06
 ;;9002226.02101,"978,20254-0207-06 ",.02)
 ;;20254-0207-06
 ;;9002226.02101,"978,20254-0207-10 ",.01)
 ;;20254-0207-10
 ;;9002226.02101,"978,20254-0207-10 ",.02)
 ;;20254-0207-10
 ;;9002226.02101,"978,20254-0208-06 ",.01)
 ;;20254-0208-06
 ;;9002226.02101,"978,20254-0208-06 ",.02)
 ;;20254-0208-06
 ;;9002226.02101,"978,20254-0208-10 ",.01)
 ;;20254-0208-10
 ;;9002226.02101,"978,20254-0208-10 ",.02)
 ;;20254-0208-10
 ;;9002226.02101,"978,21406-0490-50 ",.01)
 ;;21406-0490-50
 ;;9002226.02101,"978,21406-0490-50 ",.02)
 ;;21406-0490-50
 ;;9002226.02101,"978,21406-0491-30 ",.01)
 ;;21406-0491-30
 ;;9002226.02101,"978,21406-0491-30 ",.02)
 ;;21406-0491-30
 ;;9002226.02101,"978,21695-0208-30 ",.01)
 ;;21695-0208-30
 ;;9002226.02101,"978,21695-0208-30 ",.02)
 ;;21695-0208-30
 ;;9002226.02101,"978,21695-0208-60 ",.01)
 ;;21695-0208-60
 ;;9002226.02101,"978,21695-0208-60 ",.02)
 ;;21695-0208-60
 ;;9002226.02101,"978,21695-0208-90 ",.01)
 ;;21695-0208-90
 ;;9002226.02101,"978,21695-0208-90 ",.02)
 ;;21695-0208-90
 ;;9002226.02101,"978,21695-0304-30 ",.01)
 ;;21695-0304-30
 ;;9002226.02101,"978,21695-0304-30 ",.02)
 ;;21695-0304-30
 ;;9002226.02101,"978,21695-0304-90 ",.01)
 ;;21695-0304-90
 ;;9002226.02101,"978,21695-0304-90 ",.02)
 ;;21695-0304-90
 ;;9002226.02101,"978,21695-0336-04 ",.01)
 ;;21695-0336-04
 ;;9002226.02101,"978,21695-0336-04 ",.02)
 ;;21695-0336-04
 ;;9002226.02101,"978,21695-0356-60 ",.01)
 ;;21695-0356-60
 ;;9002226.02101,"978,21695-0356-60 ",.02)
 ;;21695-0356-60
 ;;9002226.02101,"978,21695-0453-10 ",.01)
 ;;21695-0453-10
 ;;9002226.02101,"978,21695-0453-10 ",.02)
 ;;21695-0453-10
 ;;9002226.02101,"978,21695-0453-15 ",.01)
 ;;21695-0453-15
 ;;9002226.02101,"978,21695-0453-15 ",.02)
 ;;21695-0453-15
 ;;9002226.02101,"978,21695-0453-20 ",.01)
 ;;21695-0453-20
 ;;9002226.02101,"978,21695-0453-20 ",.02)
 ;;21695-0453-20
 ;;9002226.02101,"978,21695-0453-25 ",.01)
 ;;21695-0453-25
 ;;9002226.02101,"978,21695-0453-25 ",.02)
 ;;21695-0453-25
 ;;9002226.02101,"978,23490-5455-01 ",.01)
 ;;23490-5455-01
 ;;9002226.02101,"978,23490-5455-01 ",.02)
 ;;23490-5455-01
 ;;9002226.02101,"978,23490-5457-00 ",.01)
 ;;23490-5457-00
 ;;9002226.02101,"978,23490-5457-00 ",.02)
 ;;23490-5457-00
 ;;9002226.02101,"978,23490-5457-01 ",.01)
 ;;23490-5457-01
 ;;9002226.02101,"978,23490-5457-01 ",.02)
 ;;23490-5457-01
 ;;9002226.02101,"978,23490-5457-02 ",.01)
 ;;23490-5457-02
 ;;9002226.02101,"978,23490-5457-02 ",.02)
 ;;23490-5457-02
 ;;9002226.02101,"978,23490-5457-03 ",.01)
 ;;23490-5457-03
 ;;9002226.02101,"978,23490-5457-03 ",.02)
 ;;23490-5457-03
 ;;9002226.02101,"978,23490-5457-04 ",.01)
 ;;23490-5457-04
 ;;9002226.02101,"978,23490-5457-04 ",.02)
 ;;23490-5457-04
 ;;9002226.02101,"978,23490-5457-05 ",.01)
 ;;23490-5457-05
 ;;9002226.02101,"978,23490-5457-05 ",.02)
 ;;23490-5457-05
 ;;9002226.02101,"978,23490-5459-01 ",.01)
 ;;23490-5459-01
 ;;9002226.02101,"978,23490-5459-01 ",.02)
 ;;23490-5459-01
 ;;9002226.02101,"978,23490-5459-02 ",.01)
 ;;23490-5459-02
 ;;9002226.02101,"978,23490-5459-02 ",.02)
 ;;23490-5459-02
 ;;9002226.02101,"978,23490-5459-03 ",.01)
 ;;23490-5459-03
 ;;9002226.02101,"978,23490-5459-03 ",.02)
 ;;23490-5459-03
 ;;9002226.02101,"978,23490-5459-04 ",.01)
 ;;23490-5459-04
 ;;9002226.02101,"978,23490-5459-04 ",.02)
 ;;23490-5459-04
 ;;9002226.02101,"978,23490-5727-01 ",.01)
 ;;23490-5727-01
 ;;9002226.02101,"978,23490-5727-01 ",.02)
 ;;23490-5727-01
 ;;9002226.02101,"978,23490-5727-02 ",.01)
 ;;23490-5727-02
 ;;9002226.02101,"978,23490-5727-02 ",.02)
 ;;23490-5727-02
 ;;9002226.02101,"978,23490-5728-01 ",.01)
 ;;23490-5728-01
 ;;9002226.02101,"978,23490-5728-01 ",.02)
 ;;23490-5728-01
 ;;9002226.02101,"978,23490-5729-01 ",.01)
 ;;23490-5729-01
 ;;9002226.02101,"978,23490-5729-01 ",.02)
 ;;23490-5729-01
 ;;9002226.02101,"978,23490-5729-02 ",.01)
 ;;23490-5729-02
 ;;9002226.02101,"978,23490-5729-02 ",.02)
 ;;23490-5729-02
 ;;9002226.02101,"978,23490-5729-03 ",.01)
 ;;23490-5729-03
 ;;9002226.02101,"978,23490-5729-03 ",.02)
 ;;23490-5729-03
 ;;9002226.02101,"978,23490-5729-04 ",.01)
 ;;23490-5729-04
 ;;9002226.02101,"978,23490-5729-04 ",.02)
 ;;23490-5729-04
 ;;9002226.02101,"978,23490-5729-05 ",.01)
 ;;23490-5729-05
 ;;9002226.02101,"978,23490-5729-05 ",.02)
 ;;23490-5729-05
 ;;9002226.02101,"978,23490-5729-06 ",.01)
 ;;23490-5729-06
 ;;9002226.02101,"978,23490-5729-06 ",.02)
 ;;23490-5729-06
 ;;9002226.02101,"978,23490-5731-00 ",.01)
 ;;23490-5731-00
 ;;9002226.02101,"978,23490-5731-00 ",.02)
 ;;23490-5731-00
 ;;9002226.02101,"978,23490-5731-01 ",.01)
 ;;23490-5731-01
 ;;9002226.02101,"978,23490-5731-01 ",.02)
 ;;23490-5731-01
 ;;9002226.02101,"978,23490-5733-01 ",.01)
 ;;23490-5733-01
 ;;9002226.02101,"978,23490-5733-01 ",.02)
 ;;23490-5733-01
 ;;9002226.02101,"978,23490-5733-02 ",.01)
 ;;23490-5733-02
 ;;9002226.02101,"978,23490-5733-02 ",.02)
 ;;23490-5733-02
 ;;9002226.02101,"978,23490-6178-01 ",.01)
 ;;23490-6178-01
 ;;9002226.02101,"978,23490-6178-01 ",.02)
 ;;23490-6178-01
 ;;9002226.02101,"978,23490-6178-02 ",.01)
 ;;23490-6178-02
 ;;9002226.02101,"978,23490-6178-02 ",.02)
 ;;23490-6178-02
 ;;9002226.02101,"978,23490-6183-01 ",.01)
 ;;23490-6183-01
 ;;9002226.02101,"978,23490-6183-01 ",.02)
 ;;23490-6183-01
 ;;9002226.02101,"978,23490-6183-02 ",.01)
 ;;23490-6183-02
 ;;9002226.02101,"978,23490-6183-02 ",.02)
 ;;23490-6183-02
 ;;9002226.02101,"978,23490-6183-03 ",.01)
 ;;23490-6183-03
 ;;9002226.02101,"978,23490-6183-03 ",.02)
 ;;23490-6183-03
 ;;9002226.02101,"978,23490-6183-04 ",.01)
 ;;23490-6183-04
 ;;9002226.02101,"978,23490-6183-04 ",.02)
 ;;23490-6183-04
 ;;9002226.02101,"978,23490-6183-06 ",.01)
 ;;23490-6183-06
 ;;9002226.02101,"978,23490-6183-06 ",.02)
 ;;23490-6183-06
 ;;9002226.02101,"978,23490-6183-07 ",.01)
 ;;23490-6183-07
 ;;9002226.02101,"978,23490-6183-07 ",.02)
 ;;23490-6183-07