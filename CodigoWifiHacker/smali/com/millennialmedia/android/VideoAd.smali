.class Lcom/millennialmedia/android/VideoAd;
.super Lcom/millennialmedia/android/BasicCachedAd;
.source "VideoAd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field cacheComplete:[Ljava/lang/String;

.field cacheFailed:[Ljava/lang/String;

.field contentLength:J

.field duration:J

.field endActivity:[Ljava/lang/String;

.field onCompletionUrl:Ljava/lang/String;

.field showControls:Z

.field showCountdown:Z

.field startActivity:[Ljava/lang/String;

.field stayInPlayer:Z

.field storedOnSdCard:Z

.field videoError:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/millennialmedia/android/VideoAd$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoAd$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/millennialmedia/android/BasicCachedAd;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/millennialmedia/android/BasicCachedAd;-><init>()V

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, len:I
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 70
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 74
    const/4 v5, 0x4

    new-array v4, v5, [Z

    .line 75
    .local v4, yo:[Z
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 76
    const/4 v5, 0x0

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 77
    const/4 v5, 0x1

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 78
    const/4 v5, 0x2

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 79
    const/4 v5, 0x3

    aget-boolean v5, v4, v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, exp:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .local v2, format:Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    .line 90
    const-class v5, Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 91
    const-class v5, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 95
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 98
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 101
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 104
    .end local v1           #exp:Ljava/lang/String;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    .end local v3           #len:I
    .end local v4           #yo:[Z
    :goto_1
    return-void

    .line 84
    .restart local v1       #exp:Ljava/lang/String;
    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    .restart local v3       #len:I
    .restart local v4       #yo:[Z
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/text/ParseException;
    .end local v1           #exp:Ljava/lang/String;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    .end local v3           #len:I
    .end local v4           #yo:[Z
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "jsonString"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/millennialmedia/android/BasicCachedAd;-><init>()V

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 125
    if-eqz p1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 132
    .local v1, jsonAdObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #jsonAdObject:Lorg/json/JSONObject;
    .local v2, jsonAdObject:Lorg/json/JSONObject;
    move-object v1, v2

    .line 136
    .end local v2           #jsonAdObject:Lorg/json/JSONObject;
    .restart local v1       #jsonAdObject:Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, videoObject:Lorg/json/JSONObject;
    const-string v4, "video"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_0

    .line 141
    invoke-direct {p0, v3}, Lcom/millennialmedia/android/VideoAd;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 144
    .end local v1           #jsonAdObject:Lorg/json/JSONObject;
    .end local v3           #videoObject:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 134
    .restart local v1       #jsonAdObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "videoObject"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 155
    const-string v8, "id"

    invoke-virtual {p1, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    .line 156
    const-string v8, "vid"

    invoke-virtual {p1, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    .line 157
    const-string v8, "content-url"

    invoke-virtual {p1, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    .line 158
    const-string v8, "startActivity"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 159
    .local v4, jsonArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 162
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 163
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v3           #i:I
    :cond_0
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 169
    :cond_1
    const-string v8, "endActivity"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 170
    if-eqz v4, :cond_2

    .line 172
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 173
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 174
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    .end local v3           #i:I
    :cond_2
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 180
    :cond_3
    const-string v8, "cacheComplete"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_4

    .line 183
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 184
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 185
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    .end local v3           #i:I
    :cond_4
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 191
    :cond_5
    const-string v8, "cacheFailed"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 192
    if-eqz v4, :cond_6

    .line 194
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 195
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 196
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 200
    .end local v3           #i:I
    :cond_6
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 202
    :cond_7
    const-string v8, "videoError"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 203
    if-eqz v4, :cond_8

    .line 205
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 206
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_9

    .line 207
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 211
    .end local v3           #i:I
    :cond_8
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 213
    :cond_9
    const-string v8, "showVideoPlayerControls"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 214
    const-string v8, "showCountdownHUD"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 215
    const-string v8, "expiration"

    invoke-virtual {p1, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, exp:Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 218
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss ZZZZ"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :cond_a
    :goto_5
    const-string v8, "onCompletion"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 226
    .local v5, jsonObject:Lorg/json/JSONObject;
    if-eqz v5, :cond_b

    .line 228
    const-string v8, "url"

    invoke-virtual {v5, v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 229
    const-string v8, "stayInPlayer"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 231
    :cond_b
    const-string v8, "duration"

    const-wide/16 v9, 0x0

    invoke-virtual {p1, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 232
    const-string v8, "contentLength"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    .line 233
    const-string v8, "buttons"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 234
    if-eqz v4, :cond_d

    .line 236
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_d

    .line 238
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 239
    if-eqz v5, :cond_c

    .line 241
    new-instance v6, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v6, v5}, Lcom/millennialmedia/android/VideoImage;-><init>(Lorg/json/JSONObject;)V

    .line 242
    .local v6, vb:Lcom/millennialmedia/android/VideoImage;
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v6           #vb:Lcom/millennialmedia/android/VideoImage;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 221
    .end local v3           #i:I
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #format:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_5

    .line 246
    .end local v0           #e:Ljava/text/ParseException;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :cond_d
    const-string v8, "log"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 247
    if-eqz v4, :cond_f

    .line 249
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    .line 251
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 252
    if-eqz v5, :cond_e

    .line 254
    new-instance v7, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-direct {v7, v5}, Lcom/millennialmedia/android/VideoLogEvent;-><init>(Lorg/json/JSONObject;)V

    .line 255
    .local v7, videoLogEvent:Lcom/millennialmedia/android/VideoLogEvent;
    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v7           #videoLogEvent:Lcom/millennialmedia/android/VideoLogEvent;
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 261
    .end local v3           #i:I
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    .line 262
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method download(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, success:Z
    invoke-static {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->initCachedAdDirectory(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 269
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downloading content to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 272
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    const-string v8, "video.dat"

    invoke-static {v7, v8, v4}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    .line 273
    if-eqz v6, :cond_0

    .line 276
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 278
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 279
    .local v0, button:Lcom/millennialmedia/android/VideoImage;
    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    .line 280
    if-nez v6, :cond_1

    .line 285
    .end local v0           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v5           #i:I
    :cond_0
    if-nez v6, :cond_2

    .line 287
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-static {v7}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 317
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caching completed successfully? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 318
    return v6

    .line 276
    .restart local v0       #button:Lcom/millennialmedia/android/VideoImage;
    .restart local v5       #i:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 292
    .end local v0           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v5           #i:I
    :cond_2
    const/4 v1, 0x0

    .line 295
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/millennialmedia/android/AdDatabaseHelper;->checkIfAdExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 298
    const-string v7, "Updating ad in db."

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdData(Lcom/millennialmedia/android/VideoAd;)V

    .line 306
    :goto_2
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 307
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :cond_3
    if-eqz v2, :cond_7

    .line 312
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .line 314
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-static {v7}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    goto :goto_1

    .line 303
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_5
    :try_start_2
    const-string v7, "Storing ad in db."

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/AdDatabaseHelper;->storeAd(Lcom/millennialmedia/android/VideoAd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 308
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    if-eqz v1, :cond_4

    .line 312
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_3

    .line 311
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v1, :cond_6

    .line 312
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_6
    throw v7

    .line 311
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_5

    .line 308
    :catch_1
    move-exception v3

    goto :goto_4

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_7
    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3
.end method

.method isExpired()Z
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOnDisk(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const-wide/16 v11, 0x0

    .line 323
    const/4 v2, 0x0

    .line 326
    .local v2, existsInFilesystem:Z
    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 327
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mmsyscache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, adDir:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, list:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-lt v7, v8, :cond_0

    .line 336
    const/4 v2, 0x1

    .line 339
    .end local v5           #list:[Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_2

    .line 342
    iget-wide v7, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_4

    .line 344
    new-instance v6, Ljava/io/File;

    const-string v7, "video.dat"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v6, videoFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 347
    :cond_1
    const/4 v2, 0x0

    .line 368
    .end local v6           #videoFile:Ljava/io/File;
    :cond_2
    :goto_1
    return v2

    .line 329
    .end local v0           #adDir:Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #adDir:Ljava/io/File;
    goto :goto_0

    .line 352
    :cond_4
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 354
    .local v1, button:Lcom/millennialmedia/android/VideoImage;
    iget-wide v7, v1, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_5

    .line 356
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v4, imageFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    .line 359
    :cond_6
    const/4 v2, 0x0

    .line 360
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 404
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->expiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 408
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 409
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 410
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 411
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 412
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 418
    return-void
.end method
