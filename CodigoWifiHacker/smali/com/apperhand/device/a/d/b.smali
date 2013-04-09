.class public final Lcom/apperhand/device/a/d/b;
.super Ljava/lang/Object;
.source "GeneralUtils.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apperhand/device/a/d/b;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x69t
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2et
        0x62t
        0x72t
        0x6ft
        0x77t
        0x73t
        0x65t
        0x72t
        0x2et
        0x53t
        0x45t
        0x54t
        0x5ft
        0x48t
        0x4ft
        0x4dt
        0x45t
        0x50t
        0x41t
        0x47t
        0x45t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 48
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    if-lez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 55
    :cond_0
    return-object p0
.end method

.method public static a([B[B)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    sget-object p1, Lcom/apperhand/device/a/d/b;->a:[B

    .line 83
    :cond_1
    array-length v4, p0

    .line 84
    new-array v2, v4, [B

    .line 87
    array-length v5, p1

    move v0, v1

    move v3, v1

    .line 89
    :goto_1
    if-ge v3, v4, :cond_3

    .line 90
    if-lt v0, v5, :cond_2

    move v0, v1

    .line 93
    :cond_2
    aget-byte v6, p0, v3

    aget-byte v7, p1, v0

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    .line 89
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 96
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 59
    .line 62
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 65
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apperhand/device/a/d/a;->a([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 70
    :goto_0
    return-object p0

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method
