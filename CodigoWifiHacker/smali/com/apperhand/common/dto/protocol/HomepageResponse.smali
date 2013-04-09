.class public Lcom/apperhand/common/dto/protocol/HomepageResponse;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "HomepageResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x70af1fb0aaa65efcL


# instance fields
.field private homepage:Lcom/apperhand/common/dto/Homepage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getHomepage()Lcom/apperhand/common/dto/Homepage;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/HomepageResponse;->homepage:Lcom/apperhand/common/dto/Homepage;

    return-object v0
.end method

.method public setHomepage(Lcom/apperhand/common/dto/Homepage;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/HomepageResponse;->homepage:Lcom/apperhand/common/dto/Homepage;

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HomepageResponse [homepage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/HomepageResponse;->homepage:Lcom/apperhand/common/dto/Homepage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
