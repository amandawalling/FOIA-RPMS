BGP31K5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55045-1566-07 ")
 ;;1567
 ;;21,"55045-1566-08 ")
 ;;1568
 ;;21,"55045-1566-09 ")
 ;;1569
 ;;21,"55045-1586-08 ")
 ;;1570
 ;;21,"55045-1594-00 ")
 ;;1571
 ;;21,"55045-1594-03 ")
 ;;1572
 ;;21,"55045-1594-04 ")
 ;;1573
 ;;21,"55045-1594-06 ")
 ;;1574
 ;;21,"55045-1594-07 ")
 ;;1575
 ;;21,"55045-1594-08 ")
 ;;1576
 ;;21,"55045-1594-09 ")
 ;;1577
 ;;21,"55045-1598-00 ")
 ;;1578
 ;;21,"55045-1598-03 ")
 ;;1579
 ;;21,"55045-1598-05 ")
 ;;1580
 ;;21,"55045-1598-06 ")
 ;;1581
 ;;21,"55045-1598-07 ")
 ;;1582
 ;;21,"55045-1598-08 ")
 ;;1583
 ;;21,"55045-1598-09 ")
 ;;1584
 ;;21,"55045-1637-05 ")
 ;;1585
 ;;21,"55045-1790-06 ")
 ;;1586
 ;;21,"55045-2777-06 ")
 ;;1587
 ;;21,"55045-2777-08 ")
 ;;1588
 ;;21,"55045-2972-00 ")
 ;;1589
 ;;21,"55045-2972-04 ")
 ;;1590
 ;;21,"55045-2972-05 ")
 ;;1591
 ;;21,"55045-2972-06 ")
 ;;1592
 ;;21,"55045-2972-07 ")
 ;;1593
 ;;21,"55045-2972-08 ")
 ;;1594
 ;;21,"55045-3058-01 ")
 ;;1595
 ;;21,"55045-3058-06 ")
 ;;1596
 ;;21,"55045-3058-09 ")
 ;;1597
 ;;21,"55045-3123-09 ")
 ;;1598
 ;;21,"55045-3487-01 ")
 ;;1599
 ;;21,"55045-3487-03 ")
 ;;1600
 ;;21,"55045-3546-01 ")
 ;;1601
 ;;21,"55045-3759-06 ")
 ;;1602
 ;;21,"55045-3767-08 ")
 ;;1603
 ;;21,"55045-3943-01 ")
 ;;1604
 ;;21,"55048-0055-15 ")
 ;;1605
 ;;21,"55048-0055-20 ")
 ;;1606
 ;;21,"55048-0055-30 ")
 ;;1607
 ;;21,"55048-0055-40 ")
 ;;1608
 ;;21,"55048-0055-60 ")
 ;;1609
 ;;21,"55048-0055-71 ")
 ;;1610
 ;;21,"55048-0055-90 ")
 ;;1611
 ;;21,"55048-0080-14 ")
 ;;1612
 ;;21,"55048-0080-15 ")
 ;;1613
 ;;21,"55048-0080-20 ")
 ;;1614
 ;;21,"55048-0080-30 ")
 ;;1615
 ;;21,"55048-0080-40 ")
 ;;1616
 ;;21,"55048-0080-45 ")
 ;;1617
 ;;21,"55048-0080-60 ")
 ;;1618
 ;;21,"55048-0080-71 ")
 ;;1619
 ;;21,"55048-0080-90 ")
 ;;1620
 ;;21,"55048-0081-30 ")
 ;;1621
 ;;21,"55048-0082-10 ")
 ;;1622
 ;;21,"55048-0082-30 ")
 ;;1623
 ;;21,"55048-0082-40 ")
 ;;1624
 ;;21,"55048-0082-60 ")
 ;;1625
 ;;21,"55048-0082-90 ")
 ;;1626
 ;;21,"55048-0107-90 ")
 ;;1627
 ;;21,"55048-0136-30 ")
 ;;1628
 ;;21,"55048-0136-60 ")
 ;;1629
 ;;21,"55048-0136-90 ")
 ;;1630
 ;;21,"55048-0263-90 ")
 ;;1631
 ;;21,"55048-0507-60 ")
 ;;1632
 ;;21,"55048-0507-71 ")
 ;;1633
 ;;21,"55048-0507-78 ")
 ;;1634
 ;;21,"55048-0507-84 ")
 ;;1635
 ;;21,"55048-0507-90 ")
 ;;1636
 ;;21,"55048-0514-30 ")
 ;;1637
 ;;21,"55048-0514-60 ")
 ;;1638
 ;;21,"55048-0514-90 ")
 ;;1639
 ;;21,"55048-0515-20 ")
 ;;1640
 ;;21,"55048-0515-30 ")
 ;;1641
 ;;21,"55048-0515-60 ")
 ;;1642
 ;;21,"55048-0515-71 ")
 ;;1643
 ;;21,"55048-0515-90 ")
 ;;1644
 ;;21,"55048-0616-90 ")
 ;;1645
 ;;21,"55048-0622-60 ")
 ;;1646
 ;;21,"55048-0848-90 ")
 ;;1647
 ;;21,"55048-0849-60 ")
 ;;1648
 ;;21,"55048-0849-90 ")
 ;;1649
 ;;21,"55253-0276-60 ")
 ;;1650
 ;;21,"55253-0277-60 ")
 ;;1651
 ;;21,"55289-0017-20 ")
 ;;1652
 ;;21,"55289-0017-40 ")
 ;;1653
 ;;21,"55289-0049-01 ")
 ;;1654
 ;;21,"55289-0049-10 ")
 ;;1655
 ;;21,"55289-0049-14 ")
 ;;1656
 ;;21,"55289-0049-15 ")
 ;;1657
 ;;21,"55289-0049-20 ")
 ;;1658
 ;;21,"55289-0049-21 ")
 ;;1659
 ;;21,"55289-0049-24 ")
 ;;1660
 ;;21,"55289-0049-30 ")
 ;;1661
 ;;21,"55289-0049-40 ")
 ;;1662
 ;;21,"55289-0049-60 ")
 ;;1663
 ;;21,"55289-0049-90 ")
 ;;1664
 ;;21,"55289-0049-98 ")
 ;;1665
 ;;21,"55289-0115-15 ")
 ;;1666
 ;;21,"55289-0115-20 ")
 ;;1667
 ;;21,"55289-0115-21 ")
 ;;1668
 ;;21,"55289-0115-30 ")
 ;;1669
 ;;21,"55289-0164-01 ")
 ;;1670
 ;;21,"55289-0164-10 ")
 ;;1671
 ;;21,"55289-0164-15 ")
 ;;1672
 ;;21,"55289-0164-20 ")
 ;;1673
 ;;21,"55289-0164-24 ")
 ;;1674
 ;;21,"55289-0164-28 ")
 ;;1675
 ;;21,"55289-0164-30 ")
 ;;1676
 ;;21,"55289-0164-40 ")
 ;;1677
 ;;21,"55289-0164-60 ")
 ;;1678
 ;;21,"55289-0164-90 ")
 ;;1679
 ;;21,"55289-0164-93 ")
 ;;1680
 ;;21,"55289-0229-30 ")
 ;;1681
 ;;21,"55289-0236-10 ")
 ;;1682
 ;;21,"55289-0236-14 ")
 ;;1683
 ;;21,"55289-0236-30 ")
 ;;1684
 ;;21,"55289-0316-20 ")
 ;;1685
 ;;21,"55289-0316-25 ")
 ;;1686
 ;;21,"55289-0316-30 ")
 ;;1687
 ;;21,"55289-0316-40 ")
 ;;1688
 ;;21,"55289-0316-56 ")
 ;;1689
 ;;21,"55289-0316-60 ")
 ;;1690
 ;;21,"55289-0376-20 ")
 ;;1691
 ;;21,"55289-0376-40 ")
 ;;1692
 ;;21,"55289-0472-20 ")
 ;;1693
 ;;21,"55289-0496-30 ")
 ;;1694
 ;;21,"55289-0567-10 ")
 ;;1695
 ;;21,"55289-0567-12 ")
 ;;1696
 ;;21,"55289-0567-14 ")
 ;;1697
 ;;21,"55289-0567-15 ")
 ;;1698
 ;;21,"55289-0567-17 ")
 ;;1699
 ;;21,"55289-0567-18 ")
 ;;1700
 ;;21,"55289-0567-20 ")
 ;;1701
 ;;21,"55289-0567-21 ")
 ;;1702
 ;;21,"55289-0567-30 ")
 ;;1703
 ;;21,"55289-0567-42 ")
 ;;1704
 ;;21,"55289-0567-60 ")
 ;;1705
 ;;21,"55289-0567-90 ")
 ;;1706
 ;;21,"55289-0567-98 ")
 ;;1707
 ;;21,"55289-0578-20 ")
 ;;1708
 ;;21,"55289-0578-40 ")
 ;;1709
 ;;21,"55289-0633-08 ")
 ;;1710
 ;;21,"55289-0633-10 ")
 ;;1711
 ;;21,"55289-0633-17 ")
 ;;1712
 ;;21,"55289-0633-20 ")
 ;;1713
 ;;21,"55289-0633-24 ")
 ;;1714
 ;;21,"55289-0633-28 ")
 ;;1715
 ;;21,"55289-0633-30 ")
 ;;1716
 ;;21,"55289-0633-40 ")
 ;;1717
 ;;21,"55289-0633-97 ")
 ;;1718
 ;;21,"55289-0646-14 ")
 ;;1719
 ;;21,"55289-0646-15 ")
 ;;1720
 ;;21,"55289-0646-20 ")
 ;;1721
 ;;21,"55289-0670-01 ")
 ;;1722
 ;;21,"55289-0670-10 ")
 ;;1723
 ;;21,"55289-0670-12 ")
 ;;1724
 ;;21,"55289-0670-14 ")
 ;;1725
 ;;21,"55289-0670-20 ")
 ;;1726
 ;;21,"55289-0670-24 ")
 ;;1727
 ;;21,"55289-0670-28 ")
 ;;1728
 ;;21,"55289-0670-30 ")
 ;;1729
 ;;21,"55289-0670-40 ")
 ;;1730
 ;;21,"55289-0670-60 ")
 ;;1731
 ;;21,"55289-0670-90 ")
 ;;1732
 ;;21,"55289-0670-93 ")
 ;;1733
 ;;21,"55289-0695-28 ")
 ;;1734
 ;;21,"55289-0695-40 ")
 ;;1735
 ;;21,"55289-0736-10 ")
 ;;1736
 ;;21,"55289-0736-15 ")
 ;;1737
 ;;21,"55289-0736-20 ")
 ;;1738
 ;;21,"55289-0736-21 ")
 ;;1739
 ;;21,"55289-0736-30 ")
 ;;1740
 ;;21,"55289-0745-10 ")
 ;;1741
 ;;21,"55289-0745-20 ")
 ;;1742
 ;;21,"55289-0846-20 ")
 ;;1743
 ;;21,"55289-0877-14 ")
 ;;1744
 ;;21,"55289-0877-20 ")
 ;;1745
 ;;21,"55289-0877-30 ")
 ;;1746
 ;;21,"55289-0877-60 ")
 ;;1747
 ;;21,"55289-0888-24 ")
 ;;1748
 ;;21,"55390-0059-10 ")
 ;;1749
 ;;21,"55887-0435-15 ")
 ;;1750
 ;;21,"55887-0435-20 ")
 ;;1751
 ;;21,"55887-0435-30 ")
 ;;1752
 ;;21,"55887-0435-60 ")
 ;;1753
 ;;21,"55887-0435-82 ")
 ;;1754
 ;;21,"55887-0435-90 ")
 ;;1755
 ;;21,"55887-0631-12 ")
 ;;1756
 ;;21,"55887-0631-20 ")
 ;;1757
 ;;21,"55887-0631-30 ")
 ;;1758
 ;;21,"55887-0631-40 ")
 ;;1759
 ;;21,"55887-0631-60 ")
 ;;1760
 ;;21,"55887-0631-82 ")
 ;;1761
 ;;21,"55887-0631-90 ")
 ;;1762
 ;;21,"55887-0670-12 ")
 ;;1763
 ;;21,"55887-0670-14 ")
 ;;1764
 ;;21,"55887-0670-15 ")
 ;;1765
 ;;21,"55887-0670-20 ")
 ;;1766
 ;;21,"55887-0670-28 ")
 ;;1767
 ;;21,"55887-0670-30 ")
 ;;1768
 ;;21,"55887-0670-60 ")
 ;;1769
 ;;21,"55887-0670-82 ")
 ;;1770
 ;;21,"55887-0670-90 ")
 ;;1771
 ;;21,"55887-0799-14 ")
 ;;1772
 ;;21,"55887-0799-20 ")
 ;;1773
 ;;21,"55887-0799-28 ")
 ;;1774
 ;;21,"55887-0799-30 ")
 ;;1775
 ;;21,"55887-0799-40 ")
 ;;1776
 ;;21,"55887-0799-60 ")
 ;;1777
 ;;21,"55887-0822-10 ")
 ;;1778
 ;;21,"55887-0822-30 ")
 ;;1779
 ;;21,"55887-0860-20 ")
 ;;1780
 ;;21,"55887-0860-30 ")
 ;;1781
 ;;21,"55887-0860-40 ")
 ;;1782
 ;;21,"55887-0860-50 ")
 ;;1783
 ;;21,"55887-0860-60 ")
 ;;1784
 ;;21,"55887-0860-82 ")
 ;;1785
 ;;21,"55887-0860-90 ")
 ;;1786
 ;;21,"55887-0890-10 ")
 ;;1787
 ;;21,"55887-0890-15 ")
 ;;1788
 ;;21,"55887-0890-20 ")
 ;;1789
 ;;21,"55887-0890-30 ")
 ;;1790
 ;;21,"55887-0890-40 ")
 ;;1791
 ;;21,"55887-0890-60 ")
 ;;1792
 ;;21,"55887-0907-14 ")
 ;;1793
 ;;21,"55887-0907-20 ")
 ;;1794
 ;;21,"55887-0907-30 ")
 ;;1795
 ;;21,"55887-0907-60 ")
 ;;1796
 ;;21,"55887-0907-82 ")
 ;;1797
 ;;21,"55887-0907-90 ")
 ;;1798
 ;;21,"55887-0989-10 ")
 ;;1799
 ;;21,"55887-0989-12 ")
 ;;1800
 ;;21,"55887-0989-14 ")
 ;;1801
 ;;21,"55887-0989-15 ")
 ;;1802
 ;;21,"55887-0989-20 ")
 ;;1803
 ;;21,"55887-0989-21 ")
 ;;1804
 ;;21,"55887-0989-28 ")
 ;;1805
 ;;21,"55887-0989-30 ")
 ;;1806
 ;;21,"55887-0989-40 ")
 ;;1807
 ;;21,"55887-0989-60 ")
 ;;1808
 ;;21,"55887-0989-82 ")
 ;;1809
 ;;21,"55887-0989-90 ")
 ;;1810
 ;;21,"55887-0990-10 ")
 ;;1811
 ;;21,"55887-0990-12 ")
 ;;1812
 ;;21,"55887-0990-14 ")
 ;;1813
 ;;21,"55887-0990-20 ")
 ;;1814
 ;;21,"55887-0990-25 ")
 ;;1815
 ;;21,"55887-0990-28 ")
 ;;1816
 ;;21,"55887-0990-30 ")
 ;;1817
 ;;21,"55887-0990-40 ")
 ;;1818
 ;;21,"55887-0990-45 ")
 ;;1819
 ;;21,"55887-0990-60 ")
 ;;1820
 ;;21,"55887-0990-82 ")
 ;;1821
 ;;21,"55887-0990-90 ")
 ;;1822
 ;;21,"57866-0213-01 ")
 ;;1823
 ;;21,"57866-0225-01 ")
 ;;1824
 ;;21,"57866-3024-03 ")
 ;;1825
 ;;21,"57866-3024-04 ")
 ;;1826
 ;;21,"57866-3024-05 ")
 ;;1827
 ;;21,"57866-3137-01 ")
 ;;1828
 ;;21,"57866-3435-00 ")
 ;;1829
 ;;21,"57866-3435-01 ")
 ;;1830
 ;;21,"57866-3435-02 ")
 ;;1831
 ;;21,"57866-3435-03 ")
 ;;1832
 ;;21,"57866-3435-04 ")
 ;;1833
 ;;21,"57866-3435-05 ")
 ;;1834
 ;;21,"57866-3435-06 ")
 ;;1835
 ;;21,"57866-3435-08 ")
 ;;1836
 ;;21,"57866-3444-01 ")
 ;;1837
 ;;21,"57866-3444-04 ")
 ;;1838
 ;;21,"57866-3444-05 ")
 ;;1839
 ;;21,"57866-3444-06 ")
 ;;1840
 ;;21,"57866-3444-08 ")
 ;;1841
 ;;21,"57866-3444-09 ")
 ;;1842
 ;;21,"57866-4026-01 ")
 ;;1843
 ;;21,"57866-4026-02 ")
 ;;1844
 ;;21,"57866-4026-03 ")
 ;;1845
 ;;21,"57866-4026-04 ")
 ;;1846
 ;;21,"57866-4026-05 ")
 ;;1847
 ;;21,"57866-4026-08 ")
 ;;1848
 ;;21,"57866-4027-01 ")
 ;;1849
 ;;21,"57866-4027-02 ")
 ;;1850
 ;;21,"57866-4027-03 ")
 ;;1851
 ;;21,"57866-4027-04 ")
 ;;1852
 ;;21,"57866-4027-05 ")
 ;;1853
 ;;21,"57866-4027-07 ")
 ;;1854
 ;;21,"57866-4027-08 ")
 ;;1855
 ;;21,"57866-4027-09 ")
 ;;1856
 ;;21,"57866-4637-02 ")
 ;;1857
 ;;21,"57866-4637-04 ")
 ;;1858
 ;;21,"57866-4637-05 ")
 ;;1859
 ;;21,"57866-4842-01 ")
 ;;1860
 ;;21,"57866-4842-02 ")
 ;;1861
 ;;21,"57866-4842-03 ")
 ;;1862
 ;;21,"57866-4842-04 ")
 ;;1863
 ;;21,"57866-4842-05 ")
 ;;1864
 ;;21,"57866-4842-06 ")
 ;;1865
 ;;21,"57866-4842-07 ")
 ;;1866
 ;;21,"57866-4842-08 ")
 ;;1867
 ;;21,"57866-4842-09 ")
 ;;1868
 ;;21,"57866-4843-01 ")
 ;;1869
 ;;21,"57866-7601-02 ")
 ;;1870
 ;;21,"57866-7601-03 ")
 ;;1871
 ;;21,"57866-7601-04 ")
 ;;1872
 ;;21,"57866-7601-05 ")
 ;;1873
 ;;21,"57866-7601-06 ")
 ;;1874
 ;;21,"58016-0038-00 ")
 ;;1875
 ;;21,"58016-0038-30 ")
 ;;1876
 ;;21,"58016-0038-60 ")
 ;;1877
 ;;21,"58016-0038-90 ")
 ;;1878
 ;;21,"58016-0070-00 ")
 ;;1879
 ;;21,"58016-0070-30 ")
 ;;1880
 ;;21,"58016-0070-60 ")
 ;;1881
 ;;21,"58016-0070-90 ")
 ;;1882
 ;;21,"58016-0076-00 ")
 ;;1883
 ;;21,"58016-0076-02 ")
 ;;1884
 ;;21,"58016-0076-30 ")
 ;;1885
 ;;21,"58016-0076-60 ")
 ;;1886
 ;;21,"58016-0076-90 ")
 ;;1887
 ;;21,"58016-0076-99 ")
 ;;1888
 ;;21,"58016-0199-00 ")
 ;;1889
 ;;21,"58016-0199-02 ")
 ;;1890
 ;;21,"58016-0199-03 ")
 ;;1891
 ;;21,"58016-0199-20 ")
 ;;1892
 ;;21,"58016-0199-30 ")
 ;;1893
 ;;21,"58016-0199-40 ")
 ;;1894
 ;;21,"58016-0199-60 ")
 ;;1895
 ;;21,"58016-0199-89 ")
 ;;1896
 ;;21,"58016-0199-90 ")
 ;;1897
 ;;21,"58016-0199-99 ")
 ;;1898
 ;;21,"58016-0234-00 ")
 ;;1899
 ;;21,"58016-0234-02 ")
 ;;1900
 ;;21,"58016-0234-07 ")
 ;;1901
 ;;21,"58016-0234-10 ")
 ;;1902
 ;;21,"58016-0234-12 ")
 ;;1903
 ;;21,"58016-0234-14 ")
 ;;1904
 ;;21,"58016-0234-15 ")
 ;;1905
 ;;21,"58016-0234-18 ")
 ;;1906
 ;;21,"58016-0234-20 ")
 ;;1907
 ;;21,"58016-0234-21 ")
 ;;1908
 ;;21,"58016-0234-24 ")
 ;;1909
 ;;21,"58016-0234-28 ")
 ;;1910
 ;;21,"58016-0234-30 ")
 ;;1911
 ;;21,"58016-0234-40 ")
 ;;1912
 ;;21,"58016-0234-45 ")
 ;;1913
 ;;21,"58016-0234-50 ")
 ;;1914
 ;;21,"58016-0234-56 ")
 ;;1915
 ;;21,"58016-0234-60 ")
 ;;1916
 ;;21,"58016-0234-90 ")
 ;;1917
 ;;21,"58016-0234-99 ")
 ;;1918
 ;;21,"58016-0248-00 ")
 ;;1919
 ;;21,"58016-0248-07 ")
 ;;1920
 ;;21,"58016-0248-10 ")
 ;;1921
 ;;21,"58016-0248-12 ")
 ;;1922
 ;;21,"58016-0248-14 ")
 ;;1923
 ;;21,"58016-0248-15 ")
 ;;1924
 ;;21,"58016-0248-20 ")
 ;;1925
 ;;21,"58016-0248-21 ")
 ;;1926
 ;;21,"58016-0248-28 ")
 ;;1927
 ;;21,"58016-0248-30 ")
 ;;1928
 ;;21,"58016-0248-40 ")
 ;;1929
 ;;21,"58016-0248-42 ")
 ;;1930
 ;;21,"58016-0248-50 ")
 ;;1931
 ;;21,"58016-0248-60 ")
 ;;1932
 ;;21,"58016-0248-90 ")
 ;;1933
 ;;21,"58016-0257-00 ")
 ;;1934
 ;;21,"58016-0257-02 ")
 ;;1935
 ;;21,"58016-0257-03 ")
 ;;1936
 ;;21,"58016-0257-12 ")
 ;;1937
 ;;21,"58016-0257-14 ")
 ;;1938
 ;;21,"58016-0257-15 ")
 ;;1939
 ;;21,"58016-0257-20 ")
 ;;1940
 ;;21,"58016-0257-24 ")
 ;;1941
 ;;21,"58016-0257-30 ")
 ;;1942
 ;;21,"58016-0257-40 ")
 ;;1943
 ;;21,"58016-0257-50 ")
 ;;1944
 ;;21,"58016-0257-73 ")
 ;;1945
 ;;21,"58016-0257-84 ")
 ;;1946
 ;;21,"58016-0257-89 ")
 ;;1947
 ;;21,"58016-0257-99 ")
 ;;1948
 ;;21,"58016-0258-00 ")
 ;;1949
 ;;21,"58016-0258-02 ")
 ;;1950
 ;;21,"58016-0258-03 ")
 ;;1951
 ;;21,"58016-0258-08 ")
 ;;1952