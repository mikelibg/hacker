.class public Lcom/apperhand/common/dto/protocol/ActivationRequest;
.super Lcom/apperhand/common/dto/protocol/BaseRequest;
.source "ActivationRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x44c618f889a26fc5L


# instance fields
.field private firstTimeActivation:Z

.field private missingParameters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseRequest;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getMissingParameters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/ActivationRequest;->missingParameters:Ljava/util/Collection;

    return-object v0
.end method

.method public isFirstTimeActivation()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/apperhand/common/dto/protocol/ActivationRequest;->firstTimeActivation:Z

    return v0
.end method

.method public setFirstTimeActivation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/apperhand/common/dto/protocol/ActivationRequest;->firstTimeActivation:Z

    .line 30
    return-void
.end method

.method public setMissingParameters(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/ActivationRequest;->missingParameters:Ljava/util/Collection;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivationRequest [missingParameters="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/ActivationRequest;->missingParameters:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstTimeActivation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apperhand/common/dto/protocol/ActivationRequest;->firstTimeActivation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/apperhand/common/dto/protocol/BaseRequest;->toString()Ljava/lang/String;

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
