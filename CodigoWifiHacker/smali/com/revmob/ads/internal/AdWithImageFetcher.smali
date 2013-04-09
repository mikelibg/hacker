.class public abstract Lcom/revmob/ads/internal/AdWithImageFetcher;
.super Lcom/revmob/ads/internal/AdFetcher;
.source "AdWithImageFetcher.java"


# instance fields
.field protected donwloadImageFetcher:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "appId"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static downloadImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "url"

    .prologue
    .line 45
    new-instance v0, Lcom/revmob/ads/internal/HTTPHelper;

    invoke-direct {v0}, Lcom/revmob/ads/internal/HTTPHelper;-><init>()V

    .line 46
    .local v0, helper:Lcom/revmob/ads/internal/HTTPHelper;
    invoke-virtual {v0, p0}, Lcom/revmob/ads/internal/HTTPHelper;->getAndReturnTheStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 47
    .local v1, stream:Ljava/io/InputStream;
    const-string v2, "src"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected getClickUrl(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1
    .parameter "links"

    .prologue
    .line 37
    const-string v0, "clicks"

    invoke-virtual {p0, p1, v0}, Lcom/revmob/ads/internal/AdWithImageFetcher;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageUrl(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1
    .parameter "links"

    .prologue
    .line 41
    const-string v0, "image"

    invoke-virtual {p0, p1, v0}, Lcom/revmob/ads/internal/AdWithImageFetcher;->getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLinkByRel(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "links"
    .parameter "rel"

    .prologue
    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "rel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, relValue:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "href"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 33
    .end local v2           #relValue:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 22
    .restart local v2       #relValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v2           #relValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "RevMob"

    const-string v4, "Malformed JSON."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
