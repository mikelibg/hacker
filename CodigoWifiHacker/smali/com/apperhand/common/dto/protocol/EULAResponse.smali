.class public Lcom/apperhand/common/dto/protocol/EULAResponse;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "EULAResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x411b3f23347a467eL


# instance fields
.field private details:Lcom/apperhand/common/dto/EULADetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getDetails()Lcom/apperhand/common/dto/EULADetails;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/EULAResponse;->details:Lcom/apperhand/common/dto/EULADetails;

    return-object v0
.end method

.method public setDetails(Lcom/apperhand/common/dto/EULADetails;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/EULAResponse;->details:Lcom/apperhand/common/dto/EULADetails;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EULAResponse [details="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/EULAResponse;->details:Lcom/apperhand/common/dto/EULADetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
