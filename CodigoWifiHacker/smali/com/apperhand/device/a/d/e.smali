.class public final Lcom/apperhand/device/a/d/e;
.super Ljava/lang/Object;
.source "ProtocolUtils.java"


# direct methods
.method public static a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;->getAbTest()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
