.class public final Lcom/apperhand/device/a/b/a;
.super Lcom/apperhand/device/a/b/b;
.source "ActivationService.java"


# instance fields
.field private g:Lcom/apperhand/device/a/a/a;


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 27
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->c()Lcom/apperhand/device/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/a;->g:Lcom/apperhand/device/a/a/a;

    .line 28
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/ActivationRequest;)Lcom/apperhand/common/dto/protocol/ActivationResponse;
    .locals 5
    .parameter

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->ACTIVATION:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/ActivationResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/ActivationResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iget-object v1, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/a;->a:Ljava/lang/String;

    const-string v4, "Unable to handle Activation command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 4

    .prologue
    .line 75
    new-instance v1, Lcom/apperhand/common/dto/protocol/ActivationRequest;

    invoke-direct {v1}, Lcom/apperhand/common/dto/protocol/ActivationRequest;-><init>()V

    iget-object v0, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/ActivationRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apperhand/device/a/d/d;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/ActivationRequest;->setMissingParameters(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v0

    const-string v2, "ACTIVATED"

    const-string v3, "false"

    invoke-interface {v0, v2, v3}, Lcom/apperhand/device/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/ActivationRequest;->setFirstTimeActivation(Z)V

    .line 78
    invoke-direct {p0, v1}, Lcom/apperhand/device/a/b/a;->a(Lcom/apperhand/common/dto/protocol/ActivationRequest;)Lcom/apperhand/common/dto/protocol/ActivationResponse;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 5
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
    .line 54
    check-cast p1, Lcom/apperhand/common/dto/protocol/ActivationResponse;

    .line 55
    invoke-virtual {p1}, Lcom/apperhand/common/dto/protocol/ActivationResponse;->getActivation()Lcom/apperhand/common/dto/Activation;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Activation;->getParameters()Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v0

    const-string v1, "ACTIVATED"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Lcom/apperhand/device/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Lcom/apperhand/device/a/d/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
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
    .line 83
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/a;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/a;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 85
    return-void
.end method

.method protected final b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/apperhand/device/a/b/a;->g:Lcom/apperhand/device/a/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->ACTIVATION:Lcom/apperhand/common/dto/Command$Commands;

    sget-object v3, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/apperhand/device/a/b/a;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v5}, Lcom/apperhand/device/a/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was activated, SABABA!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/apperhand/device/a/b/a;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 91
    return-object v0
.end method
