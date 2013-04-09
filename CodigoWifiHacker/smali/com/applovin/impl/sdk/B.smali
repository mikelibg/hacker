.class Lcom/applovin/impl/sdk/B;
.super Lcom/applovin/impl/sdk/O;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "SubmitData"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static a(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 9

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/o;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "package_name"

    iget-object v5, v0, Lcom/applovin/impl/sdk/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "created_at"

    iget-wide v5, v0, Lcom/applovin/impl/sdk/o;->d:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/z;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/w;->c:Lcom/applovin/impl/sdk/y;

    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/impl/sdk/w;->f:Lcom/applovin/impl/sdk/y;

    const-string v3, "device_token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/impl/sdk/w;->d:Lcom/applovin/impl/sdk/y;

    const-string v3, "publisher_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    sget-object v2, Lcom/applovin/impl/sdk/w;->e:Lcom/applovin/impl/sdk/y;

    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/z;->b()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-string v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "adserver_parameters"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/w;->E:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/w;->z:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/B;->a_()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/B;->e:Lcom/applovin/sdk/Logger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/B;->c:Ljava/lang/String;

    const-string v3, "Unable to parse API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a_()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/Z;

    iget-object v2, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/Z;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    sget-object v2, Lcom/applovin/impl/sdk/N;->b:Lcom/applovin/impl/sdk/N;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    return-void
.end method

.method protected b()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/w;->s:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/w;->t:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/ad;->a(Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/B;->e()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 7

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/B;->e()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->c()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->b()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "model"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "brand"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    iget v4, v2, Lcom/applovin/impl/sdk/p;->h:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "phone_number"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "country_code"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cpu_speed"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v2, Lcom/applovin/impl/sdk/p;->n:Ljava/util/Collection;

    if-eqz v0, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v2, Lcom/applovin/impl/sdk/p;->n:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "emails"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "type"

    const-string v4, "android"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_android_id"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_serial_id"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_wifi_mac"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_udid"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/applovin/impl/sdk/ad;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_nn_android_id"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_nn_serial_id"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_nn_wifi_mac"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "h_nn_udid"

    iget-object v4, v2, Lcom/applovin/impl/sdk/p;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/ad;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v2, Lcom/applovin/impl/sdk/p;->m:Ljava/util/Locale;

    if-eqz v0, :cond_2

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "device_info"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "package_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    iget-object v3, v1, Lcom/applovin/impl/sdk/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "created_at"

    iget-wide v3, v1, Lcom/applovin/impl/sdk/o;->d:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "applovin_sdk_version"

    const-string v2, "4.2.0-4.2.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/f;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/applovin/impl/sdk/B;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "targeting"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "errors"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Lcom/applovin/impl/sdk/A;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/A;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Lcom/applovin/impl/sdk/C;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/B;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/w;->h:Lcom/applovin/impl/sdk/y;

    iget-object v4, p0, Lcom/applovin/impl/sdk/B;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/C;-><init>(Lcom/applovin/impl/sdk/B;Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;)V

    sget-object v1, Lcom/applovin/impl/sdk/w;->m:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/T;->a(Lcom/applovin/impl/sdk/y;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/T;->run()V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/B;->e:Lcom/applovin/sdk/Logger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/B;->c:Ljava/lang/String;

    const-string v2, "Submiting user data..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/B;->b(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/B;->b()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "apps"

    invoke-static {v1}, Lcom/applovin/impl/sdk/B;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/B;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/B;->e:Lcom/applovin/sdk/Logger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/B;->c:Ljava/lang/String;

    const-string v3, "Unable to create JSON message with collected data"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
