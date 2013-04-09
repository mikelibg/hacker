.class public final Lcom/apperhand/device/a/b/c;
.super Lcom/apperhand/device/a/b/b;
.source "BookmarksService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/a/b/c$1;
    }
.end annotation


# instance fields
.field private g:Lcom/apperhand/device/a/a/b;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apperhand/device/a/b/c;->h:Z

    .line 33
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->d()Lcom/apperhand/device/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/c;->g:Lcom/apperhand/device/a/a/b;

    .line 34
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/BookmarksRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/c;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

    const-class v2, Lcom/apperhand/common/dto/protocol/BookmarksResponse;

    invoke-interface {v0, p1, v1, v2}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/BookmarksResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/apperhand/device/a/b/c;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    iget-object v3, p0, Lcom/apperhand/device/a/b/c;->a:Ljava/lang/String;

    const-string v4, "Unable to handle Bookmarks command!!!!"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
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
    .line 86
    new-instance v0, Lcom/apperhand/common/dto/protocol/BookmarksRequest;

    invoke-direct {v0}, Lcom/apperhand/common/dto/protocol/BookmarksRequest;-><init>()V

    iget-object v1, p0, Lcom/apperhand/device/a/b/c;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/BookmarksRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/c;->a(Lcom/apperhand/common/dto/protocol/BookmarksRequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 11
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
    const/4 v10, 0x1

    .line 38
    check-cast p1, Lcom/apperhand/common/dto/protocol/BookmarksResponse;

    .line 40
    invoke-virtual {p1}, Lcom/apperhand/common/dto/protocol/BookmarksResponse;->getBookmarks()Ljava/util/List;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 43
    if-eqz v1, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Bookmark;

    .line 45
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v4

    sget-object v5, Lcom/apperhand/common/dto/Status;->ADD:Lcom/apperhand/common/dto/Status;

    if-ne v4, v5, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/apperhand/device/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/apperhand/device/a/b/c;->g:Lcom/apperhand/device/a/a/b;

    invoke-interface {v0, v2}, Lcom/apperhand/device/a/a/b;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 54
    if-eqz v1, :cond_3

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Bookmark;

    .line 56
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v3}, Lcom/apperhand/device/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    sget-object v4, Lcom/apperhand/device/a/b/c$1;->a:[I

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apperhand/common/dto/Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 73
    iget-object v3, p0, Lcom/apperhand/device/a/b/c;->b:Lcom/apperhand/device/a/d/c;

    sget-object v4, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    iget-object v5, p0, Lcom/apperhand/device/a/b/c;->a:Ljava/lang/String;

    const-string v6, "Unknown action %s for bookmark %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getStatus()Lcom/apperhand/common/dto/Status;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v5, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :pswitch_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 62
    iget-object v3, p0, Lcom/apperhand/device/a/b/c;->g:Lcom/apperhand/device/a/a/b;

    invoke-interface {v3, v0}, Lcom/apperhand/device/a/a/b;->a(Lcom/apperhand/common/dto/Bookmark;)J

    goto :goto_1

    .line 64
    :cond_2
    iput-boolean v10, p0, Lcom/apperhand/device/a/b/c;->h:Z

    goto :goto_1

    .line 67
    :pswitch_1
    iget-object v3, p0, Lcom/apperhand/device/a/b/c;->g:Lcom/apperhand/device/a/a/b;

    invoke-interface {v3, v0}, Lcom/apperhand/device/a/a/b;->b(Lcom/apperhand/common/dto/Bookmark;)V

    goto :goto_1

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/apperhand/device/a/b/c;->g:Lcom/apperhand/device/a/a/b;

    invoke-interface {v0}, Lcom/apperhand/device/a/a/b;->a()V

    goto :goto_1

    .line 79
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 119
    invoke-virtual {p0}, Lcom/apperhand/device/a/b/c;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b/c;->a(Lcom/apperhand/common/dto/protocol/CommandStatusRequest;)V

    .line 121
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
    .line 125
    invoke-super {p0}, Lcom/apperhand/device/a/b/b;->b()Lcom/apperhand/common/dto/protocol/CommandStatusRequest;

    move-result-object v2

    .line 126
    iget-boolean v0, p0, Lcom/apperhand/device/a/b/c;->h:Z

    if-nez v0, :cond_0

    const-string v0, "Sababa!!!"

    const/4 v1, 0x1

    :goto_0
    sget-object v3, Lcom/apperhand/common/dto/Command$Commands;->BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/apperhand/device/a/b/c;->a(Lcom/apperhand/common/dto/Command$Commands;Lcom/apperhand/common/dto/CommandStatus$Status;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/protocol/CommandStatusRequest;->setStatuses(Ljava/util/List;)V

    .line 127
    return-object v2

    .line 126
    :cond_0
    const-string v0, "Bookmark is already exist"

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    goto :goto_1
.end method
