.class Lcom/airpush/android/OptinActivity$OptinDialog$2;
.super Ljava/lang/Object;
.source "OptinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/OptinActivity$OptinDialog;->showOptinDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airpush/android/OptinActivity$OptinDialog;


# direct methods
.method constructor <init>(Lcom/airpush/android/OptinActivity$OptinDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/OptinActivity$OptinDialog$2;->this$1:Lcom/airpush/android/OptinActivity$OptinDialog;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/airpush/android/OptinActivity$OptinDialog$2;->this$1:Lcom/airpush/android/OptinActivity$OptinDialog;

    invoke-virtual {v1}, Lcom/airpush/android/OptinActivity$OptinDialog;->dismiss()V

    .line 263
    iget-object v1, p0, Lcom/airpush/android/OptinActivity$OptinDialog$2;->this$1:Lcom/airpush/android/OptinActivity$OptinDialog;

    iget-object v1, v1, Lcom/airpush/android/OptinActivity$OptinDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "optIn"

    invoke-static {v1}, Lcom/airpush/android/OptinActivity;->access$4(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/airpush/android/OptinActivity$OptinDialog$2;->this$1:Lcom/airpush/android/OptinActivity$OptinDialog;

    #getter for: Lcom/airpush/android/OptinActivity$OptinDialog;->this$0:Lcom/airpush/android/OptinActivity;
    invoke-static {v1}, Lcom/airpush/android/OptinActivity$OptinDialog;->access$0(Lcom/airpush/android/OptinActivity$OptinDialog;)Lcom/airpush/android/OptinActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/airpush/android/OptinActivity;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v1}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    .line 267
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/airpush/android/Airpush;->startNewAdThread(Z)V

    .line 279
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/airpush/android/Airpush;->startNewAdThread(Z)V

    .line 273
    iget-object v1, p0, Lcom/airpush/android/OptinActivity$OptinDialog$2;->this$1:Lcom/airpush/android/OptinActivity$OptinDialog;

    #getter for: Lcom/airpush/android/OptinActivity$OptinDialog;->this$0:Lcom/airpush/android/OptinActivity;
    invoke-static {v1}, Lcom/airpush/android/OptinActivity$OptinDialog;->access$0(Lcom/airpush/android/OptinActivity$OptinDialog;)Lcom/airpush/android/OptinActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airpush/android/OptinActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
