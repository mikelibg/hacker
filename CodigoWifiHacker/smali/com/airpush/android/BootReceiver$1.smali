.class Lcom/airpush/android/BootReceiver$1;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/BootReceiver;

.field private final synthetic val$arg0:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/airpush/android/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/BootReceiver$1;->this$0:Lcom/airpush/android/BootReceiver;

    iput-object p2, p0, Lcom/airpush/android/BootReceiver$1;->val$arg0:Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/airpush/android/PushNotification;

    iget-object v1, p0, Lcom/airpush/android/BootReceiver$1;->val$arg0:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/airpush/android/PushNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/airpush/android/PushNotification;->startAirpush()V

    .line 19
    const-string v0, "Airpush SDK started form BootReciver."

    invoke-static {v0}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 20
    return-void
.end method
