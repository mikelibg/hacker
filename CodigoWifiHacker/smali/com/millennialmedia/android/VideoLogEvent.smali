.class Lcom/millennialmedia/android/VideoLogEvent;
.super Ljava/lang/Object;
.source "VideoLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activities:[Ljava/lang/String;

.field position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/millennialmedia/android/VideoLogEvent$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoLogEvent$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 44
    .local v1, len:I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #len:I
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "logObject"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoLogEvent;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "logObject"

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v2, "time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    .line 62
    const-string v2, "urls"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 63
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 93
    return-void
.end method
