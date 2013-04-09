.class public Lcom/apperhand/common/dto/protocol/CommandStatusResponse;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "CommandStatusResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x1a6df1bccc0a9f11L


# instance fields
.field private nextCommandInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->nextCommandInterval:J

    .line 11
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->nextCommandInterval:J

    .line 15
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->nextCommandInterval:J

    .line 16
    return-void
.end method


# virtual methods
.method public getNextCommandInterval()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->nextCommandInterval:J

    return-wide v0
.end method

.method public setNextCommandInterval(J)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->nextCommandInterval:J

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandStatusResponse [nextCommandInterval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->nextCommandInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
