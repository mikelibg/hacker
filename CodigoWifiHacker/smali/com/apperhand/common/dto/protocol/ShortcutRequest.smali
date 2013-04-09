.class public Lcom/apperhand/common/dto/protocol/ShortcutRequest;
.super Lcom/apperhand/common/dto/protocol/BaseRequest;
.source "ShortcutRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x37859b5538c776e8L


# instance fields
.field private supportLauncher:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseRequest;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getSupportLauncher()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->supportLauncher:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setSupportLauncher(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->supportLauncher:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortcutRequest [supportLauncher="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->supportLauncher:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->applicationDetails:Lcom/apperhand/common/dto/ApplicationDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
