.class public Lcom/apperhand/common/dto/protocol/ActivationResponse;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "ActivationResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x493b48e4bd70e353L


# instance fields
.field private activation:Lcom/apperhand/common/dto/Activation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apperhand/common/dto/protocol/ActivationResponse;-><init>(Lcom/apperhand/common/dto/Activation;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/common/dto/Activation;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/ActivationResponse;->activation:Lcom/apperhand/common/dto/Activation;

    .line 18
    return-void
.end method


# virtual methods
.method public getActivation()Lcom/apperhand/common/dto/Activation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/ActivationResponse;->activation:Lcom/apperhand/common/dto/Activation;

    return-object v0
.end method

.method public setActivation(Lcom/apperhand/common/dto/Activation;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/ActivationResponse;->activation:Lcom/apperhand/common/dto/Activation;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivationResponse [activation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/ActivationResponse;->activation:Lcom/apperhand/common/dto/Activation;

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
