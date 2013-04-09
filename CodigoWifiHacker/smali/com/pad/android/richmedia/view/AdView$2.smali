.class Lcom/pad/android/richmedia/view/AdView$2;
.super Landroid/webkit/WebViewClient;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
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
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 926
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1046
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lr:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 944
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$5(Lcom/pad/android/richmedia/view/AdView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$5(Lcom/pad/android/richmedia/view/AdView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$5(Lcom/pad/android/richmedia/view/AdView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mDensity:F
    invoke-static {v2}, Lcom/pad/android/richmedia/view/AdView;->access$6(Lcom/pad/android/richmedia/view/AdView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    #setter for: Lcom/pad/android/richmedia/view/AdView;->mDefaultHeight:I
    invoke-static {v0, v1}, Lcom/pad/android/richmedia/view/AdView;->access$7(Lcom/pad/android/richmedia/view/AdView;I)V

    .line 951
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mDensity:F
    invoke-static {v2}, Lcom/pad/android/richmedia/view/AdView;->access$6(Lcom/pad/android/richmedia/view/AdView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    #setter for: Lcom/pad/android/richmedia/view/AdView;->mDefaultWidth:I
    invoke-static {v0, v1}, Lcom/pad/android/richmedia/view/AdView;->access$8(Lcom/pad/android/richmedia/view/AdView;I)V

    .line 953
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$9(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/controller/AdUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mDensity:F
    invoke-static {v1}, Lcom/pad/android/richmedia/view/AdView;->access$6(Lcom/pad/android/richmedia/view/AdView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pad/android/iappad/controller/AdUtilityController;->init(F)V

    .line 984
    const-string v0, "#app_close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 989
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mController:Lcom/pad/android/iappad/AdController;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$10(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->destroyAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :cond_1
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 939
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 929
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Failing URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 997
    const-string v5, "AdView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shouldOverride - URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1001
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #calls: Lcom/pad/android/richmedia/view/AdView;->isRegisteredProtocol(Landroid/net/Uri;)Z
    invoke-static {v5, v3}, Lcom/pad/android/richmedia/view/AdView;->access$11(Lcom/pad/android/richmedia/view/AdView;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1002
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    move-result-object v5

    invoke-interface {v5, p2}, Lcom/pad/android/richmedia/view/AdView$AdViewListener;->handleRequest(Ljava/lang/String;)V

    .line 1038
    :goto_0
    return v4

    .line 1006
    :cond_0
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1007
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    .line 1008
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1007
    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1009
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1010
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1029
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1032
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1034
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1035
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1037
    .end local v2           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1038
    .local v1, e2:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 1014
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1015
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 1016
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1015
    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1017
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1018
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1022
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1023
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1025
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1026
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$2;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
