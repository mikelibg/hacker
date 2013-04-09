.class Lcom/revmob/ads/banner/BannerFetcher;
.super Lcom/revmob/ads/internal/AdWithImageFetcher;
.source "BannerFetcher.java"


# instance fields
.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "url"
    .parameter "size"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdWithImageFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 20
    iput-object p3, p0, Lcom/revmob/ads/banner/BannerFetcher;->size:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lcom/revmob/ads/internal/Ad;
    .locals 10
    .parameter "json"

    .prologue
    .line 26
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v7, receivedBanner:Lorg/json/JSONObject;
    const-string v8, "banners"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 28
    .local v1, banners:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 29
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 31
    .local v0, banner:Lorg/json/JSONObject;
    const-string v8, "links"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 33
    .local v6, links:Lorg/json/JSONArray;
    invoke-virtual {p0, v6}, Lcom/revmob/ads/banner/BannerFetcher;->getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, clickUrl:Ljava/lang/String;
    const-string v8, "html"

    invoke-virtual {p0, v6, v8}, Lcom/revmob/ads/banner/BannerFetcher;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, htmlAd:Ljava/lang/String;
    const/4 v2, 0x0

    .line 37
    .local v2, bmp:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_0

    .line 38
    invoke-virtual {p0, v6}, Lcom/revmob/ads/banner/BannerFetcher;->getImageUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/revmob/ads/banner/BannerFetcher;->downloadImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 41
    :cond_0
    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    .line 42
    :cond_1
    new-instance v8, Lcom/revmob/ads/banner/BannerAd;

    iget-object v9, p0, Lcom/revmob/ads/banner/BannerFetcher;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9, v2, v4, v3}, Lcom/revmob/ads/banner/BannerAd;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #banner:Lorg/json/JSONObject;
    .end local v1           #banners:Lorg/json/JSONArray;
    .end local v2           #bmp:Landroid/graphics/drawable/Drawable;
    .end local v3           #clickUrl:Ljava/lang/String;
    .end local v4           #htmlAd:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #links:Lorg/json/JSONArray;
    .end local v7           #receivedBanner:Lorg/json/JSONObject;
    :goto_1
    return-object v8

    .line 28
    .restart local v0       #banner:Lorg/json/JSONObject;
    .restart local v1       #banners:Lorg/json/JSONArray;
    .restart local v2       #bmp:Landroid/graphics/drawable/Drawable;
    .restart local v3       #clickUrl:Ljava/lang/String;
    .restart local v4       #htmlAd:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #links:Lorg/json/JSONArray;
    .restart local v7       #receivedBanner:Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    .end local v0           #banner:Lorg/json/JSONObject;
    .end local v1           #banners:Lorg/json/JSONArray;
    .end local v2           #bmp:Landroid/graphics/drawable/Drawable;
    .end local v3           #clickUrl:Ljava/lang/String;
    .end local v4           #htmlAd:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #links:Lorg/json/JSONArray;
    .end local v7           #receivedBanner:Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 48
    :cond_3
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 45
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public getFetchEntity()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/revmob/ads/banner/BannerFetcher;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/ads/EnvironmentConfig;->defaultJsonPayload(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    .local v1, entity:Lorg/json/JSONObject;
    const-string v2, "ad"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "size"

    iget-object v5, p0, Lcom/revmob/ads/banner/BannerFetcher;->size:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1           #entity:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method
