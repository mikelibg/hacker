.class final Lcom/apperhand/device/android/EULAActivity$a;
.super Landroid/os/AsyncTask;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/android/EULAActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    iget-object v1, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-virtual {v1}, Lcom/apperhand/device/android/EULAActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

    iget-object v3, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-virtual {v3}, Lcom/apperhand/device/android/EULAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;I)I

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->b:Z

    iget-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;J)J

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    new-instance v1, Lcom/apperhand/device/android/EULAActivity$a$1;

    invoke-direct {v1, p0}, Lcom/apperhand/device/android/EULAActivity$a$1;-><init>(Lcom/apperhand/device/android/EULAActivity$a;)V

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 117
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0, v4}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    iget-object v1, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v1}, Lcom/apperhand/device/android/EULAActivity;->d(Lcom/apperhand/device/android/EULAActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.apperhand.action.show.eula"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/apperhand/device/android/EULAActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1, v4}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->b(Lcom/apperhand/device/android/EULAActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apperhand/device/android/EULAActivity$a$2;

    invoke-direct {v1, p0}, Lcom/apperhand/device/android/EULAActivity$a$2;-><init>(Lcom/apperhand/device/android/EULAActivity$a;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0, v4}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const-string v1, "new_eula_body.htm"

    const-string v2, "new_eula_footer.htm"

    invoke-static {v0, v1, v2}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
