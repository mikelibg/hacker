.class public final Lcom/millennialmedia/android/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 7
    .parameter "base64Str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    .line 124
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v4, v5, 0x3

    .line 127
    .local v4, size:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    .line 128
    add-int/lit8 v4, v4, -0x2

    .line 132
    :cond_1
    :goto_0
    new-array v1, v4, [B

    .line 135
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    mul-int/lit8 v5, v2, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 137
    mul-int/lit8 v5, v2, 0x4

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/Base64;->mapChars(Ljava/lang/String;)[B

    move-result-object v0

    .line 138
    .local v0, bits:[B
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 140
    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v3

    aget-byte v6, v0, v3

    aput-byte v6, v1, v5

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 129
    .end local v0           #bits:[B
    .end local v1           #bytes:[B
    .end local v2           #i:I
    .end local v3           #j:I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    .line 130
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 135
    .restart local v0       #bits:[B
    .restart local v1       #bytes:[B
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    .end local v0           #bits:[B
    .end local v3           #j:I
    :cond_4
    return-object v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, encodedString:Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    new-array v0, v3, [B

    .line 103
    .local v0, bits:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 105
    aget-byte v3, p0, v2

    aput-byte v3, v0, v6

    .line 106
    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    aput-byte v3, v0, v5

    .line 107
    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p0, v3

    aput-byte v3, v0, v7

    .line 108
    invoke-static {v0}, Lcom/millennialmedia/android/Base64;->mapBits([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 111
    :cond_0
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    if-ne v3, v5, :cond_2

    .line 112
    new-array v3, v5, [B

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v6

    invoke-static {v3}, Lcom/millennialmedia/android/Base64;->mapBits([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 113
    :cond_2
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    if-ne v3, v7, :cond_1

    .line 114
    new-array v3, v7, [B

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v3, v6

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v5

    invoke-static {v3}, Lcom/millennialmedia/android/Base64;->mapBits([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static mapBits([B)Ljava/lang/String;
    .locals 7
    .parameter "bits"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 30
    .local v2, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 31
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    array-length v3, p0

    if-ne v3, v6, :cond_2

    .line 34
    shl-int/lit8 v2, v2, 0x2

    .line 38
    :cond_1
    :goto_1
    array-length v3, p0

    mul-int/lit8 v0, v3, 0x6

    :goto_2
    if-ltz v0, :cond_3

    .line 39
    shr-int v3, v2, v0

    and-int/lit8 v3, v3, 0x3f

    invoke-static {v3}, Lcom/millennialmedia/android/Base64;->mapValue(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v0, v0, -0x6

    goto :goto_2

    .line 35
    :cond_2
    array-length v3, p0

    if-ne v3, v5, :cond_1

    .line 36
    shl-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 41
    :cond_3
    array-length v3, p0

    if-ne v3, v6, :cond_5

    .line 42
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 43
    :cond_5
    array-length v3, p0

    if-ne v3, v5, :cond_4

    .line 44
    const-string v3, "=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static mapChar(C)I
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 52
    add-int/lit8 v0, p0, -0x41

    .line 60
    :goto_0
    return v0

    .line 53
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 54
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    .line 55
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 56
    add-int/lit8 v0, p0, -0x30

    add-int/lit8 v0, v0, 0x34

    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    .line 58
    const/16 v0, 0x3e

    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    .line 60
    const/16 v0, 0x3f

    goto :goto_0

    .line 62
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private static mapChars(Ljava/lang/String;)[B
    .locals 9
    .parameter "substr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    const/4 v2, 0x0

    .line 70
    .local v2, value:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    .line 77
    :cond_0
    if-ne v1, v7, :cond_2

    .line 79
    new-array v0, v6, [B

    .line 80
    .local v0, bits:[B
    shr-int/lit8 v3, v2, 0x4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 96
    :goto_1
    return-object v0

    .line 74
    .end local v0           #bits:[B
    :cond_1
    shl-int/lit8 v3, v2, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/millennialmedia/android/Base64;->mapChar(C)I

    move-result v4

    or-int v2, v3, v4

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    if-ne v1, v8, :cond_3

    .line 84
    new-array v0, v7, [B

    .line 85
    .restart local v0       #bits:[B
    shr-int/lit8 v3, v2, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    .line 86
    shr-int/lit8 v3, v2, 0xa

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    goto :goto_1

    .line 90
    .end local v0           #bits:[B
    :cond_3
    new-array v0, v8, [B

    .line 91
    .restart local v0       #bits:[B
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v7

    .line 92
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    .line 93
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    goto :goto_1
.end method

.method private static mapValue(I)C
    .locals 2
    .parameter "value"

    .prologue
    const/16 v1, 0x3e

    .line 13
    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    .line 14
    add-int/lit8 v0, p0, 0x41

    int-to-char v0, v0

    .line 22
    :goto_0
    return v0

    .line 15
    :cond_0
    const/16 v0, 0x34

    if-ge p0, v0, :cond_1

    .line 16
    add-int/lit8 v0, p0, -0x1a

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_0

    .line 17
    :cond_1
    if-ge p0, v1, :cond_2

    .line 18
    add-int/lit8 v0, p0, -0x34

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_0

    .line 19
    :cond_2
    if-ne p0, v1, :cond_3

    .line 20
    const/16 v0, 0x2b

    goto :goto_0

    .line 22
    :cond_3
    const/16 v0, 0x2f

    goto :goto_0
.end method
