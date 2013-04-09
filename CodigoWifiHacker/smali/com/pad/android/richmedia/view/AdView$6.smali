.class Lcom/pad/android/richmedia/view/AdView$6;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/richmedia/view/AdView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$6;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 1339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1344
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_0
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$6;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$18(Lcom/pad/android/richmedia/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1348
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$6;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mController:Lcom/pad/android/iappad/AdController;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$10(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/AdController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$6;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mController:Lcom/pad/android/iappad/AdController;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$10(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->destroyAd()V

    .line 1353
    :cond_0
    return-void

    .line 1346
    :catch_0
    move-exception v0

    goto :goto_0
.end method
