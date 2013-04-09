.class public final Lcom/apperhand/device/android/a/c;
.super Ljava/lang/Object;
.source "AndroidEULADMA.java"

# interfaces
.implements Lcom/apperhand/device/a/a/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/apperhand/device/android/a/c;->a:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.apperhand.action.show.eula"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/apperhand/device/android/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 57
    const-string v1, "bodyHTML"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "footerHTML"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/apperhand/device/android/a/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public final a(Lcom/apperhand/common/dto/EULADetails;)Z
    .locals 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/apperhand/device/android/a/c;->a:Landroid/content/Context;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v1, "NewEulaTemplate"

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v1, "NewEulaChain"

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getChain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v1, "NewStep"

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getStep()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final a([BLjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return v0

    .line 40
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/apperhand/device/android/a/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 42
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method
