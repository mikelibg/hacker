.class final Lcom/apperhand/device/android/EULAActivity$a$1;
.super Landroid/content/BroadcastReceiver;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/android/EULAActivity$a;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity$a;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->b(Lcom/apperhand/device/android/EULAActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    const-string v0, "bodyHTML"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "footerHTML"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    .line 139
    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v2, v2, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v2}, Lcom/apperhand/device/android/EULAActivity;->c(Lcom/apperhand/device/android/EULAActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v2, v2, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const-string v3, "com.apperhand.global"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/apperhand/device/android/EULAActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v3, v3, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const-string v4, "NewEulaChain"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v3, v3, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const-string v4, "NewStep"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apperhand/device/android/EULAActivity;->b(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v2, v2, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v2, v0, v1}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    iget-object v1, p0, Lcom/apperhand/device/android/EULAActivity$a$1;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v1, v1, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v1}, Lcom/apperhand/device/android/EULAActivity;->c(Lcom/apperhand/device/android/EULAActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Z)V

    goto :goto_0
.end method
