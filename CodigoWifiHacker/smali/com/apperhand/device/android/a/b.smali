.class public final Lcom/apperhand/device/android/a/b;
.super Lcom/apperhand/device/android/a/g;
.source "AndroidBookmarksDMA.java"

# interfaces
.implements Lcom/apperhand/device/a/a/b;


# instance fields
.field private a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/apperhand/device/android/a/g;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/apperhand/device/android/a/b;->a:Landroid/content/ContentResolver;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/Bookmark;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bookmark = 1 AND url like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    iget-object v0, p0, Lcom/apperhand/device/android/a/b;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v5

    const/4 v5, 0x1

    const-string v7, "title"

    aput-object v7, v2, v5

    const/4 v5, 0x2

    const-string v7, "url"

    aput-object v7, v2, v5

    const/4 v5, 0x3

    const-string v7, "visits"

    aput-object v7, v2, v5

    const/4 v5, 0x4

    const-string v7, "date"

    aput-object v7, v2, v5

    const/4 v5, 0x5

    const-string v7, "created"

    aput-object v7, v2, v5

    const/4 v5, 0x6

    const-string v7, "favicon"

    aput-object v7, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lcom/apperhand/device/a/d/f;

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->c:Lcom/apperhand/device/a/d/f$a;

    const-string v2, "Unable to load bookmarks"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_1
    new-instance v0, Lcom/apperhand/common/dto/Bookmark;

    invoke-direct {v0}, Lcom/apperhand/common/dto/Bookmark;-><init>()V

    .line 63
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/apperhand/common/dto/BaseBrowserItem;->setId(J)V

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apperhand/common/dto/BaseBrowserItem;->setTitle(Ljava/lang/String;)V

    const-string v2, "url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apperhand/common/dto/BaseBrowserItem;->setUrl(Ljava/lang/String;)V

    const-string v2, "favicon"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apperhand/common/dto/BaseBrowserItem;->setFavicon([B)V

    sget-object v2, Lcom/apperhand/common/dto/Status;->EXISTS:Lcom/apperhand/common/dto/Status;

    invoke-virtual {v0, v2}, Lcom/apperhand/common/dto/BaseBrowserItem;->setStatus(Lcom/apperhand/common/dto/Status;)V

    .line 64
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    return-object v6

    .line 68
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/apperhand/common/dto/Bookmark;)J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/apperhand/device/android/a/b;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v2, "1"

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "title"

    invoke-virtual {p1}, Lcom/apperhand/common/dto/BaseBrowserItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bookmark"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {p1}, Lcom/apperhand/common/dto/BaseBrowserItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "visits"

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "favicon"

    invoke-virtual {p1}, Lcom/apperhand/common/dto/BaseBrowserItem;->getFavicon()[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/util/List;)Lcom/apperhand/common/dto/CommandInformation;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apperhand/common/dto/CommandInformation;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Lcom/apperhand/common/dto/CommandInformation;

    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

    invoke-direct {v1, v0}, Lcom/apperhand/common/dto/CommandInformation;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 120
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/CommandInformation;->setValid(Z)V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {v1, v2}, Lcom/apperhand/common/dto/CommandInformation;->setAssets(Ljava/util/List;)V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Bookmark;

    .line 127
    new-instance v5, Lcom/apperhand/common/dto/AssetInformation;

    invoke-direct {v5}, Lcom/apperhand/common/dto/AssetInformation;-><init>()V

    .line 128
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Lcom/apperhand/common/dto/AssetInformation;->setUrl(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/apperhand/common/dto/AssetInformation;->setPosition(I)V

    .line 131
    sget-object v6, Lcom/apperhand/common/dto/AssetInformation$State;->EXIST:Lcom/apperhand/common/dto/AssetInformation$State;

    invoke-virtual {v5, v6}, Lcom/apperhand/common/dto/AssetInformation;->setState(Lcom/apperhand/common/dto/AssetInformation$State;)V

    .line 133
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 134
    const-string v7, "Title"

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Bookmark;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v5, v6}, Lcom/apperhand/common/dto/AssetInformation;->setParameters(Ljava/util/Map;)V

    .line 137
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in getting bookmarks, msg = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/CommandInformation;->setMessage(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/CommandInformation;->setValid(Z)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/CommandInformation;->setAssets(Ljava/util/List;)V

    .line 146
    :cond_1
    return-object v1
.end method

.method public final a(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/Bookmark;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 42
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_1
    return-object v1
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/apperhand/device/a/d/f;

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->c:Lcom/apperhand/device/a/d/f$a;

    const-string v2, "Update bookmarks is not supported for now!!!!"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/apperhand/common/dto/Bookmark;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/apperhand/device/android/a/b;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Bookmark;->getId()J

    move-result-wide v2

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    return-void
.end method
