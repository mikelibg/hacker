.class Lcom/airpush/android/PushNotification$1;
.super Ljava/lang/Object;
.source "PushNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/PushNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/PushNotification;


# direct methods
.method constructor <init>(Lcom/airpush/android/PushNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/PushNotification$1;->this$0:Lcom/airpush/android/PushNotification;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/airpush/android/PushNotification;->access$0()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V

    .line 18
    return-void
.end method
