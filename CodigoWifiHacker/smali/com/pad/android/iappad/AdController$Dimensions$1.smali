.class Lcom/pad/android/iappad/AdController$Dimensions$1;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController$Dimensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pad/android/iappad/AdController$Dimensions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pad/android/iappad/AdController$Dimensions;
    .locals 1
    .parameter "in"

    .prologue
    .line 2558
    new-instance v0, Lcom/pad/android/iappad/AdController$Dimensions;

    invoke-direct {v0, p1}, Lcom/pad/android/iappad/AdController$Dimensions;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdController$Dimensions$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pad/android/iappad/AdController$Dimensions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pad/android/iappad/AdController$Dimensions;
    .locals 1
    .parameter "size"

    .prologue
    .line 2562
    new-array v0, p1, [Lcom/pad/android/iappad/AdController$Dimensions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pad/android/iappad/AdController$Dimensions$1;->newArray(I)[Lcom/pad/android/iappad/AdController$Dimensions;

    move-result-object v0

    return-object v0
.end method
