.class public final Lcom/apperhand/device/a/b/k;
.super Lcom/apperhand/device/a/b/b;
.source "UnexpectedExceptionService.java"


# instance fields
.field private g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 28
    iput-object p5, p0, Lcom/apperhand/device/a/b/k;->g:Ljava/lang/Throwable;

    .line 29
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
    .line 42
    const/4 v0, 0x0

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
    .line 35
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
    .line 47
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/k;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/k;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 49
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
    .line 53
    invoke-super {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/apperhand/device/a/b/k;->g:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->UNEXPECTED_EXCEPTION:Lcom/apperhand/common/dto/Command$Commands;

    sget-object v3, Lcom/apperhand/common/dto/CommandStatus$Status;->EXCEPTION:Lcom/apperhand/common/dto/CommandStatus$Status;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/apperhand/device/a/b/k;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 55
    return-object v0
.end method
