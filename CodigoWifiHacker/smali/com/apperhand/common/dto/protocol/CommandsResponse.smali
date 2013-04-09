.class public Lcom/apperhand/common/dto/protocol/CommandsResponse;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "CommandsResponse.java"


# static fields
.field private static final transient DEFAULT_COMMANDS_INTERVAL_SECONDS:J = 0x3cL

.field private static final serialVersionUID:J = 0x3565db0de0917dd1L


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/Command;",
            ">;"
        }
    .end annotation
.end field

.field private commandsInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/apperhand/common/dto/protocol/CommandsResponse;-><init>(J)V

    .line 20
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commandsInterval:J

    .line 25
    return-void
.end method


# virtual methods
.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getCommandsInterval()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commandsInterval:J

    return-wide v0
.end method

.method public setCommands(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commands:Ljava/util/List;

    .line 33
    return-void
.end method

.method public setCommandsInterval(J)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commandsInterval:J

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandsResponse [commands="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commands:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandsInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/apperhand/common/dto/protocol/CommandsResponse;->commandsInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
