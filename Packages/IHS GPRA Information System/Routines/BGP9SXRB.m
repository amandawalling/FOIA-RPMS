BGP9SXRB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00182-1805-63 ")
 ;;151
 ;;21,"00182-1976-01 ")
 ;;152
 ;;21,"00182-1977-01 ")
 ;;153
 ;;21,"00182-1978-01 ")
 ;;154
 ;;21,"00182-2648-01 ")
 ;;155
 ;;21,"00182-2649-01 ")
 ;;156
 ;;21,"00182-2650-01 ")
 ;;157
 ;;21,"00223-7602-10 ")
 ;;158
 ;;21,"00223-7605-10 ")
 ;;159
 ;;21,"00223-7606-10 ")
 ;;160
 ;;21,"00223-7607-10 ")
 ;;161
 ;;21,"00245-0008-35 ")
 ;;162
 ;;21,"00247-0242-30 ")
 ;;163
 ;;21,"00247-0243-21 ")
 ;;164
 ;;21,"00247-0243-30 ")
 ;;165
 ;;21,"00247-0249-00 ")
 ;;166
 ;;21,"00247-0249-30 ")
 ;;167
 ;;21,"00247-0250-00 ")
 ;;168
 ;;21,"00247-0250-28 ")
 ;;169
 ;;21,"00247-0250-30 ")
 ;;170
 ;;21,"00247-0251-00 ")
 ;;171
 ;;21,"00247-0251-30 ")
 ;;172
 ;;21,"00247-0251-60 ")
 ;;173
 ;;21,"00247-0251-90 ")
 ;;174
 ;;21,"00314-0782-70 ")
 ;;175
 ;;21,"00314-0784-70 ")
 ;;176
 ;;21,"00314-0855-70 ")
 ;;177
 ;;21,"00339-5981-12 ")
 ;;178
 ;;21,"00339-5983-12 ")
 ;;179
 ;;21,"00339-5985-12 ")
 ;;180
 ;;21,"00339-6073-12 ")
 ;;181
 ;;21,"00339-6074-12 ")
 ;;182
 ;;21,"00339-6075-12 ")
 ;;183
 ;;21,"00364-2600-01 ")
 ;;184
 ;;21,"00364-2601-01 ")
 ;;185
 ;;21,"00378-1452-01 ")
 ;;186
 ;;21,"00378-1452-05 ")
 ;;187
 ;;21,"00378-1454-01 ")
 ;;188
 ;;21,"00378-1454-05 ")
 ;;189
 ;;21,"00378-1458-01 ")
 ;;190
 ;;21,"00378-1458-05 ")
 ;;191
 ;;21,"00378-3349-99 ")
 ;;192
 ;;21,"00378-3350-99 ")
 ;;193
 ;;21,"00378-3351-99 ")
 ;;194
 ;;21,"00378-3352-99 ")
 ;;195
 ;;21,"00378-3360-99 ")
 ;;196
 ;;21,"00378-3361-99 ")
 ;;197
 ;;21,"00378-4551-01 ")
 ;;198
 ;;21,"00378-4553-01 ")
 ;;199
 ;;21,"00378-4555-01 ")
 ;;200
 ;;21,"00403-0651-18 ")
 ;;201
 ;;21,"00403-2862-18 ")
 ;;202
 ;;21,"00405-4413-01 ")
 ;;203
 ;;21,"00405-4414-01 ")
 ;;204
 ;;21,"00421-0158-01 ")
 ;;205
 ;;21,"00421-0748-01 ")
 ;;206
 ;;21,"00421-0768-01 ")
 ;;207
 ;;21,"00421-1259-01 ")
 ;;208
 ;;21,"00430-0021-24 ")
 ;;209
 ;;21,"00430-0023-24 ")
 ;;210
 ;;21,"00430-0023-30 ")
 ;;211
 ;;21,"00430-0024-24 ")
 ;;212
 ;;21,"00430-0024-30 ")
 ;;213
 ;;21,"00430-0389-24 ")
 ;;214
 ;;21,"00430-0390-24 ")
 ;;215
 ;;21,"00430-0391-24 ")
 ;;216
 ;;21,"00430-0544-14 ")
 ;;217
 ;;21,"00430-0544-23 ")
 ;;218
 ;;21,"00430-0720-24 ")
 ;;219
 ;;21,"00430-6201-40 ")
 ;;220
 ;;21,"00430-6202-40 ")
 ;;221
 ;;21,"00456-0784-10 ")
 ;;222
 ;;21,"00456-1021-10 ")
 ;;223
 ;;21,"00555-0727-02 ")
 ;;224
 ;;21,"00555-0728-02 ")
 ;;225
 ;;21,"00555-0729-02 ")
 ;;226
 ;;21,"00555-0886-02 ")
 ;;227
 ;;21,"00555-0886-04 ")
 ;;228
 ;;21,"00555-0887-02 ")
 ;;229
 ;;21,"00555-0887-04 ")
 ;;230
 ;;21,"00555-0899-02 ")
 ;;231
 ;;21,"00588-5017-70 ")
 ;;232
 ;;21,"00591-0414-01 ")
 ;;233
 ;;21,"00591-0415-01 ")
 ;;234
 ;;21,"00591-0416-01 ")
 ;;235
 ;;21,"00591-0487-01 ")
 ;;236
 ;;21,"00591-0487-05 ")
 ;;237
 ;;21,"00591-0488-01 ")
 ;;238
 ;;21,"00591-0488-05 ")
 ;;239
 ;;21,"00591-0528-01 ")
 ;;240
 ;;21,"00603-3556-21 ")
 ;;241
 ;;21,"00603-3557-21 ")
 ;;242
 ;;21,"00603-3558-21 ")
 ;;243
 ;;21,"00603-3559-21 ")
 ;;244
 ;;21,"00603-3560-21 ")
 ;;245
 ;;21,"00603-3561-21 ")
 ;;246
 ;;21,"00677-1508-01 ")
 ;;247
 ;;21,"00677-1509-01 ")
 ;;248
 ;;21,"00781-1543-01 ")
 ;;249
 ;;21,"00781-1553-01 ")
 ;;250
 ;;21,"00781-1563-01 ")
 ;;251
 ;;21,"00781-1897-01 ")
 ;;252
 ;;21,"00781-1898-01 ")
 ;;253
 ;;21,"00781-1899-01 ")
 ;;254
 ;;21,"00839-5575-30 ")
 ;;255
 ;;21,"00839-8076-06 ")
 ;;256
 ;;21,"00839-8077-06 ")
 ;;257
 ;;21,"00839-8078-06 ")
 ;;258
 ;;21,"00904-2909-10 ")
 ;;259
 ;;21,"00904-2910-10 ")
 ;;260
 ;;21,"00904-2911-10 ")
 ;;261
 ;;21,"00904-5177-60 ")
 ;;262
 ;;21,"00904-5178-60 ")
 ;;263
 ;;21,"00904-5179-60 ")
 ;;264
 ;;21,"12280-0039-00 ")
 ;;265
 ;;21,"12280-0110-00 ")
 ;;266
 ;;21,"25332-0117-10 ")
 ;;267
 ;;21,"50419-0451-04 ")
 ;;268
 ;;21,"50419-0452-04 ")
 ;;269
 ;;21,"50419-0453-04 ")
 ;;270
 ;;21,"50419-0454-04 ")
 ;;271
 ;;21,"50419-0455-04 ")
 ;;272
 ;;21,"50419-0456-04 ")
 ;;273
 ;;21,"50419-0459-04 ")
 ;;274
 ;;21,"51285-0010-01 ")
 ;;275
 ;;21,"51285-0010-02 ")
 ;;276
 ;;21,"51285-0011-02 ")
 ;;277
 ;;21,"51285-0063-90 ")
 ;;278
 ;;21,"51285-0088-90 ")
 ;;279
 ;;21,"51285-0406-02 ")
 ;;280
 ;;21,"51285-0407-02 ")
 ;;281
 ;;21,"51285-0408-02 ")
 ;;282
 ;;21,"51285-0410-02 ")
 ;;283
 ;;21,"51285-0441-02 ")
 ;;284
 ;;21,"51285-0442-02 ")
 ;;285
 ;;21,"51285-0442-05 ")
 ;;286
 ;;21,"51285-0443-02 ")
 ;;287
 ;;21,"51285-0443-05 ")
 ;;288
 ;;21,"51285-0444-02 ")
 ;;289
 ;;21,"51285-0444-05 ")
 ;;290
 ;;21,"51285-0446-02 ")
 ;;291
 ;;21,"51285-0501-02 ")
 ;;292
 ;;21,"51285-0502-02 ")
 ;;293
 ;;21,"51285-0502-04 ")
 ;;294
 ;;21,"51285-0504-02 ")
 ;;295
 ;;21,"51285-0504-04 ")
 ;;296
 ;;21,"51285-0875-02 ")
 ;;297
 ;;21,"51285-0876-02 ")
 ;;298
 ;;21,"51655-0452-25 ")
 ;;299
 ;;21,"52544-0414-01 ")
 ;;300
 ;;21,"52544-0415-01 ")
 ;;301
 ;;21,"52544-0416-01 ")
 ;;302
 ;;21,"52544-0471-08 ")
 ;;303