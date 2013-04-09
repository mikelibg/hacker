.class public Lcom/apperhand/common/dto/OptOutDetails;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "OptOutDetails.java"


# static fields
.field private static final serialVersionUID:J = -0x72eb8d74df41271fL


# instance fields
.field private command:Lcom/apperhand/common/dto/Command$Commands;

.field private isPermanent:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getCommand()Lcom/apperhand/common/dto/Command$Commands;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/apperhand/common/dto/OptOutDetails;->command:Lcom/apperhand/common/dto/Command$Commands;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/apperhand/common/dto/OptOutDetails;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/apperhand/common/dto/OptOutDetails;->isPermanent:Z

    return v0
.end method

.method public setCommand(Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/apperhand/common/dto/OptOutDetails;->command:Lcom/apperhand/common/dto/Command$Commands;

    .line 23
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/apperhand/common/dto/OptOutDetails;->message:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPermanent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/apperhand/common/dto/OptOutDetails;->isPermanent:Z

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptOutDetails [command="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/OptOutDetails;->command:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/OptOutDetails;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPermanent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apperhand/common/dto/OptOutDetails;->isPermanent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
