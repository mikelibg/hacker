.class Lcom/airpush/android/SmartWallActivity$AirpushWebClient;
.super Landroid/webkit/WebViewClient;
.source "SmartWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/SmartWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirpushWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/SmartWallActivity;


# direct methods
.method private constructor <init>(Lcom/airpush/android/SmartWallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    .line 209
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lcom/airpush/android/SmartWallActivity;Lcom/airpush/android/SmartWallActivity$AirpushWebClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;-><init>(Lcom/airpush/android/SmartWallActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    #getter for: Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/airpush/android/SmartWallActivity;->access$0(Lcom/airpush/android/SmartWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 246
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    #getter for: Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/airpush/android/SmartWallActivity;->access$0(Lcom/airpush/android/SmartWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    #getter for: Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/airpush/android/SmartWallActivity;->access$0(Lcom/airpush/android/SmartWallActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmartWall Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    invoke-virtual {v1, v0}, Lcom/airpush/android/SmartWallActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    #getter for: Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/airpush/android/SmartWallActivity;->access$1(Lcom/airpush/android/SmartWallActivity;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    #getter for: Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/airpush/android/SmartWallActivity;->access$1(Lcom/airpush/android/SmartWallActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;->this$0:Lcom/airpush/android/SmartWallActivity;

    invoke-virtual {v1}, Lcom/airpush/android/SmartWallActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v3

    .line 232
    :catch_0
    move-exception v1

    goto :goto_1

    .line 219
    :catch_1
    move-exception v1

    goto :goto_0
.end method
