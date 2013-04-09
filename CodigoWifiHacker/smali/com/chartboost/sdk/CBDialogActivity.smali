.class public Lcom/chartboost/sdk/CBDialogActivity;
.super Landroid/app/Activity;
.source "CBDialogActivity.java"


# static fields
.field public static final BUNDLE_KEY_CONFIGOBJECT:Ljava/lang/String; = "bk_cfgo"

.field public static final BUNDLE_KEY_TYPE:Ljava/lang/String; = "bk_type"

.field public static final OVERLAY_OPACITY:I = 0x4b

.field public static final TAG:Ljava/lang/String; = "CBDialogActivity"


# instance fields
.field protected cbConfiguration:Lorg/json/JSONObject;

.field protected cbContainer:Landroid/widget/RelativeLayout;

.field protected cbObject:Lcom/chartboost/sdk/ChartBoost;

.field protected cbViewType:I

.field protected ctx:Landroid/content/Context;

.field public webView:Lcom/chartboost/sdk/CBWebView;

.field private webViewClient:Lcom/chartboost/sdk/CBWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/chartboost/sdk/CBDialogActivity;->display()V

    return-void
.end method

.method private display()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    .line 122
    iget v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 123
    new-instance v0, Lcom/chartboost/sdk/CBWebView;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/CBWebView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    .line 128
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    if-nez v0, :cond_2

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 136
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/CBWebViewClient;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBWebViewClient;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setResponseContext(Lorg/json/JSONObject;)V

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, cbHtmlContent:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 145
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "html content is blank!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v6           #cbHtmlContent:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 154
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 157
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 124
    :cond_4
    iget v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    new-instance v0, Lcom/chartboost/sdk/CBWebView;

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/CBWebView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    goto :goto_0

    .line 148
    .restart local v6       #cbHtmlContent:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/CBWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    const/4 v3, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/CBDialogActivity;->requestWindowFeature(I)Z

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 56
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 59
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bk_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bk_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    .line 71
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bk_cfgo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iput-object p0, p0, Lcom/chartboost/sdk/CBDialogActivity;->ctx:Landroid/content/Context;

    .line 85
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/chartboost/sdk/CBDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/CBDialogActivity$1;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 92
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/CBDialogActivity;->setContentView(Landroid/view/View;)V

    .line 93
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    const-string v1, "chartboost://close"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequest(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
