.class public Lcom/apperhand/common/dto/protocol/InfoResponse;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "InfoResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x5ae37872e54d2061L


# instance fields
.field private nextCommandInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apperhand/common/dto/protocol/InfoResponse;->nextCommandInterval:J

    .line 12
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apperhand/common/dto/protocol/InfoResponse;->nextCommandInterval:J

    .line 16
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/InfoResponse;->nextCommandInterval:J

    .line 17
    return-void
.end method


# virtual methods
.method public getNextCommandInterval()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/apperhand/common/dto/protocol/InfoResponse;->nextCommandInterval:J

    return-wide v0
.end method

.method public setNextCommandInterval(J)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/InfoResponse;->nextCommandInterval:J

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InfoResponse [nextCommandInterval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/apperhand/common/dto/protocol/InfoResponse;->nextCommandInterval:J

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
