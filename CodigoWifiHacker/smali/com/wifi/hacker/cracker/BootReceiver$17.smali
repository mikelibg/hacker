.class final Lcom/wifi/hacker/cracker/BootReceiver$17;
.super Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->getDefaultTabViewShowAdMethod()Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 909
    const/4 v0, 0x0

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->revmobDirectLink(Landroid/app/Activity;Z)V
    invoke-static {p1, v0}, Lcom/wifi/hacker/cracker/BootReceiver;->access$600(Landroid/app/Activity;Z)V

    .line 910
    return-void
.end method
