.class public abstract Lcom/apperhand/device/a/b;
.super Ljava/lang/Object;
.source "SDKManager.java"


# static fields
.field protected static final c:Ljava/lang/String;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Lcom/apperhand/device/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/apperhand/device/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apperhand/device/a/a;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    .line 42
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/apperhand/device/a/b;->a:J

    .line 43
    iput-boolean p2, p0, Lcom/apperhand/device/a/b;->d:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apperhand/device/a/b;->e:Z

    .line 45
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 6
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    sget-object v2, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    const-string v3, "Unexpected error!!! "

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    instance-of v0, p1, Lcom/apperhand/device/a/d/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/apperhand/device/a/d/f;

    .line 111
    invoke-virtual {v0}, Lcom/apperhand/device/a/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/apperhand/device/a/b/k;

    iget-object v2, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/apperhand/common/dto/Command$Commands;->UNEXPECTED_EXCEPTION:Lcom/apperhand/common/dto/Command$Commands;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/apperhand/device/a/b/k;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Throwable;)V

    .line 119
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/apperhand/device/a/b/k;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    sget-object v3, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    const-string v4, "Error sending unexpected exception!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/apperhand/device/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    new-instance v1, Lcom/apperhand/common/dto/protocol/CommandsRequest;

    invoke-direct {v1}, Lcom/apperhand/common/dto/protocol/CommandsRequest;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/apperhand/device/a/d/d;->b()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v3}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v3

    const-string v4, "ACTIVATED"

    const-string v5, "false"

    invoke-interface {v3, v4, v5}, Lcom/apperhand/device/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setNeedSpecificParameters(Z)V

    iget-boolean v0, p0, Lcom/apperhand/device/a/b;->d:Z

    if-eqz v0, :cond_4

    const-string v0, "first time"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setInitiationType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    invoke-virtual {p0}, Lcom/apperhand/device/a/b;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setCurrentInterval(J)V

    iget-object v0, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS:Lcom/apperhand/common/dto/Command$Commands;

    const-class v3, Lcom/apperhand/common/dto/protocol/CommandsResponse;

    invoke-interface {v0, v1, v2, v3}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/CommandsResponse;

    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandsResponse;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_5

    const-wide/32 v0, 0x15180

    invoke-virtual {p0, v0, v1}, Lcom/apperhand/device/a/b;->b(J)V

    iget-object v0, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    sget-object v2, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    const-string v3, "Server Error in getCommands. Next command = [86400] seconds"

    invoke-interface {v0, v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/apperhand/device/a/b;->d()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Command;

    iget-object v2, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-static {p0, v0, v2}, Lcom/apperhand/device/a/b/h;->a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apperhand/device/a/b/b;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b;->a(Ljava/lang/Throwable;)V

    .line 57
    :cond_3
    return-void

    .line 56
    :cond_4
    :try_start_1
    const-string v0, "schedule"

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandsResponse;->getCommandsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/apperhand/device/a/b;->b(J)V

    invoke-static {v0}, Lcom/apperhand/device/a/d/e;->a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apperhand/device/a/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandsResponse;->getCommands()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract a(J)V
.end method

.method public final a(Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-static {p0, p1, v0}, Lcom/apperhand/device/a/b/h;->a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/apperhand/device/a/b/b;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/apperhand/common/dto/Command;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apperhand/common/dto/Command;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b;->f:Lcom/apperhand/device/a/a;

    invoke-static {p0, p1, v0}, Lcom/apperhand/device/a/b/h;->a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p2}, Lcom/apperhand/device/a/b/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final b(J)V
    .locals 2
    .parameter

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 172
    iput-wide p1, p0, Lcom/apperhand/device/a/b;->a:J

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/apperhand/device/a/b;->a(J)V

    .line 175
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b;->a(Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected abstract c()J
.end method

.method protected abstract d()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/apperhand/device/a/b;->a:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apperhand/device/a/b;->e:Z

    .line 194
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/apperhand/device/a/b;->e:Z

    return v0
.end method
