.class public Lcom/apperhand/common/dto/CommandInformation;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "CommandInformation.java"


# static fields
.field private static final serialVersionUID:J = -0x622c8707fa318c19L


# instance fields
.field private assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/AssetInformation;",
            ">;"
        }
    .end annotation
.end field

.field private command:Lcom/apperhand/common/dto/Command$Commands;

.field private message:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/apperhand/common/dto/CommandInformation;->command:Lcom/apperhand/common/dto/Command$Commands;

    .line 27
    return-void
.end method


# virtual methods
.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/AssetInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/apperhand/common/dto/CommandInformation;->assets:Ljava/util/List;

    return-object v0
.end method

.method public getCommand()Lcom/apperhand/common/dto/Command$Commands;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apperhand/common/dto/CommandInformation;->command:Lcom/apperhand/common/dto/Command$Commands;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/apperhand/common/dto/CommandInformation;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/apperhand/common/dto/CommandInformation;->valid:Z

    return v0
.end method

.method public setAssets(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/AssetInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/apperhand/common/dto/CommandInformation;->assets:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setCommand(Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/apperhand/common/dto/CommandInformation;->command:Lcom/apperhand/common/dto/Command$Commands;

    .line 22
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/apperhand/common/dto/CommandInformation;->message:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/apperhand/common/dto/CommandInformation;->valid:Z

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandInformation [command="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/CommandInformation;->command:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/apperhand/common/dto/CommandInformation;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/CommandInformation;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/CommandInformation;->assets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
