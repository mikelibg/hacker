.class public Lcom/pad/android/util/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# static fields
.field private static final CHAR_SET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 10
    const/16 v2, 0x10

    new-array v1, v2, [C

    fill-array-data v1, :array_0

    .line 12
    .local v1, hexDigit:[C
    const/4 v2, 0x2

    new-array v0, v2, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    .line 13
    .local v0, array:[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 10
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 26
    .local v0, array:[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 34
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 38
    .end local v0           #array:[B
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #k:I
    :goto_1
    return-object v3

    .line 28
    .restart local v0       #array:[B
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #k:I
    :cond_0
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_1

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v2

    invoke-static {v4}, Lcom/pad/android/util/AdUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    aget-byte v3, v0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 35
    .end local v0           #array:[B
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #k:I
    :catch_0
    move-exception v3

    .line 38
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "data"

    .prologue
    .line 48
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
