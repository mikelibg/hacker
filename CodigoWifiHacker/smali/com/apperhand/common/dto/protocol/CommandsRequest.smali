.class public Lcom/apperhand/common/dto/protocol/CommandsRequest;
.super Lcom/apperhand/common/dto/protocol/BaseRequest;
.source "CommandsRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x41d62ced1ef8ddbfL


# instance fields
.field private currentInterval:J

.field private initiationType:Ljava/lang/String;

.field private needSpecificParameters:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseRequest;-><init>()V

    .line 9
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->currentInterval:J

    .line 13
    return-void
.end method


# virtual methods
.method public getCurrentInterval()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->currentInterval:J

    return-wide v0
.end method

.method public getInitiationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->initiationType:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedSpecificParameters()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->needSpecificParameters:Z

    return v0
.end method

.method public setCurrentInterval(J)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->currentInterval:J

    .line 37
    return-void
.end method

.method public setInitiationType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->initiationType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setNeedSpecificParameters(Z)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->needSpecificParameters:Z

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandsRequest [initiationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->initiationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needSpecificParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->needSpecificParameters:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/apperhand/common/dto/protocol/CommandsRequest;->currentInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
