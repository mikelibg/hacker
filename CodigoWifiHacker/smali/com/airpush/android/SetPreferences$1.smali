.class Lcom/airpush/android/SetPreferences$1;
.super Ljava/lang/Object;
.source "SetPreferences.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/SetPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airpush/android/AsyncTaskCompleteListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/SetPreferences;


# direct methods
.method constructor <init>(Lcom/airpush/android/SetPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/SetPreferences$1;->this$0:Lcom/airpush/android/SetPreferences;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/airpush/android/SetPreferences$1;)Lcom/airpush/android/SetPreferences;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airpush/android/SetPreferences$1;->this$0:Lcom/airpush/android/SetPreferences;

    return-object v0
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/airpush/android/SetPreferences;->access$0()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/airpush/android/SetPreferences$1$1;

    invoke-direct {v2, p0}, Lcom/airpush/android/SetPreferences$1$1;-><init>(Lcom/airpush/android/SetPreferences$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Activitymanager"

    const-string v2, "App Info Sending Failed....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "Activitymanager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/SetPreferences$1;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App info result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/airpush/android/SetPreferences;->access$0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/SetPreferences;->nextAppListStartTime(Landroid/content/Context;)Z

    .line 75
    return-void
.end method
