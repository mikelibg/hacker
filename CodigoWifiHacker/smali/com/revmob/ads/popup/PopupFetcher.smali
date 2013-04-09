.class Lcom/revmob/ads/popup/PopupFetcher;
.super Lcom/revmob/ads/internal/AdFetcher;
.source "PopupFetcher.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "url"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lcom/revmob/ads/internal/Ad;
    .locals 6
    .parameter "json"

    .prologue
    .line 20
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .local v2, receivedPopUp:Lorg/json/JSONObject;
    const-string v4, "pop_up"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, message:Ljava/lang/String;
    const-string v4, "pop_up"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "links"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "href"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/revmob/ads/popup/Popup;

    iget-object v5, p0, Lcom/revmob/ads/popup/PopupFetcher;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5, v1, v3}, Lcom/revmob/ads/popup/Popup;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #receivedPopUp:Lorg/json/JSONObject;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_0
.end method
