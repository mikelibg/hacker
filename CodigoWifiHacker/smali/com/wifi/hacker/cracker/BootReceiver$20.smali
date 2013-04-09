.class final Lcom/wifi/hacker/cracker/BootReceiver$20;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Lcom/revmob/ads/RevMobAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->revmobShowInterstitial(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fs:Lcom/revmob/ads/fullscreen/Fullscreen;

.field final synthetic val$isLetangInterstitial:Z


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/Fullscreen;Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$fs:Lcom/revmob/ads/fullscreen/Fullscreen;

    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$isLetangInterstitial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobAdClicked()V
    .locals 4

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_CLICKED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1636
    .local v0, numRevmobClicked:I
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_CLICKED:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1640
    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$isLetangInterstitial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1641
    :cond_0
    return-void
.end method

.method public onRevMobAdDismiss()V
    .locals 4

    .prologue
    .line 1625
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_DISMISSED:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1626
    .local v0, numRevmobDismissed:I
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_DISMISSED:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1630
    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$isLetangInterstitial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1631
    :cond_0
    return-void
.end method

.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1618
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1620
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$isLetangInterstitial:Z

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->access$1000(Landroid/app/Activity;Z)V

    .line 1621
    return-void
.end method

.method public onRevMobAdReceived()V
    .locals 4

    .prologue
    .line 1610
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1611
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$fs:Lcom/revmob/ads/fullscreen/Fullscreen;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/Fullscreen;->show()V

    .line 1612
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_SHOWN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1613
    .local v0, numRevmobShown:I
    iget-object v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$20;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->KEY_NUM_REVMOB_SHOWN:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1614
    return-void
.end method
