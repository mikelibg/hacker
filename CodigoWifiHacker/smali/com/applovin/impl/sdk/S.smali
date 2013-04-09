.class Lcom/applovin/impl/sdk/S;
.super Lcom/applovin/impl/sdk/O;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "RenderAd"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/impl/sdk/S;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sdk_version_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.2.0-4.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/ab;

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/ab;-><init>(Ljava/lang/CharSequence;Lcom/applovin/sdk/Logger;)V

    const-string v1, "click"

    const-string v2, "applovin://com.applovin.sdk/adservice/track_click"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click.javascript"

    const-string v2, "javascript:window.applovin_sdk.execute(\'track_click\')"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ab;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "click"

    iget-object v2, p0, Lcom/applovin/impl/sdk/S;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "clcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "4.2.0-4.2.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/A;

    move-result-object v0

    const-string v1, "ad_dsp"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/A;->a(Ljava/lang/String;)V

    const-string v1, "ad_dsp_session"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/A;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/S;->c:Ljava/lang/String;

    const-string v3, "Unable process a failure to recieve an ad"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->c:Ljava/lang/String;

    const-string v2, "Rendering ad..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v3, "clcode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v3, "clcode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/S;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v4, "redirect_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v4, "redirect_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/applovin/impl/sdk/S;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/S;->f:Landroid/content/Context;

    invoke-direct {p0, v2, v4}, Lcom/applovin/impl/sdk/S;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/applovin/sdk/AppLovinAd;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/S;->a(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_2
    return-void

    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v3, "click_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->a:Lorg/json/JSONObject;

    const-string v3, "click_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->c:Ljava/lang/String;

    const-string v2, "Ad server has not returned a clcode or click URL"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/S;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/S;->c:Ljava/lang/String;

    const-string v3, "Unable to parse ad service response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/S;->b()V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->c:Ljava/lang/String;

    const-string v2, "Ad server has not returned a redirect URL"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/S;->b()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/S;->e:Lcom/applovin/sdk/Logger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/S;->c:Ljava/lang/String;

    const-string v2, "No HTML recieved for requseted ad"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/S;->b()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
