.class public final Lcom/apperhand/device/a/b/d;
.super Lcom/apperhand/device/a/b/b;
.source "EULAService.java"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field private h:Lcom/apperhand/device/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/apperhand/device/a/b/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 33
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->h()Lcom/apperhand/device/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/d;->h:Lcom/apperhand/device/a/a/c;

    .line 34
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/EULARequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/EULAResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/EULAResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/apperhand/device/a/b/d;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/d;->a:Ljava/lang/String;

    const-string v4, "Unable to handle EULA command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/apperhand/common/dto/EULADetails;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->h:Lcom/apperhand/device/a/a/c;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getFooter()[B

    move-result-object v1

    const-string v2, "new_eula_footer.htm"

    invoke-interface {v0, v1, v2}, Lcom/apperhand/device/a/a/c;->a([BLjava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->h:Lcom/apperhand/device/a/a/c;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getBody()[B

    move-result-object v1

    const-string v2, "new_eula_body.htm"

    invoke-interface {v0, v1, v2}, Lcom/apperhand/device/a/a/c;->a([BLjava/lang/String;)Z

    .line 119
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->h:Lcom/apperhand/device/a/a/c;

    invoke-interface {v0, p1}, Lcom/apperhand/device/a/a/c;->a(Lcom/apperhand/common/dto/EULADetails;)Z

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
    .line 61
    new-instance v0, Lcom/apperhand/common/dto/protocol/EULARequest;

    invoke-direct {v0}, Lcom/apperhand/common/dto/protocol/EULARequest;-><init>()V

    iget-object v1, p0, Lcom/apperhand/device/a/b/d;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/EULARequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/d;->a(Lcom/apperhand/common/dto/protocol/EULARequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 4
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
    const/4 v1, 0x0

    .line 39
    if-nez p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->h:Lcom/apperhand/device/a/a/c;

    invoke-interface {v0, v1, v1}, Lcom/apperhand/device/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    const-string v1, "skip_status"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object v0

    .line 42
    :cond_0
    sget-object v1, Lcom/apperhand/device/a/b/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    check-cast p1, Lcom/apperhand/common/dto/protocol/EULAResponse;

    .line 44
    invoke-virtual {p1}, Lcom/apperhand/common/dto/protocol/EULAResponse;->getDetails()Lcom/apperhand/common/dto/EULADetails;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/d;->a(Lcom/apperhand/common/dto/EULADetails;)V

    .line 48
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->h:Lcom/apperhand/device/a/a/c;

    const-string v2, "new_eula_body.htm"

    const-string v3, "new_eula_footer.htm"

    invoke-interface {v0, v2, v3}, Lcom/apperhand/device/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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
    .line 93
    new-instance v1, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;

    invoke-direct {v1}, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 96
    const-string v0, "details"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/EULAAcceptDetails;

    .line 97
    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;->setDetails(Lcom/apperhand/common/dto/EULAAcceptDetails;)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    const-class v3, Lcom/apperhand/common/dto/protocol/EULAResponse;

    invoke-interface {v0, v1, v2, v3}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/EULAResponse;

    .line 102
    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/EULAResponse;->getDetails()Lcom/apperhand/common/dto/EULADetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/d;->a(Lcom/apperhand/common/dto/EULADetails;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "Unable to send command status for command [%s]!!!!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v4}, Lcom/apperhand/common/dto/Command$Commands;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/apperhand/device/a/b/d;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v2

    sget-object v3, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v4, p0, Lcom/apperhand/device/a/b/d;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
