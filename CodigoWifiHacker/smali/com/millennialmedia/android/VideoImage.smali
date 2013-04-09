.class Lcom/millennialmedia/android/VideoImage;
.super Ljava/lang/Object;
.source "VideoImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activity:[Ljava/lang/String;

.field anchor:I

.field anchor2:I

.field appearanceDelay:J

.field button:Landroid/widget/ImageButton;

.field contentLength:J

.field fadeDuration:J

.field fromAlpha:F

.field imageUrl:Ljava/lang/String;

.field inactivityTimeout:J

.field layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field linkUrl:Ljava/lang/String;

.field name:Ljava/lang/String;

.field overlayOrientation:Ljava/lang/String;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field position:I

.field position2:I

.field toAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/millennialmedia/android/VideoImage$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 32
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 33
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 34
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 44
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 46
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 32
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 33
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 34
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 44
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 46
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 48
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .local v1, len:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1           #len:I
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "imageObject"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 32
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 33
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 34
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 44
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 46
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 71
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoImage;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 72
    return-void
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "imageObject"

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    const-wide/high16 v5, 0x3ff0

    .line 113
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v3, "image"

    invoke-virtual {p1, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 117
    const-string v3, "contentLength"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 118
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 119
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0           #i:I
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 129
    :cond_3
    const-string v3, "url"

    invoke-virtual {p1, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 130
    const-string v3, "overlayOrientation"

    invoke-virtual {p1, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 131
    const-string v3, "android-layout"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 132
    const-string v3, "android-layoutAnchor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 133
    const-string v3, "android-layout2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 134
    const-string v3, "android-layoutAnchor2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 135
    const-string v3, "android-paddingTop"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 136
    const-string v3, "android-paddingLeft"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 137
    const-string v3, "android-paddingRight"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 138
    const-string v3, "android-paddingBottom"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 139
    const-string v3, "appearanceDelay"

    invoke-virtual {p1, v3, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 140
    const-string v3, "inactivityTimeout"

    invoke-virtual {p1, v3, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 141
    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 142
    .local v2, opacityObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 144
    const-string v3, "start"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 145
    const-string v3, "end"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 146
    const-string v3, "fadeDuration"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method getImageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.[^\\.]*$"

    const-string v2, ".dat"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    return-void
.end method
