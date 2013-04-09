.class final Lcom/wifi/hacker/cracker/BootReceiver$30;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->showRatePopup(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$showInterstitialAd:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2303
    iput-boolean p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$30;->val$showInterstitialAd:Z

    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$30;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2305
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2306
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$30;->val$showInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 2307
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$30;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->showStartInterstitial(Landroid/app/Activity;)V

    .line 2309
    :cond_0
    return-void
.end method
