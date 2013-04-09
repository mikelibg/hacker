.class public final Lcom/apperhand/device/android/a/e;
.super Ljava/lang/Object;
.source "AndroidShortcutsDMA.java"

# interfaces
.implements Lcom/apperhand/device/a/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/android/a/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/apperhand/device/android/a/e$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/device/android/a/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sput-object v0, Lcom/apperhand/device/android/a/e;->a:Ljava/util/Map;

    const-string v1, "com.motorola.blur.home"

    const-string v2, "com.android.launcher"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/apperhand/device/android/a/e;->b:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 335
    .line 337
    if-nez p1, :cond_0

    move-object v0, v6

    .line 358
    :goto_0
    return-object v0

    .line 341
    :cond_0
    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/apperhand/device/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 344
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 348
    :goto_1
    if-nez v6, :cond_1

    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p1, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/apperhand/device/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".settings/favorites?notify=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/common/dto/Shortcut;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    :try_start_0
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 386
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 387
    const-string v0, "intent"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 388
    const-string v0, "screen"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 390
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    new-instance v6, Lcom/apperhand/common/dto/Shortcut;

    invoke-direct {v6}, Lcom/apperhand/common/dto/Shortcut;-><init>()V

    .line 393
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/apperhand/common/dto/Shortcut;->setId(J)V

    .line 394
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/apperhand/common/dto/Shortcut;->setName(Ljava/lang/String;)V

    .line 395
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v6, v0}, Lcom/apperhand/common/dto/Shortcut;->setLink(Ljava/lang/String;)V

    .line 396
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/apperhand/common/dto/Shortcut;->setScreen(I)V

    .line 398
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 404
    return-object v1
.end method

.method private static a(Landroid/database/Cursor;Lcom/apperhand/common/dto/Shortcut;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 320
    if-nez p0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    const-string v1, "intent"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 325
    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apperhand/device/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 329
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 378
    :cond_1
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/a/e$a;

    .line 366
    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v0, -0x3e7

    .line 230
    long-to-float v1, p2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 232
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    invoke-direct {p0, v1}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_3

    .line 245
    if-eqz v1, :cond_2

    :try_start_1
    const-string v2, "screen"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 248
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_3
    :goto_1
    return v0

    .line 248
    :catch_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Lcom/apperhand/common/dto/CommandInformation;
    .locals 13
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
    const/4 v0, 0x0

    .line 75
    new-instance v4, Lcom/apperhand/common/dto/CommandInformation;

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    invoke-direct {v4, v1}, Lcom/apperhand/common/dto/CommandInformation;-><init>(Lcom/apperhand/common/dto/Command$Commands;)V

    .line 78
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    const-string v1, "Launchers = ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]#NL#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v4, v6}, Lcom/apperhand/common/dto/CommandInformation;->setAssets(Ljava/util/List;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/apperhand/common/dto/CommandInformation;->setValid(Z)V

    .line 85
    invoke-direct {p0}, Lcom/apperhand/device/android/a/e;->d()Ljava/util/List;

    move-result-object v7

    .line 88
    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 89
    iget-object v1, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apperhand/device/android/a/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    add-int/lit8 v3, v2, 0x1

    .line 91
    if-eqz v0, :cond_5

    .line 95
    :try_start_1
    invoke-static {v0}, Lcom/apperhand/device/android/a/e;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 102
    if-nez v2, :cond_0

    .line 103
    :try_start_2
    const-string v0, "Success reading cursor of "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", but the cursor is empty#NL#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/apperhand/common/dto/CommandInformation;->setValid(Z)V

    move v2, v3

    .line 105
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v2, "Error reading cursor of "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#NL#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/apperhand/common/dto/CommandInformation;->setValid(Z)V

    move v2, v3

    .line 99
    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_1
    const-string v9, "Success reading cursor of "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " with columns "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, "#NL#"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Shortcut;

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->getLink()Ljava/lang/String;

    move-result-object v11

    .line 119
    if-eqz v11, :cond_2

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_2

    .line 120
    new-instance v2, Lcom/apperhand/common/dto/AssetInformation;

    invoke-direct {v2}, Lcom/apperhand/common/dto/AssetInformation;-><init>()V

    .line 121
    invoke-virtual {v2, v11}, Lcom/apperhand/common/dto/AssetInformation;->setUrl(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/apperhand/common/dto/Shortcut;->getScreen()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/apperhand/common/dto/AssetInformation;->setPosition(I)V

    .line 123
    sget-object v11, Lcom/apperhand/common/dto/AssetInformation$State;->EXIST:Lcom/apperhand/common/dto/AssetInformation$State;

    invoke-virtual {v2, v11}, Lcom/apperhand/common/dto/AssetInformation;->setState(Lcom/apperhand/common/dto/AssetInformation$State;)V

    .line 124
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v12, "Launcher"

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v2, v11}, Lcom/apperhand/common/dto/AssetInformation;->setParameters(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 140
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/apperhand/device/android/a/e;->b(Ljava/util/List;)V

    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/apperhand/common/dto/CommandInformation;->setMessage(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    :try_start_3
    const-string v0, "Unknown"

    goto :goto_1

    :cond_4
    move v2, v3

    .line 134
    goto/16 :goto_0

    .line 135
    :cond_5
    const-string v0, "Couldn\'t check "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/apperhand/device/android/a/e$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#NL#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/apperhand/common/dto/CommandInformation;->setValid(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 138
    goto/16 :goto_0

    .line 140
    :cond_6
    invoke-static {v7}, Lcom/apperhand/device/android/a/e;->b(Ljava/util/List;)V

    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/apperhand/common/dto/CommandInformation;->setMessage(Ljava/lang/String;)V

    .line 144
    return-object v4
.end method

.method public final a()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/apperhand/device/android/a/e;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/apperhand/device/android/a/e$a;

    invoke-direct {v5}, Lcom/apperhand/device/android/a/e$a;-><init>()V

    iget-object v6, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v0, Lcom/apperhand/device/android/a/e;->a:Ljava/util/Map;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, v5, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v0, v8}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v5, Lcom/apperhand/device/android/a/e$a;->c:Z

    iget-boolean v0, v5, Lcom/apperhand/device/android/a/e$a;->c:Z

    if-eqz v0, :cond_1

    iput-object v5, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    :cond_1
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/apperhand/device/android/a/e$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lcom/apperhand/device/android/a/e$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/a/e$a;

    iput-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    iput-boolean v1, v0, Lcom/apperhand/device/android/a/e$a;->c:Z

    :cond_5
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    .line 66
    return-void
.end method

.method public final a(Lcom/apperhand/common/dto/Shortcut;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 185
    .line 187
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v3

    .line 190
    if-eqz v3, :cond_0

    .line 192
    :try_start_0
    invoke-static {v3, p1}, Lcom/apperhand/device/android/a/e;->a(Landroid/database/Cursor;Lcom/apperhand/common/dto/Shortcut;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    :goto_1
    return v0

    .line 194
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 200
    goto :goto_1

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/apperhand/device/android/a/e;->d()Ljava/util/List;

    move-result-object v3

    .line 211
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :try_start_2
    invoke-static {v0, p1}, Lcom/apperhand/device/android/a/e;->a(Landroid/database/Cursor;Lcom/apperhand/common/dto/Shortcut;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 217
    :goto_2
    if-eqz v0, :cond_2

    .line 218
    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->b(Ljava/util/List;)V

    move v0, v1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 218
    :cond_3
    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->b(Ljava/util/List;)V

    move v0, v2

    .line 224
    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->b(Ljava/util/List;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/apperhand/common/dto/Shortcut;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 430
    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Shortcut;->getIcon()[B

    move-result-object v2

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v2, :cond_0

    new-array v0, v6, [B

    const-string v2, "android.intent.extra.shortcut.ICON"

    array-length v4, v0

    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    return-void

    .line 430
    :cond_0
    const-string v0, "android.intent.extra.shortcut.ICON"

    array-length v4, v2

    invoke-static {v2, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/apperhand/device/android/a/e;->c:Lcom/apperhand/device/android/a/e$a;

    invoke-direct {p0, v0}, Lcom/apperhand/device/android/a/e;->a(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/apperhand/device/android/a/e;->d()Ljava/util/List;

    move-result-object v3

    .line 168
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 173
    if-nez v0, :cond_2

    move v0, v1

    .line 178
    :goto_1
    invoke-static {v3}, Lcom/apperhand/device/android/a/e;->b(Ljava/util/List;)V

    move v1, v0

    .line 179
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
