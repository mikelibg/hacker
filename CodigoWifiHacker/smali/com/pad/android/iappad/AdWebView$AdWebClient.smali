.class Lcom/pad/android/iappad/AdWebView$AdWebClient;
.super Landroid/webkit/WebViewClient;
.source "AdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebClient"
.end annotation


# instance fields
.field private activity:Landroid/content/Context;

.field private adView:Lcom/pad/android/iappad/AdWebView;

.field private controller:Lcom/pad/android/iappad/AdController;

.field final synthetic this$0:Lcom/pad/android/iappad/AdWebView;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/AdWebView;Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdWebView;)V
    .locals 0
    .parameter
    .parameter "act"
    .parameter "cont"
    .parameter "adV"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    .line 118
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    .line 121
    iput-object p3, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    .line 122
    iput-object p4, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->adView:Lcom/pad/android/iappad/AdWebView;

    .line 123
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v9, 0x0

    .line 213
    const-string v6, "LBAdController"

    const-string v7, "onPageFinished called"

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/pad/android/iappad/AdWebView;->access$5(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/pad/android/iappad/AdWebView;->access$5(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/pad/android/iappad/AdWebView;->access$5(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 218
    :cond_0
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/pad/android/iappad/AdWebView;->access$0(Lcom/pad/android/iappad/AdWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    const/4 v3, 0x0

    .line 224
    .local v3, isTransparent:Z
    :try_start_0
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->results:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/pad/android/iappad/AdWebView;->access$2(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "windowtransparency"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 226
    :goto_0
    if-eqz v3, :cond_3

    .line 228
    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 250
    :goto_1
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->adView:Lcom/pad/android/iappad/AdWebView;

    const-string v7, "javascript:window.LBOUT.processHTML(document.getElementsByTagName(\'body\')[0].getAttribute(\'ad_count\'), document.getElementsByTagName(\'body\')[0].getAttribute(\'html_ad\'), document.getElementsByTagName(\'html\')[0].innerHTML); window.LBOUT.processAudio(document.getElementsByTagName(\'body\')[0].getAttribute(\'audio_url\'), document.getElementsByTagName(\'body\')[0].getAttribute(\'audio_clk_url\'));"

    invoke-virtual {v6, v7}, Lcom/pad/android/iappad/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    const-string v7, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 254
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 255
    .local v1, accManager:Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 256
    .local v0, acc:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v6, v0

    if-lt v2, v6, :cond_5

    .line 278
    .end local v0           #acc:[Landroid/accounts/Account;
    .end local v1           #accManager:Landroid/accounts/AccountManager;
    .end local v2           #i:I
    .end local v3           #isTransparent:Z
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #setter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v6, v9}, Lcom/pad/android/iappad/AdWebView;->access$3(Lcom/pad/android/iappad/AdWebView;Z)V

    .line 279
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    iget-object v7, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v7}, Lcom/pad/android/iappad/AdWebView;->access$1(Lcom/pad/android/iappad/AdWebView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/pad/android/iappad/AdController;->setLoading(Z)V

    .line 280
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->adView:Lcom/pad/android/iappad/AdWebView;

    const/16 v7, 0x82

    invoke-virtual {v6, v7}, Lcom/pad/android/iappad/AdWebView;->requestFocus(I)Z

    .line 282
    const-string v6, "#app_close"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 287
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v6}, Lcom/pad/android/iappad/AdController;->destroyAd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_2
    :goto_4
    return-void

    .line 232
    .restart local v3       #isTransparent:Z
    :cond_3
    const/4 v5, 0x0

    .line 235
    .local v5, viewcolor:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->results:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/pad/android/iappad/AdWebView;->access$2(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "windowbackgroundcolor"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 239
    :goto_5
    if-eqz v5, :cond_4

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 241
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_1

    .line 245
    :cond_4
    const/4 v6, -0x1

    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_1

    .line 258
    .end local v5           #viewcolor:Ljava/lang/String;
    .restart local v0       #acc:[Landroid/accounts/Account;
    .restart local v1       #accManager:Landroid/accounts/AccountManager;
    .restart local v2       #i:I
    :cond_5
    aget-object v4, v0, v2

    .line 259
    .local v4, tmp:Landroid/accounts/Account;
    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 262
    iget-object v6, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->adView:Lcom/pad/android/iappad/AdWebView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "javascript:(function() {var input = document.getElementsByName(\'Email\')[0];input.select();input.focus();input.value = \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v8, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\';"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 267
    const-string v8, "})()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-virtual {v6, v7}, Lcom/pad/android/iappad/AdWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 256
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 274
    .end local v0           #acc:[Landroid/accounts/Account;
    .end local v1           #accManager:Landroid/accounts/AccountManager;
    .end local v2           #i:I
    .end local v4           #tmp:Landroid/accounts/Account;
    :cond_7
    const-string v6, "LBAdController"

    const-string v7, "Get Accounts permission not granted"

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 289
    .end local v3           #isTransparent:Z
    :catch_0
    move-exception v6

    goto :goto_4

    .line 237
    .restart local v3       #isTransparent:Z
    .restart local v5       #viewcolor:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_5

    .line 225
    .end local v5           #viewcolor:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 129
    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 130
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 131
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v1, im:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$0(Lcom/pad/android/iappad/AdWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Home loaded - loading = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v4}, Lcom/pad/android/iappad/AdWebView;->access$1(Lcom/pad/android/iappad/AdWebView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$1(Lcom/pad/android/iappad/AdWebView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->results:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$2(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "useclickwindow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const-string v2, "LBAdController"

    const-string v3, "Going to use ClickWindow details"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pad/android/iappad/AdController;->setHomeLoaded(Z)V

    .line 150
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    const/4 v3, 0x0

    #setter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v2, v3}, Lcom/pad/android/iappad/AdWebView;->access$3(Lcom/pad/android/iappad/AdWebView;Z)V

    .line 151
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    iget-object v3, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v3}, Lcom/pad/android/iappad/AdWebView;->access$1(Lcom/pad/android/iappad/AdWebView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pad/android/iappad/AdController;->setLoading(Z)V

    .line 152
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/AdController;->onLinkClicked()V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    const-string v2, "LBAdController"

    const-string v3, "Normal window to be used"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, "LBAdController"

    const-string v3, "Link clicked!!"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loading:Z
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$1(Lcom/pad/android/iappad/AdWebView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->nativeOpen:Z
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$4(Lcom/pad/android/iappad/AdWebView;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "market://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http://market.android.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://market.android.com"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://play.google.com/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "http://play.google.com/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    :cond_4
    :try_start_1
    const-string v2, "LBAdController"

    const-string v3, "Opening URL natively"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :try_start_2
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->results:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$2(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "clickhelpurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 185
    :catch_1
    move-exception v0

    .line 187
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/AdController;->destroyAd()V

    goto/16 :goto_0

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-string v2, "usenative=1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 192
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 193
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    :cond_6
    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 197
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/AdController;->destroyAd()V

    .line 198
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 202
    :cond_7
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$5(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    #getter for: Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/pad/android/iappad/AdWebView;->access$5(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_9

    .line 204
    :cond_8
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    iget-object v3, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->activity:Landroid/content/Context;

    const-string v4, ""

    const-string v5, "Loading....Please wait!"

    invoke-static {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    #setter for: Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/pad/android/iappad/AdWebView;->access$6(Lcom/pad/android/iappad/AdWebView;Landroid/app/ProgressDialog;)V

    .line 206
    :cond_9
    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView$AdWebClient;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/AdController;->onLinkClicked()V

    goto/16 :goto_0

    .line 182
    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method
