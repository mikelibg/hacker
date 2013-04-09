.class final Lcom/wifi/hacker/cracker/BootReceiver$21;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->grabosShowInterstitial(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$grabosPackage:Ljava/lang/String;

.field final synthetic val$isLetangInterstitial:Z

.field final synthetic val$seenPackageKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$seenPackageKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$grabosPackage:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$isLetangInterstitial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 1878
    iget-object v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$seenPackageKey:Ljava/lang/String;

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$grabosPackage:Ljava/lang/String;

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$grabosPackage:Ljava/lang/String;

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$grabosPackage:Ljava/lang/String;

    .line 1887
    .local v0, grabosUrl:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    .local v1, localIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1889
    iget-object v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1891
    iget-boolean v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$isLetangInterstitial:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1892
    :cond_1
    return-void

    .line 1884
    .end local v0           #grabosUrl:Ljava/lang/String;
    .end local v1           #localIntent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wifi/hacker/cracker/BootReceiver$21;->val$grabosPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #grabosUrl:Ljava/lang/String;
    goto :goto_0
.end method
