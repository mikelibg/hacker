.class Lcom/parse/facebook/FbDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/facebook/FbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/facebook/FbDialog;


# direct methods
.method private constructor <init>(Lcom/parse/facebook/FbDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/facebook/FbDialog;Lcom/parse/facebook/FbDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/parse/facebook/FbDialog$FbWebViewClient;-><init>(Lcom/parse/facebook/FbDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$200(Lcom/parse/facebook/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$300(Lcom/parse/facebook/FbDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$400(Lcom/parse/facebook/FbDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mCrossImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$500(Lcom/parse/facebook/FbDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 177
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$200(Lcom/parse/facebook/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 180
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v0}, Lcom/parse/facebook/FbDialog;->access$000(Lcom/parse/facebook/FbDialog;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/parse/facebook/DialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/parse/facebook/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/parse/facebook/Facebook$DialogListener;->onError(Lcom/parse/facebook/DialogError;)V

    .line 172
    iget-object v0, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-virtual {v0}, Lcom/parse/facebook/FbDialog;->dismiss()V

    .line 173
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 133
    const-string v3, "Facebook-WebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/facebook/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "fbconnect://success"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    invoke-static {p2}, Lcom/parse/facebook/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 137
    .local v1, values:Landroid/os/Bundle;
    const-string v3, "error"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, error:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 139
    const-string v3, "error_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    if-nez v0, :cond_1

    .line 143
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v3}, Lcom/parse/facebook/FbDialog;->access$000(Lcom/parse/facebook/FbDialog;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/parse/facebook/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-virtual {v3}, Lcom/parse/facebook/FbDialog;->dismiss()V

    .line 163
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :goto_1
    return v2

    .line 144
    .restart local v0       #error:Ljava/lang/String;
    .restart local v1       #values:Landroid/os/Bundle;
    :cond_1
    const-string v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OAuthAccessDeniedException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v3}, Lcom/parse/facebook/FbDialog;->access$000(Lcom/parse/facebook/FbDialog;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parse/facebook/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v3}, Lcom/parse/facebook/FbDialog;->access$000(Lcom/parse/facebook/FbDialog;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v3

    new-instance v4, Lcom/parse/facebook/FacebookError;

    invoke-direct {v4, v0}, Lcom/parse/facebook/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/parse/facebook/Facebook$DialogListener;->onFacebookError(Lcom/parse/facebook/FacebookError;)V

    goto :goto_0

    .line 153
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :cond_4
    const-string v3, "fbconnect://cancel"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    #getter for: Lcom/parse/facebook/FbDialog;->mListener:Lcom/parse/facebook/Facebook$DialogListener;
    invoke-static {v3}, Lcom/parse/facebook/FbDialog;->access$000(Lcom/parse/facebook/FbDialog;)Lcom/parse/facebook/Facebook$DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parse/facebook/Facebook$DialogListener;->onCancel()V

    .line 155
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-virtual {v3}, Lcom/parse/facebook/FbDialog;->dismiss()V

    goto :goto_1

    .line 157
    :cond_5
    const-string v3, "touch"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 158
    const/4 v2, 0x0

    goto :goto_1

    .line 161
    :cond_6
    iget-object v3, p0, Lcom/parse/facebook/FbDialog$FbWebViewClient;->this$0:Lcom/parse/facebook/FbDialog;

    invoke-virtual {v3}, Lcom/parse/facebook/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
