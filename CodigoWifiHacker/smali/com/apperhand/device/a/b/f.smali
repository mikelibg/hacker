.class public final Lcom/apperhand/device/a/b/f;
.super Lcom/apperhand/device/a/b/b;
.source "InfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/a/b/f$1;
    }
.end annotation


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

.field private h:Lcom/apperhand/device/a/a/e;

.field private i:Lcom/apperhand/device/a/a/b;


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 31
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->e()Lcom/apperhand/device/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/f;->h:Lcom/apperhand/device/a/a/e;

    .line 32
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->d()Lcom/apperhand/device/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/f;->i:Lcom/apperhand/device/a/a/b;

    .line 34
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/f;->g:Ljava/util/Map;

    .line 35
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/InfoRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/f;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->INFO:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/InfoResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/InfoResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/apperhand/device/a/b/f;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/f;->a:Ljava/lang/String;

    const-string v4, "Unable to handle Info command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Lcom/apperhand/common/dto/protocol/InfoRequest;

    invoke-direct {v3}, Lcom/apperhand/common/dto/protocol/InfoRequest;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/apperhand/device/a/b/f;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/apperhand/common/dto/protocol/InfoRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    invoke-virtual {v3, v4}, Lcom/apperhand/common/dto/protocol/InfoRequest;->setInformation(Ljava/util/List;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/apperhand/device/a/b/f;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    sget-object v6, Lcom/apperhand/device/a/b/f$1;->a:[I

    invoke-static {v0}, Lcom/apperhand/common/dto/Command;->getCommandByName(Ljava/lang/String;)Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Command$Commands;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    :goto_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/f;->h:Lcom/apperhand/device/a/a/e;

    invoke-interface {v0}, Lcom/apperhand/device/a/a/e;->a()V

    iget-object v0, p0, Lcom/apperhand/device/a/b/f;->h:Lcom/apperhand/device/a/a/e;

    invoke-interface {v0, v1}, Lcom/apperhand/device/a/a/e;->a(Ljava/util/List;)Lcom/apperhand/common/dto/CommandInformation;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/apperhand/device/a/b/f;->i:Lcom/apperhand/device/a/a/b;

    invoke-interface {v0, v1}, Lcom/apperhand/device/a/a/b;->a(Ljava/util/List;)Lcom/apperhand/common/dto/CommandInformation;

    move-result-object v0

    goto :goto_1

    .line 47
    :cond_1
    invoke-direct {p0, v3}, Lcom/apperhand/device/a/b/f;->a(Lcom/apperhand/common/dto/protocol/InfoRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    .line 49
    return-object v0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 39
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
    .line 106
    return-void
.end method
