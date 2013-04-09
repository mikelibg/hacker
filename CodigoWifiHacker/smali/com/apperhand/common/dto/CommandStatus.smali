.class public Lcom/apperhand/common/dto/CommandStatus;
.super Lcom/apperhand/common/dto/Command;
.source "CommandStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/common/dto/CommandStatus$Status;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x379660faf0ee39b9L


# instance fields
.field private message:Ljava/lang/String;

.field private status:Lcom/apperhand/common/dto/CommandStatus$Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/apperhand/common/dto/Command;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/apperhand/common/dto/CommandStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/apperhand/common/dto/CommandStatus$Status;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/apperhand/common/dto/CommandStatus;->status:Lcom/apperhand/common/dto/CommandStatus$Status;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/apperhand/common/dto/CommandStatus;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setStatus(Lcom/apperhand/common/dto/CommandStatus$Status;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apperhand/common/dto/CommandStatus;->status:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandStatus [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/CommandStatus;->status:Lcom/apperhand/common/dto/CommandStatus$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/apperhand/common/dto/CommandStatus;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apperhand/common/dto/CommandStatus;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/apperhand/common/dto/CommandStatus;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/apperhand/common/dto/Command;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apperhand/common/dto/CommandStatus;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "null"

    goto :goto_0
.end method
