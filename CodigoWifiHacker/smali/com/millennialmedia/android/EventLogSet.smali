.class Lcom/millennialmedia/android/EventLogSet;
.super Lcom/millennialmedia/android/MetaData;
.source "EventLogSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/EventLogSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field endActivity:[Ljava/lang/String;

.field startActivity:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/millennialmedia/android/EventLogSet$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/EventLogSet$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/EventLogSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/millennialmedia/android/MetaData;-><init>()V

    .line 22
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/millennialmedia/android/MetaData;-><init>()V

    .line 30
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 33
    .local v0, len:I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 39
    .end local v0           #len:I
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/android/VideoAd;)V
    .locals 1
    .parameter "videoAd"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/millennialmedia/android/MetaData;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p1, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 71
    return-void
.end method
