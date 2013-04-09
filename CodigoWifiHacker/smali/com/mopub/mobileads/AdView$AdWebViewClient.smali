.class Lcom/mopub/mobileads/AdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdView;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdView;Lcom/mopub/mobileads/AdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView$AdWebViewClient;-><init>(Lcom/mopub/mobileads/AdView;)V

    return-void
.end method

.method private urlWithClickTrackingRedirect(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "adView"
    .parameter "url"

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, clickthroughUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 231
    .end local p2
    :goto_0
    return-object p2

    .line 230
    .restart local p2
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, encodedUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 217
    move-object v0, p1

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 218
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, redirectUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-direct {p0, v0, p2}, Lcom/mopub/mobileads/AdView$AdWebViewClient;->urlWithClickTrackingRedirect(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 222
    iget-object v2, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->showBrowserForUrl(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lcom/mopub/mobileads/AdView;->access$500(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 177
    move-object v0, p1

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 180
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    const-string v5, "mopub://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 182
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, host:Ljava/lang/String;
    const-string v5, "finishLoad"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    #calls: Lcom/mopub/mobileads/AdView;->adDidLoad()V
    invoke-static {v0}, Lcom/mopub/mobileads/AdView;->access$100(Lcom/mopub/mobileads/AdView;)V

    .line 211
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v8

    .line 185
    .restart local v2       #host:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_1
    const-string v5, "close"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    #calls: Lcom/mopub/mobileads/AdView;->adDidClose()V
    invoke-static {v0}, Lcom/mopub/mobileads/AdView;->access$300(Lcom/mopub/mobileads/AdView;)V

    goto :goto_0

    .line 186
    :cond_2
    const-string v5, "failLoad"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->loadFailUrl()V

    goto :goto_0

    .line 187
    :cond_3
    const-string v5, "custom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    #calls: Lcom/mopub/mobileads/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V
    invoke-static {v0, v4}, Lcom/mopub/mobileads/AdView;->access$400(Lcom/mopub/mobileads/AdView;Landroid/net/Uri;)V

    goto :goto_0

    .line 191
    .end local v2           #host:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    const-string v5, "tel:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "voicemail:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "sms:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "geo:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "google.streetview:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    :try_start_0
    iget-object v5, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v5}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v5, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v5}, Lcom/mopub/mobileads/AdView;->registerClick()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not handle intent with URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Is this intent unsupported on your phone?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/mopub/mobileads/AdView$AdWebViewClient;->urlWithClickTrackingRedirect(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 207
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad clicked. Click URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v5, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    iget-object v5, v5, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubView;->adClicked()V

    .line 210
    iget-object v5, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->showBrowserForUrl(Ljava/lang/String;)V
    invoke-static {v5, p2}, Lcom/mopub/mobileads/AdView;->access$500(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
