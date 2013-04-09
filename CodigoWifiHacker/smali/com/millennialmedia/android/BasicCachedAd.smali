.class abstract Lcom/millennialmedia/android/BasicCachedAd;
.super Ljava/lang/Object;
.source "BasicCachedAd.java"


# instance fields
.field acid:Ljava/lang/String;

.field contentUrl:Ljava/lang/String;

.field deferredViewStart:J

.field downloaded:Z

.field expiration:Ljava/util/Date;

.field id:Ljava/lang/String;

.field type:I

.field views:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/millennialmedia/android/BasicCachedAd;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static isOnDisk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/millennialmedia/android/BasicCachedAd;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/BasicCachedAd;

    move-result-object v0

    .line 55
    .local v0, ad:Lcom/millennialmedia/android/BasicCachedAd;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BasicCachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/BasicCachedAd;
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method abstract download(Landroid/content/Context;)Z
.end method

.method abstract isExpired()Z
.end method

.method abstract isOnDisk(Landroid/content/Context;)Z
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/android/BasicCachedAd;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BasicCachedAd;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/millennialmedia/android/BasicCachedAd;->contentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BasicCachedAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseJSON(Ljava/lang/String;)V
    .locals 0
    .parameter "JSONString"

    .prologue
    .line 44
    return-void
.end method
