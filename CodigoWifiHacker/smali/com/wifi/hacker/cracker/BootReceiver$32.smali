.class final Lcom/wifi/hacker/cracker/BootReceiver$32;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->userOptOutDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$showInterstitialAdWithDisclaimer:Z

.field final synthetic val$showRateMePopup:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$showRateMePopup:Z

    iput-boolean p3, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$showInterstitialAdWithDisclaimer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->setDisclaimerAccepted(Landroid/content/Context;)V

    .line 2501
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/airpush/android/Airpush;->airpushOptIn(Landroid/content/Context;)V

    .line 2502
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$showRateMePopup:Z

    iget-boolean v2, p0, Lcom/wifi/hacker/cracker/BootReceiver$32;->val$showInterstitialAdWithDisclaimer:Z

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->doPostDisclaimerStuff(Landroid/app/Activity;ZZ)V
    invoke-static {v0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->access$1200(Landroid/app/Activity;ZZ)V

    .line 2503
    return-void
.end method
