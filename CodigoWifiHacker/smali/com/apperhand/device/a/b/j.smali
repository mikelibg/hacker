.class public final Lcom/apperhand/device/a/b/j;
.super Lcom/apperhand/device/a/b/b;
.source "TerminateService.java"


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/apperhand/device/a/b/j;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->f()Lcom/apperhand/device/a/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/apperhand/device/a/a/f;->a()V

    .line 32
    iget-object v0, p0, Lcom/apperhand/device/a/b/j;->f:Lcom/apperhand/device/a/b;

    invoke-virtual {v0}, Lcom/apperhand/device/a/b;->g()V

    .line 33
    new-instance v0, Lcom/apperhand/device/a/b/j$1;

    invoke-direct {v0, p0}, Lcom/apperhand/device/a/b/j$1;-><init>(Lcom/apperhand/device/a/b/j;)V

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
    .line 24
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
    .line 46
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/j;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/j;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 48
    return-void
.end method

.method protected final b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->TERMINATE:Lcom/apperhand/common/dto/Command$Commands;

    sget-object v2, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v3, "SABABA!!!"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/apperhand/device/a/b/j;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 54
    return-object v0
.end method
