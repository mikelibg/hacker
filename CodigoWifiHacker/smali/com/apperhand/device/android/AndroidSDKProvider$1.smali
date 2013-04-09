.class final Lcom/apperhand/device/android/AndroidSDKProvider$1;
.super Lcom/apperhand/device/a/b;
.source "AndroidSDKProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apperhand/device/android/AndroidSDKProvider;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apperhand/device/android/AndroidSDKProvider;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/AndroidSDKProvider;Lcom/apperhand/device/a/a;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    iput-object p4, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/apperhand/device/a/b;-><init>(Lcom/apperhand/device/a/a;Z)V

    return-void
.end method

.method private a(Landroid/app/PendingIntent;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 260
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-long v3, p2, v5

    add-long/2addr v1, v3

    .line 263
    const-string v3, "NEXT_RUN"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v1, "INTERVAL"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 270
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 271
    const/4 v3, 0x2

    mul-long v4, p2, v5

    add-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 272
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v1, "APPLICATION_ID"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v1, "DEVELOPER_ID"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->b(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "M_SERVER_URL"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "FIRST_RUN"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 238
    const-string v1, "USER_AGENT"

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->c(Lcom/apperhand/device/android/AndroidSDKProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "SERVICE_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 243
    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a(Landroid/app/PendingIntent;J)V

    .line 245
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    sget-object v3, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    const-string v4, "Apperhand service was started successfully"

    invoke-interface {v1, v2, v3, v4}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0}, Lcom/apperhand/device/a/b;->a()V

    .line 247
    iget-object v1, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    sget-object v3, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    const-string v4, "After executing commands"

    invoke-interface {v1, v2, v3, v4}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/apperhand/device/android/c/a;->a()Lcom/apperhand/device/android/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v1, v2}, Lcom/apperhand/device/android/c/a;->b(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->e()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->a(Landroid/app/PendingIntent;J)V

    .line 255
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    invoke-virtual {v0}, Lcom/apperhand/device/android/AndroidSDKProvider;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    sget-object v2, Lcom/apperhand/device/a/b;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Next command is on ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/apperhand/device/android/AndroidSDKProvider$1;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(J)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    const-string v1, "LAST_INTERVAL"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    const-string v1, "ABTEST_STR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    const-string v1, "ABTEST_STR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method protected final c()J
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    const-string v1, "LAST_INTERVAL"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 293
    return-wide v0
.end method

.method protected final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v0, p0, Lcom/apperhand/device/android/AndroidSDKProvider$1;->b:Lcom/apperhand/device/android/AndroidSDKProvider;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ENC_DEVICE_ID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ENC_DUMMY_ID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "AND.Utils"

    const-string v1, "Device id is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ENC_DEVICE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ENC_DUMMY_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
