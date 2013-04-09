.class Lcom/airpush/android/DeliverNotification$3;
.super Ljava/lang/Object;
.source "DeliverNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/DeliverNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/DeliverNotification;


# direct methods
.method constructor <init>(Lcom/airpush/android/DeliverNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/DeliverNotification$3;->this$0:Lcom/airpush/android/DeliverNotification;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    const-string v1, "AirpushSDK"

    const-string v2, "Notification Expired"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/airpush/android/DeliverNotification$3;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/airpush/android/DeliverNotification;->access$6(Lcom/airpush/android/DeliverNotification;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/airpush/android/DeliverNotification$3;->cancelNotification()V

    .line 87
    return-void
.end method
