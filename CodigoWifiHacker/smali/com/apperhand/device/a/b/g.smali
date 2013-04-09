.class public final Lcom/apperhand/device/a/b/g;
.super Lcom/apperhand/device/a/b/b;
.source "OptoutService.java"


# instance fields
.field g:Ljava/util/Map;
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
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 28
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/g;->g:Ljava/util/Map;

    .line 29
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/OptOutRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/g;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->OPTOUT:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/OptOutResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/OptOutResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/apperhand/device/a/b/g;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/g;->a:Ljava/lang/String;

    const-string v4, "Unable to handle Optout command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Lcom/apperhand/common/dto/protocol/OptOutRequest;

    invoke-direct {v1}, Lcom/apperhand/common/dto/protocol/OptOutRequest;-><init>()V

    iget-object v0, p0, Lcom/apperhand/device/a/b/g;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/OptOutRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    new-instance v2, Lcom/apperhand/common/dto/OptOutDetails;

    invoke-direct {v2}, Lcom/apperhand/common/dto/OptOutDetails;-><init>()V

    iget-object v0, p0, Lcom/apperhand/device/a/b/g;->g:Ljava/util/Map;

    const-string v3, "command"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/OptOutDetails;->setCommand(Lcom/apperhand/common/dto/Command$Commands;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b/g;->g:Ljava/util/Map;

    const-string v3, "message"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/OptOutDetails;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b/g;->g:Ljava/util/Map;

    const-string v3, "permanent"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/OptOutDetails;->setPermanent(Z)V

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/protocol/OptOutRequest;->setDetails(Lcom/apperhand/common/dto/OptOutDetails;)V

    .line 42
    invoke-direct {p0, v1}, Lcom/apperhand/device/a/b/g;->a(Lcom/apperhand/common/dto/protocol/OptOutRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apperhand/common/dto/protocol/BaseResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method
