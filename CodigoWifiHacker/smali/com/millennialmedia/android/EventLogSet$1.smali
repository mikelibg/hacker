.class final Lcom/millennialmedia/android/EventLogSet$1;
.super Ljava/lang/Object;
.source "EventLogSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/EventLogSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/android/EventLogSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/EventLogSet;
    .locals 1
    .parameter "in"

    .prologue
    .line 76
    new-instance v0, Lcom/millennialmedia/android/EventLogSet;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/EventLogSet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/EventLogSet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/EventLogSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/millennialmedia/android/EventLogSet;
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Lcom/millennialmedia/android/EventLogSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/EventLogSet$1;->newArray(I)[Lcom/millennialmedia/android/EventLogSet;

    move-result-object v0

    return-object v0
.end method
