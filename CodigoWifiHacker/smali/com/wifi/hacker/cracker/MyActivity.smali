.class public Lcom/wifi/hacker/cracker/MyActivity;
.super Landroid/app/Activity;
.source "MyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/MyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 19
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 24
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_EXIT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->showExitInterstitial(Landroid/app/Activity;)V

    .line 42
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 27
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_INTERSTITIAL_LETANG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->shouldShowLetang(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-static {p0}, Lcom/wifi/hacker/cracker/BootReceiver;->showLetangInterstitial(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/MyActivity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/MyActivity;->finish()V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
