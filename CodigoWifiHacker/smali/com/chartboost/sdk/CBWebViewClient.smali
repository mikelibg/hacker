.class public Lcom/chartboost/sdk/CBWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CBWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartBoost AdView"


# instance fields
.field private cb:Lcom/chartboost/sdk/ChartBoost;

.field private cbContainer:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field private dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 1
    .parameter "dialogActivity"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    .line 26
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    .line 32
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    .line 33
    iget-object v0, p1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    .line 34
    invoke-static {p1}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBWebViewClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/CBWebViewClient;)Lcom/chartboost/sdk/CBDialogActivity;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/chartboost/sdk/CBWebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    return-void
.end method

.method private closeView()V
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    .line 297
    .local v0, view:Landroid/view/ViewManager;
    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 300
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    .line 301
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    goto :goto_0
.end method

.method private handleChartBoostRequestForInterstitial(Ljava/lang/String;)V
    .locals 8
    .parameter "url"

    .prologue
    .line 208
    const-string v5, "cb"

    const-string v6, "handleChartBoostRequestForInterstitial"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, items:[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v2, v5

    .line 213
    .local v1, function:Ljava/lang/String;
    const-string v5, "cb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "function: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v5, "close"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v6, v6, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseInterstitial(Landroid/view/View;)V

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 225
    :cond_2
    const-string v5, "link"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 228
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v6, v6, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickInterstitial(Landroid/view/View;)V

    .line 234
    :cond_3
    :try_start_0
    new-instance v4, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    const-string v6, "api"

    const-string v7, "click"

    invoke-direct {v4, v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v4, request:Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 237
    const-string v5, "to"

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v6, v6, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "to"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v5, "cgn"

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v6, v6, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "cgn"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v5, "creative"

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v6, v6, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "creative"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "cb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decoding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v3, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;

    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;-><init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V

    .line 245
    .local v3, rcc:Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->shouldShowProgress:Z

    .line 246
    const/4 v5, 0x3

    aget-object v5, v2, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    .line 247
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    const-string v5, "cb"

    const-string v6, "sending request click request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 251
    .end local v3           #rcc:Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    .end local v4           #request:Lcom/chartboost/sdk/CBAPIRequest;
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleChartBoostRequestForMoreApps(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    .line 151
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, items:[Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v2, v3, v6

    .line 155
    .local v2, function:Ljava/lang/String;
    const-string v6, "close"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v7, v7, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6, v7}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseMoreApps(Landroid/view/View;)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    const-string v6, "link"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 168
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v7, v7, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6, v7}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickMoreApps(Landroid/view/View;)V

    .line 172
    :cond_3
    :try_start_0
    new-instance v5, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    const-string v7, "api"

    const-string v8, "click"

    invoke-direct {v5, v6, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v5, request:Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 175
    new-instance v1, Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONTokener;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .local v1, embeddedData:Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "to"

    const-string v7, "to"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :goto_1
    :try_start_2
    const-string v6, "cgn"

    const-string v7, "cgn"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :goto_2
    :try_start_3
    const-string v6, "creative"

    const-string v7, "creative"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 187
    :goto_3
    :try_start_4
    const-string v6, "type"

    const-string v7, "type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 190
    :goto_4
    :try_start_5
    const-string v6, "more_type"

    const-string v7, "more_type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 193
    :goto_5
    :try_start_6
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v7}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v4, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v4, p0, v6}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;-><init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V

    .line 195
    .local v4, rcc:Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->shouldShowProgress:Z

    .line 196
    const/4 v6, 0x3

    aget-object v6, v3, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    .line 197
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v4, v6}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 199
    .end local v1           #embeddedData:Lorg/json/JSONObject;
    .end local v4           #rcc:Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    .end local v5           #request:Lcom/chartboost/sdk/CBAPIRequest;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #embeddedData:Lorg/json/JSONObject;
    .restart local v5       #request:Lcom/chartboost/sdk/CBAPIRequest;
    :catch_1
    move-exception v6

    goto :goto_5

    .line 188
    :catch_2
    move-exception v6

    goto :goto_4

    .line 185
    :catch_3
    move-exception v6

    goto :goto_3

    .line 182
    :catch_4
    move-exception v6

    goto :goto_2

    .line 179
    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    const-string v1, "ChartBoost AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sideloading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method


# virtual methods
.method protected handleChartBoostRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 140
    const-string v0, "ChartBoost AdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling chartboost:// request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v0, v0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequestForInterstitial(Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v0, v0, Lcom/chartboost/sdk/CBDialogActivity;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequestForMoreApps(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/chartboost/sdk/CBWebView;

    .line 58
    .local v0, chartBoostView:Lcom/chartboost/sdk/CBWebView;
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getState()Lcom/chartboost/sdk/CBWebView$CBViewState;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    if-ne v1, v2, :cond_0

    .line 60
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateOther:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    .line 62
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v1, v2, :cond_3

    .line 66
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayInterstitial(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 76
    const-string v1, "ChartBoost AdView"

    const-string v2, "Got an interstitial, adding to view!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 80
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 109
    :cond_2
    :goto_1
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayMoreApps(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    goto :goto_0

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 98
    const-string v1, "ChartBoost AdView"

    const-string v2, "Got More Apps, adding to view!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 102
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "webView"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    .end local v1           #uri:Ljava/net/URI;
    :cond_0
    :goto_0
    return v2

    .line 126
    .restart local v1       #uri:Ljava/net/URI;
    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chartboost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v2, 0x1

    goto :goto_0

    .line 133
    .end local v1           #uri:Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
