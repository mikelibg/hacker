.class public final Lcom/apperhand/device/a/b/i;
.super Lcom/apperhand/device/a/b/b;
.source "ShortcutsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/a/b/i$1;
    }
.end annotation


# instance fields
.field private g:Lcom/apperhand/device/a/a/e;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/apperhand/device/a/b/i;->h:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apperhand/device/a/b/i;->i:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apperhand/device/a/b/i;->j:Z

    .line 36
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->e()Lcom/apperhand/device/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    .line 37
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/ShortcutRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/i;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/ShortcutResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/ShortcutResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/i;->a:Ljava/lang/String;

    const-string v4, "Unable to handle Shortcut command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v0}, Lcom/apperhand/device/a/a/e;->a()V

    .line 80
    new-instance v0, Lcom/apperhand/common/dto/protocol/ShortcutRequest;

    invoke-direct {v0}, Lcom/apperhand/common/dto/protocol/ShortcutRequest;-><init>()V

    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v1}, Lcom/apperhand/device/a/a/e;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/ShortcutRequest;->setSupportLauncher(Ljava/lang/Boolean;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/i;->a(Lcom/apperhand/common/dto/protocol/ShortcutRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 10
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
    const/4 v9, 0x1

    .line 41
    check-cast p1, Lcom/apperhand/common/dto/protocol/ShortcutResponse;

    .line 44
    invoke-virtual {p1}, Lcom/apperhand/common/dto/protocol/ShortcutResponse;->getShortcutList()Ljava/util/List;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Shortcut;

    .line 48
    sget-object v1, Lcom/apperhand/device/a/b/i$1;->a:[I

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apperhand/common/dto/Status;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 65
    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->b:Lcom/apperhand/device/a/d/c;

    sget-object v3, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    iget-object v4, p0, Lcom/apperhand/device/a/b/i;->a:Ljava/lang/String;

    const-string v5, "Unknown action %s for shortcut %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v1, v0}, Lcom/apperhand/device/a/a/e;->a(Lcom/apperhand/common/dto/Shortcut;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v1, v0}, Lcom/apperhand/device/a/a/e;->b(Lcom/apperhand/common/dto/Shortcut;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/i;->i:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/apperhand/device/a/b/i;->j:Z
    :try_end_1
    .catch Lcom/apperhand/device/a/d/f; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Lcom/apperhand/device/a/d/f;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apperhand/device/a/b/i;->h:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v1, v0}, Lcom/apperhand/device/a/a/e;->b(Lcom/apperhand/common/dto/Shortcut;)V

    goto :goto_1

    .line 71
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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
    .line 127
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/i;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/i;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 129
    return-void
.end method

.method protected final b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v4

    .line 134
    iget-boolean v0, p0, Lcom/apperhand/device/a/b/i;->j:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v5}, Lcom/apperhand/device/a/a/e;->c()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS_WITH_WARNING:Lcom/apperhand/common/dto/CommandStatus$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Trying to used the following : ["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v5}, Lcom/apperhand/device/a/a/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apperhand/device/a/b/i;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 135
    return-object v4

    :cond_0
    move v0, v2

    .line 134
    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sababa!!!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", used [%s] as launcher"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    invoke-interface {v7}, Lcom/apperhand/device/a/a/e;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apperhand/device/a/b/i;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/apperhand/device/a/b/i;->g:Lcom/apperhand/device/a/a/e;

    iget-object v3, p0, Lcom/apperhand/device/a/b/i;->i:Ljava/lang/String;

    const-wide/16 v6, 0x5

    invoke-interface {v2, v3, v6, v7}, Lcom/apperhand/device/a/a/e;->a(Ljava/lang/String;J)I

    move-result v2

    const-string v3, "PARAMETER"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/apperhand/device/a/b/i;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_2
.end method
