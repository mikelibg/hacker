.class Lcom/wifi/hacker/cracker/BootReceiver$1;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifi/hacker/cracker/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$1;->this$0:Lcom/wifi/hacker/cracker/BootReceiver;

    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xea60

    .line 262
    iget-object v8, p0, Lcom/wifi/hacker/cracker/BootReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->startNotificationAds(Landroid/content/Context;)V
    invoke-static {v8}, Lcom/wifi/hacker/cracker/BootReceiver;->access$000(Landroid/content/Context;)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .local v0, currentTime:J
    iget-object v8, p0, Lcom/wifi/hacker/cracker/BootReceiver$1;->val$context:Landroid/content/Context;

    const-string v9, "NEXT_ABSOLUTE_UPDATE_SETTINGS_TIME"

    add-long v10, v0, v12

    invoke-static {v8, v9, v10, v11}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 269
    .local v2, nextAbsoluteTime:J
    sub-long v4, v2, v0

    .line 270
    .local v4, updateIntervalTimeMillis:J
    cmp-long v8, v4, v12

    if-gez v8, :cond_0

    .line 271
    const-wide/32 v4, 0xea60

    .line 273
    :cond_0
    div-long v6, v4, v12

    .line 275
    .local v6, updateIntervalTimeMinutes:J
    iget-object v8, p0, Lcom/wifi/hacker/cracker/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v8, v6, v7}, Lcom/wifi/hacker/cracker/BootReceiver;->scheduleNextReloadSettings(Landroid/content/Context;J)V

    .line 276
    return-void
.end method
