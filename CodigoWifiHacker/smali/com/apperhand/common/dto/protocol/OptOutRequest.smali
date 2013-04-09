.class public Lcom/apperhand/common/dto/protocol/OptOutRequest;
.super Lcom/apperhand/common/dto/protocol/BaseRequest;
.source "OptOutRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x2666f900c4a43ac8L


# instance fields
.field private details:Lcom/apperhand/common/dto/OptOutDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/apperhand/common/dto/OptOutDetails;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/OptOutRequest;->details:Lcom/apperhand/common/dto/OptOutDetails;

    return-object v0
.end method

.method public setDetails(Lcom/apperhand/common/dto/OptOutDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/OptOutRequest;->details:Lcom/apperhand/common/dto/OptOutDetails;

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptOutRequest [details="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/OptOutRequest;->details:Lcom/apperhand/common/dto/OptOutDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
