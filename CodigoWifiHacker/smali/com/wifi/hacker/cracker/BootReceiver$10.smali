.class final Lcom/wifi/hacker/cracker/BootReceiver$10;
.super Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 772
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->grabosShowInterstitial(Landroid/app/Activity;ZZ)V

    .line 773
    return-void
.end method
