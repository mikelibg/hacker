.class public Lcom/pad/android/util/AdEncryption;
.super Ljava/lang/Object;
.source "AdEncryption.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "ciF6e+7Fd^21sd|0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64encode([B)Ljava/lang/String;
    .locals 8
    .parameter "stringArray"

    .prologue
    const/4 v7, 0x0

    .line 280
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 281
    .local v0, base64code:Ljava/lang/String;
    const-string v1, ""

    .line 284
    .local v1, encoded:Ljava/lang/String;
    array-length v5, p0

    rem-int/lit8 v5, v5, 0x3

    rsub-int/lit8 v5, v5, 0x3

    rem-int/lit8 v4, v5, 0x3

    .line 286
    .local v4, paddingCount:I
    array-length v5, p0

    add-int/2addr v5, v4

    invoke-static {v5, p0}, Lcom/pad/android/util/AdEncryption;->zeroPad(I[B)[B

    move-result-object p0

    .line 289
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "=="

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 291
    :cond_0
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 292
    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 291
    add-int/2addr v5, v6

    .line 293
    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 291
    add-int v3, v5, v6

    .line 294
    .local v3, j:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v6, v3, 0x12

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 295
    shr-int/lit8 v6, v3, 0xc

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 296
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    and-int/lit8 v6, v3, 0x3f

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 294
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    add-int/lit8 v2, v2, 0x3

    goto :goto_0
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    const-string v1, ""

    .line 170
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 174
    return-object v1

    .line 172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "plaintext"

    .prologue
    .line 26
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 28
    .local v7, n:I
    rem-int/lit8 v19, v7, 0x10

    if-eqz v19, :cond_0

    .line 30
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    rem-int/lit8 v21, v7, 0x10

    rsub-int/lit8 v21, v21, 0x10

    invoke-static/range {v20 .. v21}, Lcom/pad/android/util/AdEncryption;->repeat(CI)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    .local v5, i:I
    invoke-static {}, Lcom/pad/android/util/AdEncryption;->getRndIv()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 36
    .local v4, encText:[B
    const-string v19, "ciF6e+7Fd^21sd|0"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/pad/android/util/AdEncryption;->xor([B[B)[B

    move-result-object v6

    .line 37
    .local v6, iv:[B
    array-length v0, v6

    move/from16 v19, v0

    const/16 v20, 0x200

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 39
    const/16 v19, 0x200

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 40
    .local v12, tmp:[B
    const/4 v14, 0x0

    .local v14, x:I
    :goto_0
    const/16 v19, 0x200

    move/from16 v0, v19

    if-lt v14, v0, :cond_2

    .line 44
    move-object v6, v12

    .line 47
    .end local v12           #tmp:[B
    .end local v14           #x:I
    :cond_1
    :goto_1
    if-lt v5, v7, :cond_3

    .line 105
    invoke-static {v4}, Lcom/pad/android/util/AdEncryption;->base64encode([B)Ljava/lang/String;

    move-result-object v19

    const-string v20, "+/="

    const-string v21, "-_~"

    invoke-static/range {v19 .. v21}, Lcom/pad/android/util/AdEncryption;->replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 42
    .restart local v12       #tmp:[B
    .restart local v14       #x:I
    :cond_2
    aget-byte v19, v6, v14

    aput-byte v19, v12, v14

    .line 40
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 51
    .end local v12           #tmp:[B
    .end local v14           #x:I
    :cond_3
    invoke-static {v6}, Lcom/pad/android/util/AdEncryption;->sha1([B)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, sha1Str:Ljava/lang/String;
    invoke-static {v9}, Lcom/pad/android/util/AdEncryption;->pack(Ljava/lang/String;)[B

    move-result-object v8

    .line 54
    .local v8, packStr:[B
    const-string v11, ""

    .line 57
    .local v11, subStr:Ljava/lang/String;
    add-int/lit8 v19, v5, 0x10

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 64
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/pad/android/util/AdEncryption;->xor([B[B)[B

    move-result-object v2

    .line 69
    .local v2, block:[B
    array-length v0, v4

    move/from16 v19, v0

    array-length v0, v2

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 70
    .local v13, tmp2:[B
    const/4 v14, 0x0

    .restart local v14       #x:I
    :goto_3
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_5

    .line 74
    const/4 v15, 0x0

    .local v15, y:I
    :goto_4
    array-length v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_6

    .line 78
    move-object v4, v13

    .line 82
    array-length v0, v2

    move/from16 v19, v0

    array-length v0, v6

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 83
    .restart local v12       #tmp:[B
    const/16 v16, 0x0

    .local v16, z:I
    :goto_5
    array-length v0, v2

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 87
    const/16 v17, 0x0

    .local v17, za:I
    :goto_6
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 91
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x200

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 93
    const/16 v19, 0x200

    move/from16 v0, v19

    new-array v10, v0, [B

    .line 94
    .local v10, sub:[B
    const/16 v18, 0x0

    .local v18, zb:I
    :goto_7
    const/16 v19, 0x200

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 98
    move-object v12, v10

    .line 100
    .end local v10           #sub:[B
    .end local v18           #zb:I
    :cond_4
    const-string v19, "ciF6e+7Fd^21sd|0"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/pad/android/util/AdEncryption;->xor([B[B)[B

    move-result-object v6

    .line 101
    add-int/lit8 v5, v5, 0x10

    goto/16 :goto_1

    .line 59
    .end local v2           #block:[B
    .end local v12           #tmp:[B
    .end local v13           #tmp2:[B
    .end local v14           #x:I
    .end local v15           #y:I
    .end local v16           #z:I
    .end local v17           #za:I
    :catch_0
    move-exception v3

    .line 61
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 72
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #block:[B
    .restart local v13       #tmp2:[B
    .restart local v14       #x:I
    :cond_5
    aget-byte v19, v4, v14

    aput-byte v19, v13, v14

    .line 70
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 76
    .restart local v15       #y:I
    :cond_6
    array-length v0, v4

    move/from16 v19, v0

    add-int v19, v19, v15

    aget-byte v20, v2, v15

    aput-byte v20, v13, v19

    .line 74
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 85
    .restart local v12       #tmp:[B
    .restart local v16       #z:I
    :cond_7
    aget-byte v19, v2, v16

    aput-byte v19, v12, v16

    .line 83
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 89
    .restart local v17       #za:I
    :cond_8
    array-length v0, v2

    move/from16 v19, v0

    add-int v19, v19, v17

    aget-byte v20, v6, v17

    aput-byte v20, v12, v19

    .line 87
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 96
    .restart local v10       #sub:[B
    .restart local v18       #zb:I
    :cond_9
    aget-byte v19, v12, v18

    aput-byte v19, v10, v18

    .line 94
    add-int/lit8 v18, v18, 0x1

    goto :goto_7
.end method

.method private static getRndIv()Ljava/lang/String;
    .locals 10

    .prologue
    .line 122
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 123
    .local v0, base:Ljava/lang/String;
    const/16 v3, 0x10

    .line 124
    .local v3, ivLen:I
    const-string v2, ""

    .local v2, iv:Ljava/lang/String;
    move v4, v3

    .line 125
    .end local v3           #ivLen:I
    .local v4, ivLen:I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4           #ivLen:I
    .restart local v3       #ivLen:I
    if-gtz v4, :cond_0

    .line 131
    return-object v2

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x404f

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 128
    .local v5, rand:I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, ch:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v4, v3

    .end local v3           #ivLen:I
    .restart local v4       #ivLen:I
    goto :goto_0
.end method

.method private static pack(Ljava/lang/String;)[B
    .locals 12
    .parameter "str"

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 199
    .local v4, len:I
    const/4 v8, 0x1

    new-array v5, v8, [B

    .line 201
    .local v5, out:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    int-to-double v8, v3

    div-int/lit8 v10, v4, 0x2

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_0

    .line 228
    return-object v5

    .line 203
    :cond_0
    const-string v0, ""

    .line 206
    .local v0, c:Ljava/lang/String;
    mul-int/lit8 v8, v3, 0x2

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x2

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_1
    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v1, v8

    .line 215
    .local v1, ch:B
    :try_start_1
    aput-byte v1, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v1           #ch:B
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    mul-int/lit8 v9, v3, 0x2

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 217
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #ch:B
    :catch_1
    move-exception v2

    .line 219
    .restart local v2       #e:Ljava/lang/Exception;
    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [B

    .line 220
    .local v6, tmp:[B
    const/4 v7, 0x0

    .local v7, x:I
    :goto_3
    array-length v8, v5

    if-lt v7, v8, :cond_1

    .line 224
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aput-byte v1, v6, v8

    .line 225
    move-object v5, v6

    goto :goto_2

    .line 222
    :cond_1
    aget-byte v8, v5, v7

    aput-byte v8, v6, v7

    .line 220
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method private static repeat(CI)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "n"

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 140
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "searchChars"
    .parameter "replaceChars"

    .prologue
    .line 234
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 268
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 238
    .restart local p0
    :cond_1
    if-nez p2, :cond_2

    .line 240
    const-string p2, ""

    .line 242
    :cond_2
    const/4 v4, 0x0

    .line 243
    .local v4, modified:Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 244
    .local v5, replaceCharsLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 245
    .local v6, strLength:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 246
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v6, :cond_3

    .line 263
    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 249
    .local v1, ch:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 250
    .local v3, index:I
    if-ltz v3, :cond_5

    .line 252
    const/4 v4, 0x1

    .line 253
    if-ge v3, v5, :cond_4

    .line 255
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static sha1([B)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, md:Ljava/security/MessageDigest;
    const-string v1, ""

    .line 152
    .local v1, encrypt:Ljava/lang/String;
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 157
    :goto_0
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/pad/android/util/AdEncryption;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 163
    :goto_1
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static xor([B[B)[B
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 111
    array-length v2, p0

    new-array v1, v2, [B

    .line 112
    .local v1, out:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 116
    return-object v1

    .line 114
    :cond_0
    aget-byte v2, p0, v0

    array-length v3, p1

    rem-int v3, v0, v3

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static zeroPad(I[B)[B
    .locals 3
    .parameter "length"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 273
    new-array v0, p0, [B

    .line 274
    .local v0, padded:[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    return-object v0
.end method
