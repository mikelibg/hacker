.class public final Lcom/apperhand/device/a/b/e;
.super Lcom/apperhand/device/a/b/b;
.source "HomepageService.java"


# instance fields
.field private g:Lcom/apperhand/device/a/a/d;


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 30
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->g()Lcom/apperhand/device/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/e;->g:Lcom/apperhand/device/a/a/d;

    .line 31
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/HomepageRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/e;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->HOMEPAGE:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/HomepageResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/HomepageResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/apperhand/device/a/b/e;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/e;->a:Ljava/lang/String;

    const-string v4, "Unable to handle Homepage command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
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
    .line 51
    new-instance v0, Lcom/apperhand/common/dto/protocol/HomepageRequest;

    invoke-direct {v0}, Lcom/apperhand/common/dto/protocol/HomepageRequest;-><init>()V

    iget-object v1, p0, Lcom/apperhand/device/a/b/e;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/HomepageRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/e;->a(Lcom/apperhand/common/dto/protocol/HomepageRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 3
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
    .line 35
    check-cast p1, Lcom/apperhand/common/dto/protocol/HomepageResponse;

    .line 36
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/apperhand/device/a/b/e;->g:Lcom/apperhand/device/a/a/d;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/protocol/HomepageResponse;->getHomepage()Lcom/apperhand/common/dto/Homepage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apperhand/device/a/a/d;->a(Lcom/apperhand/common/dto/Homepage;)Z

    move-result v1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    const-string v2, "output_flag"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5
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
    const/4 v1, 0x0

    .line 79
    .line 81
    if-eqz p1, :cond_3

    .line 82
    const-string v0, "output_flag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const-string v0, "output_flag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 85
    :goto_0
    invoke-super {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v2

    sget-object v3, Lcom/apperhand/common/dto/Command$Commands;->HOMEPAGE:Lcom/apperhand/common/dto/Command$Commands;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "Sababa"

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/apperhand/device/a/b/e;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/apperhand/device/a/b/e;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 87
    return-void

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    goto :goto_1

    :cond_2
    const-string v0, "Didn\'t attemp to change the homepage"

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
