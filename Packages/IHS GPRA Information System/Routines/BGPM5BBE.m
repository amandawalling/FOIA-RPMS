BGPM5BBE ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON SEP 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"65387033509 ")
 ;;5467
 ;;21,"65427049201 ")
 ;;5468
 ;;21,"65427049202 ")
 ;;5469
 ;;21,"65427049203 ")
 ;;5470
 ;;21,"65427049204 ")
 ;;5471
 ;;21,"65427049205 ")
 ;;5472
 ;;21,"65427049301 ")
 ;;5473
 ;;21,"65427049302 ")
 ;;5474
 ;;21,"65427049303 ")
 ;;5475
 ;;21,"65427049304 ")
 ;;5476
 ;;21,"65427049305 ")
 ;;5477
 ;;21,"65427049701 ")
 ;;5478
 ;;21,"65427049702 ")
 ;;5479
 ;;21,"65427049703 ")
 ;;5480
 ;;21,"65427049704 ")
 ;;5481
 ;;21,"65427049705 ")
 ;;5482
 ;;21,"65580030103 ")
 ;;5483
 ;;21,"65580030109 ")
 ;;5484
 ;;21,"65580030203 ")
 ;;5485
 ;;21,"65580030209 ")
 ;;5486
 ;;21,"65580030303 ")
 ;;5487
 ;;21,"65580030309 ")
 ;;5488
 ;;21,"65580030403 ")
 ;;5489
 ;;21,"65580030409 ")
 ;;5490
 ;;21,"65841009701 ")
 ;;5491
 ;;21,"65841009705 ")
 ;;5492
 ;;21,"65841009706 ")
 ;;5493
 ;;21,"65841009710 ")
 ;;5494
 ;;21,"65841009716 ")
 ;;5495
 ;;21,"65841009801 ")
 ;;5496
 ;;21,"65841009805 ")
 ;;5497
 ;;21,"65841009806 ")
 ;;5498
 ;;21,"65841009810 ")
 ;;5499
 ;;21,"65841009816 ")
 ;;5500
 ;;21,"65841009901 ")
 ;;5501
 ;;21,"65841009905 ")
 ;;5502
 ;;21,"65841009906 ")
 ;;5503
 ;;21,"65841009910 ")
 ;;5504
 ;;21,"65841009916 ")
 ;;5505
 ;;21,"65841060101 ")
 ;;5506
 ;;21,"65841060105 ")
 ;;5507
 ;;21,"65841060106 ")
 ;;5508
 ;;21,"65841060110 ")
 ;;5509
 ;;21,"65841060116 ")
 ;;5510
 ;;21,"65841067101 ")
 ;;5511
 ;;21,"65841067105 ")
 ;;5512
 ;;21,"65841067106 ")
 ;;5513
 ;;21,"65841067110 ")
 ;;5514
 ;;21,"65841067114 ")
 ;;5515
 ;;21,"65841067116 ")
 ;;5516
 ;;21,"65841067201 ")
 ;;5517
 ;;21,"65841067205 ")
 ;;5518
 ;;21,"65841067206 ")
 ;;5519
 ;;21,"65841067210 ")
 ;;5520
 ;;21,"65841067214 ")
 ;;5521
 ;;21,"65841067216 ")
 ;;5522
 ;;21,"65841067301 ")
 ;;5523
 ;;21,"65841067305 ")
 ;;5524
 ;;21,"65841067306 ")
 ;;5525
 ;;21,"65841067310 ")
 ;;5526
 ;;21,"65841067314 ")
 ;;5527
 ;;21,"65841067316 ")
 ;;5528
 ;;21,"65841067401 ")
 ;;5529
 ;;21,"65841067405 ")
 ;;5530
 ;;21,"65841067406 ")
 ;;5531
 ;;21,"65841067410 ")
 ;;5532
 ;;21,"65841067414 ")
 ;;5533
 ;;21,"65841067416 ")
 ;;5534
 ;;21,"65841067501 ")
 ;;5535
 ;;21,"65841067505 ")
 ;;5536
 ;;21,"65841067506 ")
 ;;5537
 ;;21,"65841067510 ")
 ;;5538
 ;;21,"65841067514 ")
 ;;5539
 ;;21,"65841067516 ")
 ;;5540
 ;;21,"65841075101 ")
 ;;5541
 ;;21,"65841075105 ")
 ;;5542
 ;;21,"65841075106 ")
 ;;5543
 ;;21,"65841075110 ")
 ;;5544
 ;;21,"65841075116 ")
 ;;5545
 ;;21,"65841075201 ")
 ;;5546
 ;;21,"65841075205 ")
 ;;5547
 ;;21,"65841075206 ")
 ;;5548
 ;;21,"65841075210 ")
 ;;5549
 ;;21,"65841075216 ")
 ;;5550
 ;;21,"65841075301 ")
 ;;5551
 ;;21,"65841075305 ")
 ;;5552
 ;;21,"65841075306 ")
 ;;5553
 ;;21,"65841075310 ")
 ;;5554
 ;;21,"65841075316 ")
 ;;5555
 ;;21,"65862000101 ")
 ;;5556
 ;;21,"65862000105 ")
 ;;5557
 ;;21,"65862000129 ")
 ;;5558
 ;;21,"65862000130 ")
 ;;5559
 ;;21,"65862000160 ")
 ;;5560
 ;;21,"65862000190 ")
 ;;5561
 ;;21,"65862000301 ")
 ;;5562
 ;;21,"65862000303 ")
 ;;5563
 ;;21,"65862000305 ")
 ;;5564
 ;;21,"65862000330 ")
 ;;5565
 ;;21,"65862000332 ")
 ;;5566
 ;;21,"65862000359 ")
 ;;5567
 ;;21,"65862000360 ")
 ;;5568
 ;;21,"65862000390 ")
 ;;5569
 ;;21,"65862000501 ")
 ;;5570
 ;;21,"65862000505 ")
 ;;5571
 ;;21,"65862000510 ")
 ;;5572
 ;;21,"65862000529 ")
 ;;5573
 ;;21,"65862000530 ")
 ;;5574
 ;;21,"65862000532 ")
 ;;5575
 ;;21,"65862000534 ")
 ;;5576
 ;;21,"65862000560 ")
 ;;5577
 ;;21,"65862000590 ")
 ;;5578
 ;;21,"65862000601 ")
 ;;5579
 ;;21,"65862000605 ")
 ;;5580
 ;;21,"65862000610 ")
 ;;5581
 ;;21,"65862000619 ")
 ;;5582
 ;;21,"65862000630 ")
 ;;5583
 ;;21,"65862000632 ")
 ;;5584
 ;;21,"65862000653 ")
 ;;5585
 ;;21,"65862000660 ")
 ;;5586
 ;;21,"65862000690 ")
 ;;5587
 ;;21,"65862000701 ")
 ;;5588
 ;;21,"65862000705 ")
 ;;5589
 ;;21,"65862000710 ")
 ;;5590
 ;;21,"65862000730 ")
 ;;5591
 ;;21,"65862000732 ")
 ;;5592
 ;;21,"65862000759 ")
 ;;5593
 ;;21,"65862000760 ")
 ;;5594
 ;;21,"65862000761 ")
 ;;5595
 ;;21,"65862000790 ")
 ;;5596
 ;;21,"65862001101 ")
 ;;5597
 ;;21,"65862001105 ")
 ;;5598
 ;;21,"65862001129 ")
 ;;5599
 ;;21,"65862001130 ")
 ;;5600
 ;;21,"65862001150 ")
 ;;5601
 ;;21,"65862001151 ")
 ;;5602
 ;;21,"65862001159 ")
 ;;5603
 ;;21,"65862001160 ")
 ;;5604
 ;;21,"65862001190 ")
 ;;5605
 ;;21,"65862001199 ")
 ;;5606
 ;;21,"65862001201 ")
 ;;5607
 ;;21,"65862001205 ")
 ;;5608
 ;;21,"65862001219 ")
 ;;5609
 ;;21,"65862001230 ")
 ;;5610
 ;;21,"65862001250 ")
 ;;5611
 ;;21,"65862001251 ")
 ;;5612
 ;;21,"65862001259 ")
 ;;5613
 ;;21,"65862001260 ")
 ;;5614
 ;;21,"65862001290 ")
 ;;5615
 ;;21,"65862001299 ")
 ;;5616
 ;;21,"65862001301 ")
 ;;5617
 ;;21,"65862001305 ")
 ;;5618
 ;;21,"65862001325 ")
 ;;5619
 ;;21,"65862001326 ")
 ;;5620
 ;;21,"65862001330 ")
 ;;5621
 ;;21,"65862001350 ")
 ;;5622
 ;;21,"65862001359 ")
 ;;5623
 ;;21,"65862001360 ")
 ;;5624
 ;;21,"65862001390 ")
 ;;5625
 ;;21,"65862001399 ")
 ;;5626
 ;;21,"65862002101 ")
 ;;5627
 ;;21,"65862002106 ")
 ;;5628
 ;;21,"65862002130 ")
 ;;5629
 ;;21,"65862002160 ")
 ;;5630
 ;;21,"65862002190 ")
 ;;5631
 ;;21,"65862002201 ")
 ;;5632
 ;;21,"65862002206 ")
 ;;5633
 ;;21,"65862002230 ")
 ;;5634
 ;;21,"65862002260 ")
 ;;5635
 ;;21,"65862002290 ")
 ;;5636
 ;;21,"65862002301 ")
 ;;5637
 ;;21,"65862002306 ")
 ;;5638
 ;;21,"65862002330 ")
 ;;5639
 ;;21,"65862002360 ")
 ;;5640
 ;;21,"65862002390 ")
 ;;5641
 ;;21,"65862003101 ")
 ;;5642
 ;;21,"65862003103 ")
 ;;5643
 ;;21,"65862003105 ")
 ;;5644
 ;;21,"65862003119 ")
 ;;5645
 ;;21,"65862003130 ")
 ;;5646
 ;;21,"65862003132 ")
 ;;5647
 ;;21,"65862003160 ")
 ;;5648
 ;;21,"65862003190 ")
 ;;5649
 ;;21,"65862003201 ")
 ;;5650
 ;;21,"65862003203 ")
 ;;5651
 ;;21,"65862003205 ")
 ;;5652
 ;;21,"65862003230 ")
 ;;5653
 ;;21,"65862003232 ")
 ;;5654
 ;;21,"65862003239 ")
 ;;5655
 ;;21,"65862003260 ")
 ;;5656
 ;;21,"65862003290 ")
 ;;5657
 ;;21,"65862007424 ")
 ;;5658
 ;;21,"65862015401 ")
 ;;5659
 ;;21,"65862015405 ")
 ;;5660
 ;;21,"65862015430 ")
 ;;5661
 ;;21,"65862015459 ")
 ;;5662
 ;;21,"65862015499 ")
 ;;5663
 ;;21,"65862015501 ")
 ;;5664
 ;;21,"65862015505 ")
 ;;5665
 ;;21,"65862015530 ")
 ;;5666
 ;;21,"65862015549 ")
 ;;5667
 ;;21,"65862015599 ")
 ;;5668
 ;;21,"65862015601 ")
 ;;5669
 ;;21,"65862015605 ")
 ;;5670
 ;;21,"65862015630 ")
 ;;5671
 ;;21,"65862015636 ")
 ;;5672
 ;;21,"65862015699 ")
 ;;5673
 ;;21,"65862015701 ")
 ;;5674
 ;;21,"65862015705 ")
 ;;5675
 ;;21,"65862015730 ")
 ;;5676
 ;;21,"65862015739 ")
 ;;5677
 ;;21,"65862015799 ")
 ;;5678
 ;;21,"65862019201 ")
 ;;5679
 ;;21,"65862019205 ")
 ;;5680
 ;;21,"65862019226 ")
 ;;5681
 ;;21,"65862019299 ")
 ;;5682
 ;;21,"65862019301 ")
 ;;5683
 ;;21,"65862019305 ")
 ;;5684
 ;;21,"65862019326 ")
 ;;5685
 ;;21,"65862019399 ")
 ;;5686
 ;;21,"65862019401 ")
 ;;5687
 ;;21,"65862019405 ")
 ;;5688
 ;;21,"65862019422 ")
 ;;5689
 ;;21,"65862019430 ")
 ;;5690
 ;;21,"65862019499 ")
 ;;5691
 ;;21,"65862022460 ")
 ;;5692
 ;;21,"65862040401 ")
 ;;5693
 ;;21,"65862040410 ")
 ;;5694
 ;;21,"65862040430 ")
 ;;5695
 ;;21,"65862040460 ")
 ;;5696
 ;;21,"65862040471 ")
 ;;5697
 ;;21,"65862040499 ")
 ;;5698
 ;;21,"65862040501 ")
 ;;5699
 ;;21,"65862040510 ")
 ;;5700
 ;;21,"65862040530 ")
 ;;5701
 ;;21,"65862040560 ")
 ;;5702
 ;;21,"65862040566 ")
 ;;5703
 ;;21,"65862040590 ")
 ;;5704
 ;;21,"65862040599 ")
 ;;5705
 ;;21,"65862040601 ")
 ;;5706
 ;;21,"65862040610 ")
 ;;5707
 ;;21,"65862040630 ")
 ;;5708
 ;;21,"65862040659 ")
 ;;5709
 ;;21,"65862040690 ")
 ;;5710
 ;;21,"65862040699 ")
 ;;5711
 ;;21,"65862040701 ")
 ;;5712
 ;;21,"65862040710 ")
 ;;5713
 ;;21,"65862040730 ")
 ;;5714
 ;;21,"65862040771 ")
 ;;5715
 ;;21,"65862040799 ")
 ;;5716
 ;;21,"65862040801 ")
 ;;5717
 ;;21,"65862040810 ")
 ;;5718
 ;;21,"65862040820 ")
 ;;5719
 ;;21,"65862040866 ")
 ;;5720
 ;;21,"65862040899 ")
 ;;5721
 ;;21,"65862052701 ")
 ;;5722
 ;;21,"65862052710 ")
 ;;5723
 ;;21,"65862052730 ")
 ;;5724
 ;;21,"65862052747 ")
 ;;5725
 ;;21,"65862052759 ")
 ;;5726
 ;;21,"65862052790 ")
 ;;5727
 ;;21,"65862052799 ")
 ;;5728
 ;;21,"65862052801 ")
 ;;5729
 ;;21,"65862052810 ")
 ;;5730
 ;;21,"65862052830 ")
 ;;5731
 ;;21,"65862052835 ")
 ;;5732
 ;;21,"65862052847 ")
 ;;5733
 ;;21,"65862052890 ")
 ;;5734
 ;;21,"65862052899 ")
 ;;5735
 ;;21,"65862052901 ")
 ;;5736
 ;;21,"65862052905 ")
 ;;5737
 ;;21,"65862052910 ")
 ;;5738
 ;;21,"65862052926 ")
 ;;5739
 ;;21,"65862052930 ")
 ;;5740
 ;;21,"65862052947 ")
 ;;5741
 ;;21,"65862052990 ")
 ;;5742
 ;;21,"66039056001 ")
 ;;5743
 ;;21,"66039056005 ")
 ;;5744
 ;;21,"66039056101 ")
 ;;5745
 ;;21,"66039056105 ")
 ;;5746
 ;;21,"66039056201 ")
 ;;5747
 ;;21,"66039056205 ")
 ;;5748
 ;;21,"66105061010 ")
 ;;5749
 ;;21,"66105061110 ")
 ;;5750
 ;;21,"66105074223 ")
 ;;5751
 ;;21,"66105081323 ")
 ;;5752
 ;;21,"66116004860 ")
 ;;5753
 ;;21,"66116025330 ")
 ;;5754
 ;;21,"66116028130 ")
 ;;5755
 ;;21,"66116031330 ")
 ;;5756
 ;;21,"66116032930 ")
 ;;5757
 ;;21,"66116033830 ")
 ;;5758
 ;;21,"66116034230 ")
 ;;5759
 ;;21,"66116034430 ")
 ;;5760
 ;;21,"66116034830 ")
 ;;5761
 ;;21,"66116035030 ")
 ;;5762
 ;;21,"66116035230 ")
 ;;5763
 ;;21,"66116035315 ")
 ;;5764
 ;;21,"66116035730 ")
 ;;5765
 ;;21,"66116082530 ")
 ;;5766
 ;;21,"66116082630 ")
 ;;5767
 ;;21,"66116084430 ")
 ;;5768
 ;;21,"66116085730 ")
 ;;5769
 ;;21,"66116087130 ")
 ;;5770
 ;;21,"66116087630 ")
 ;;5771
 ;;21,"66258700503 ")
 ;;5772
 ;;21,"66267001810 ")
 ;;5773
 ;;21,"66267001815 ")
 ;;5774
 ;;21,"66267001820 ")
 ;;5775
 ;;21,"66267001828 ")
 ;;5776
 ;;21,"66267001830 ")
 ;;5777
 ;;21,"66267001840 ")
 ;;5778
 ;;21,"66267001860 ")
 ;;5779
 ;;21,"66267001890 ")
 ;;5780
 ;;21,"66267001914 ")
 ;;5781
 ;;21,"66267001915 ")
 ;;5782
 ;;21,"66267001920 ")
 ;;5783
 ;;21,"66267001925 ")
 ;;5784
 ;;21,"66267001930 ")
 ;;5785
 ;;21,"66267001940 ")
 ;;5786
 ;;21,"66267001960 ")
 ;;5787
 ;;21,"66267001990 ")
 ;;5788
 ;;21,"66267001991 ")
 ;;5789
 ;;21,"66267002005 ")
 ;;5790
 ;;21,"66267002010 ")
 ;;5791
 ;;21,"66267002020 ")
 ;;5792
 ;;21,"66267002030 ")
 ;;5793
 ;;21,"66267002040 ")
 ;;5794
 ;;21,"66267002060 ")
 ;;5795
 ;;21,"66267002090 ")
 ;;5796
 ;;21,"66267020504 ")
 ;;5797
 ;;21,"66267020510 ")
 ;;5798
 ;;21,"66267020520 ")
 ;;5799
 ;;21,"66267020530 ")
 ;;5800
 ;;21,"66267020540 ")
 ;;5801
 ;;21,"66267020560 ")
 ;;5802
 ;;21,"66267020590 ")
 ;;5803
 ;;21,"66267020594 ")
 ;;5804
 ;;21,"66267026630 ")
 ;;5805
 ;;21,"66267039220 ")
 ;;5806
 ;;21,"66267039230 ")
 ;;5807
 ;;21,"66267039240 ")
 ;;5808
 ;;21,"66267039260 ")
 ;;5809
 ;;21,"66267039290 ")
 ;;5810
 ;;21,"66267048310 ")
 ;;5811
 ;;21,"66267048315 ")
 ;;5812
 ;;21,"66267048320 ")
 ;;5813
 ;;21,"66267048330 ")
 ;;5814
 ;;21,"66267048340 ")
 ;;5815
 ;;21,"66267048345 ")
 ;;5816
 ;;21,"66267048360 ")
 ;;5817
 ;;21,"66267048415 ")
 ;;5818