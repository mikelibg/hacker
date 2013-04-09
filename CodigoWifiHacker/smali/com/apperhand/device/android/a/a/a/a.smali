.class public final Lcom/apperhand/device/android/a/a/a/a;
.super Lcom/apperhand/device/android/a/a/a;
.source "HTCHomepageDMA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/apperhand/device/android/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/apperhand/common/dto/Homepage;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/apperhand/device/android/a/a/a/a;->i:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    sget-object v1, Lcom/apperhand/device/android/a/a/a/a;->j:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object v1, v2

    .line 27
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v1, v8, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    sget-object v5, Lcom/apperhand/device/android/a/a/a/a;->k:[B

    invoke-static {v5}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 32
    sget-object v6, Lcom/apperhand/device/android/a/a/a/a;->l:[B

    invoke-static {v6}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/apperhand/common/dto/Homepage;->getPageURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 38
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/apperhand/device/android/a/a/a/a;->j:[B

    invoke-static {v4}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v1, Lcom/apperhand/device/android/a/a/a/a;->m:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/apperhand/device/android/a/a/a/a;->n:[B

    invoke-static {v4}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/apperhand/device/android/a/a/a/a;->o:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 40
    sget-object v0, Lcom/apperhand/device/android/a/a/a/a;->f:[B

    invoke-static {v0}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apperhand/device/android/a/a/a/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/apperhand/device/android/a/a/a/a;->p:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/android/a/a/a/a;->h:[B

    invoke-static {v2}, Lcom/apperhand/device/android/a/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apperhand/device/android/a/a/a/a;->b(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/apperhand/device/android/a/a/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
