.class final Lcom/wifi/hacker/cracker/BootReceiver$19;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->doPostDisclaimerStuff(Landroid/app/Activity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$19;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$19;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->startNotificationAds(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->access$000(Landroid/content/Context;)V

    .line 1298
    return-void
.end method
