.class public Lcom/apperhand/common/dto/Command;
.super Lcom/apperhand/common/dto/BaseDTO;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/common/dto/Command$ParameterNames;,
        Lcom/apperhand/common/dto/Command$Commands;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43fb6b41b012d688L


# instance fields
.field private command:Lcom/apperhand/common/dto/Command$Commands;

.field private id:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apperhand/common/dto/Command$Commands;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/apperhand/common/dto/BaseDTO;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/apperhand/common/dto/Command;->command:Lcom/apperhand/common/dto/Command$Commands;

    .line 34
    iput-object p2, p0, Lcom/apperhand/common/dto/Command;->id:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/apperhand/common/dto/Command;->parameters:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/common/dto/Command;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    iget-object v0, p1, Lcom/apperhand/common/dto/Command;->command:Lcom/apperhand/common/dto/Command$Commands;

    iget-object v1, p1, Lcom/apperhand/common/dto/Command;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/apperhand/common/dto/Command;->parameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/apperhand/common/dto/Command;-><init>(Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public static getCommandByName(Ljava/lang/String;)Lcom/apperhand/common/dto/Command$Commands;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 154
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 164
    :cond_1
    :goto_0
    return-object v0

    .line 158
    :cond_2
    invoke-static {}, Lcom/apperhand/common/dto/Command$Commands;->values()[Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 159
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Command$Commands;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 164
    goto :goto_0
.end method


# virtual methods
.method public getCommand()Lcom/apperhand/common/dto/Command$Commands;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/apperhand/common/dto/Command;->command:Lcom/apperhand/common/dto/Command$Commands;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/apperhand/common/dto/Command;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apperhand/common/dto/Command;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public setCommand(Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/apperhand/common/dto/Command;->command:Lcom/apperhand/common/dto/Command$Commands;

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apperhand/common/dto/Command;->id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/apperhand/common/dto/Command;->parameters:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command [command="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/Command;->command:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/Command;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/Command;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
