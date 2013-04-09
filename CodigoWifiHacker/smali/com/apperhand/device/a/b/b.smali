.class public abstract Lcom/apperhand/device/a/b/b;
.super Ljava/lang/Object;
.source "BaseService.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/apperhand/device/a/d/c;

.field protected final c:Ljava/lang/String;

.field protected final d:Lcom/apperhand/common/dto/Command$Commands;

.field protected e:Lcom/apperhand/device/a/a;

.field protected f:Lcom/apperhand/device/a/b;


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/apperhand/device/a/b/b;->f:Lcom/apperhand/device/a/b;

    .line 36
    iput-object p2, p0, Lcom/apperhand/device/a/b/b;->e:Lcom/apperhand/device/a/a;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FRM."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/b;->a:Ljava/lang/String;

    .line 38
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/b;->b:Lcom/apperhand/device/a/d/c;

    .line 39
    iput-object p3, p0, Lcom/apperhand/device/a/b/b;->c:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/apperhand/device/a/b/b;->d:Lcom/apperhand/common/dto/Command$Commands;

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation
.end method

.method protected final a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apperhand/common/dto/Command$Commands;",
            "Lcom/apperhand/common/dto/CommandStatus$Status;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/CommandStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus;

    invoke-direct {v0}, Lcom/apperhand/common/dto/CommandStatus;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/apperhand/common/dto/CommandStatus;->setCommand(Lcom/apperhand/common/dto/Command$Commands;)V

    iget-object v2, p0, Lcom/apperhand/device/a/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/apperhand/common/dto/CommandStatus;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/apperhand/common/dto/CommandStatus;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/apperhand/common/dto/CommandStatus;->setStatus(Lcom/apperhand/common/dto/CommandStatus$Status;)V

    invoke-virtual {v0, p4}, Lcom/apperhand/common/dto/CommandStatus;->setParameters(Ljava/util/Map;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected abstract a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
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
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;

    .line 120
    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->f:Lcom/apperhand/device/a/b;

    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandStatusResponse;->getNextCommandInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/apperhand/device/a/b;->b(J)V

    .line 121
    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->f:Lcom/apperhand/device/a/b;

    invoke-static {v0}, Lcom/apperhand/device/a/d/e;->a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/device/a/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Unable to send command status for command [%s]!!!!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/apperhand/device/a/b/b;->d:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v4}, Lcom/apperhand/common/dto/Command$Commands;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/apperhand/device/a/b/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v2

    sget-object v3, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v4, p0, Lcom/apperhand/device/a/b/b;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract a(Ljava/util/Map;)V
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
.end method

.method protected b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    invoke-direct {v0}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 85
    return-object v0
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/apperhand/device/a/b/b;->b:Lcom/apperhand/device/a/d/c;

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->a:Lcom/apperhand/device/a/d/c$a;

    iget-object v2, p0, Lcom/apperhand/device/a/b/b;->a:Ljava/lang/String;

    const-string v3, "Entering execute()"

    invoke-interface {v0, v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/b;->a()Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/BaseResponse;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/b;->b:Lcom/apperhand/device/a/d/c;

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->a:Lcom/apperhand/device/a/d/c$a;

    iget-object v2, p0, Lcom/apperhand/device/a/b/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server Error in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/apperhand/device/a/b/b;->d:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v4}, Lcom/apperhand/common/dto/Command$Commands;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->d:Lcom/apperhand/common/dto/Command$Commands;

    sget-object v2, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v3, "Got server error"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/apperhand/device/a/b/b;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/b;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->f:Lcom/apperhand/device/a/b;

    invoke-static {v0}, Lcom/apperhand/device/a/d/e;->a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apperhand/device/a/b;->b(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/b;->a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    const-string v1, "skip_status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 61
    :cond_3
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->b:Lcom/apperhand/device/a/d/c;

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/b;->a:Ljava/lang/String;

    const-string v4, "Unable to send command"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :try_start_1
    new-instance v1, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    invoke-direct {v1}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;-><init>()V

    iget-object v2, p0, Lcom/apperhand/device/a/b/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    iget-object v2, p0, Lcom/apperhand/device/a/b/b;->d:Lcom/apperhand/common/dto/Command$Commands;

    sget-object v3, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    invoke-virtual {v0}, Lcom/apperhand/device/a/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/apperhand/device/a/b/b;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/apperhand/device/a/b/b;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V
    :try_end_1
    .catch Lcom/apperhand/device/a/d/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/apperhand/device/a/b/b;->b:Lcom/apperhand/device/a/d/c;

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/b;->a:Ljava/lang/String;

    const-string v4, "Unable to send exception status command"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
