.class final Lcom/wifi/hacker/cracker/BootReceiver$13;
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
    .line 818
    invoke-direct {p0}, Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 821
    const/4 v0, 0x0

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->leadboltShowMoreApps(Landroid/app/Activity;Z)V
    invoke-static {p1, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->access$700(Landroid/app/Activity;Z)V

    .line 822
    return-void
.end method
