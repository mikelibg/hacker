.class Lcom/revmob/ads/fullscreen/FullscreenFetcher;
.super Lcom/revmob/ads/internal/AdWithImageFetcher;
.source "FullscreenFetcher.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "url"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdWithImageFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lcom/revmob/ads/internal/Ad;
    .locals 8
    .parameter "json"

    .prologue
    const/4 v5, 0x0

    .line 22
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .local v4, receivedFullscreen:Lorg/json/JSONObject;
    const-string v6, "fullscreen"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "links"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24
    .local v3, links:Lorg/json/JSONArray;
    invoke-virtual {p0, v3}, Lcom/revmob/ads/fullscreen/FullscreenFetcher;->getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, clickUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 37
    .end local v1           #clickUrl:Ljava/lang/String;
    .end local v3           #links:Lorg/json/JSONArray;
    .end local v4           #receivedFullscreen:Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 28
    .restart local v1       #clickUrl:Ljava/lang/String;
    .restart local v3       #links:Lorg/json/JSONArray;
    .restart local v4       #receivedFullscreen:Lorg/json/JSONObject;
    :cond_0
    const-string v6, "html"

    invoke-virtual {p0, v3, v6}, Lcom/revmob/ads/fullscreen/FullscreenFetcher;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, htmlAd:Ljava/lang/String;
    const/4 v0, 0x0

    .line 30
    .local v0, bmp:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 31
    invoke-virtual {p0, v3}, Lcom/revmob/ads/fullscreen/FullscreenFetcher;->getImageUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/revmob/ads/fullscreen/FullscreenFetcher;->downloadImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    :cond_1
    new-instance v6, Lcom/revmob/ads/fullscreen/FullscreenAd;

    iget-object v7, p0, Lcom/revmob/ads/fullscreen/FullscreenFetcher;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7, v0, v2, v1}, Lcom/revmob/ads/fullscreen/FullscreenAd;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    .line 35
    .end local v0           #bmp:Landroid/graphics/drawable/Drawable;
    .end local v1           #clickUrl:Ljava/lang/String;
    .end local v2           #htmlAd:Ljava/lang/String;
    .end local v3           #links:Lorg/json/JSONArray;
    .end local v4           #receivedFullscreen:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 34
    :catch_1
    move-exception v6

    goto :goto_0
.end method
