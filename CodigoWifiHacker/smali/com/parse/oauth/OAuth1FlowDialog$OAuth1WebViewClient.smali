.class Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OAuth1FlowDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/oauth/OAuth1FlowDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAuth1WebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/oauth/OAuth1FlowDialog;


# direct methods
.method private constructor <init>(Lcom/parse/oauth/OAuth1FlowDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/oauth/OAuth1FlowDialog;Lcom/parse/oauth/OAuth1FlowDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;-><init>(Lcom/parse/oauth/OAuth1FlowDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$400(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->content:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$500(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 170
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$600(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->closeImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$700(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 152
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$400(Lcom/parse/oauth/OAuth1FlowDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 153
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;
    invoke-static {v0}, Lcom/parse/oauth/OAuth1FlowDialog;->access$000(Lcom/parse/oauth/OAuth1FlowDialog;)Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->callbackUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->access$200(Lcom/parse/oauth/OAuth1FlowDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->dismiss()V

    .line 132
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->handler:Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;
    invoke-static {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->access$000(Lcom/parse/oauth/OAuth1FlowDialog;)Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/parse/oauth/OAuth1FlowDialog$FlowResultHandler;->onComplete(Ljava/lang/String;)V

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    #getter for: Lcom/parse/oauth/OAuth1FlowDialog;->serviceUrlIdentifier:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->access$300(Lcom/parse/oauth/OAuth1FlowDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/parse/oauth/OAuth1FlowDialog$OAuth1WebViewClient;->this$0:Lcom/parse/oauth/OAuth1FlowDialog;

    invoke-virtual {v1}, Lcom/parse/oauth/OAuth1FlowDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
