.class public Lcom/pad/android/iappad/AdController$Dimensions;
.super Lcom/pad/android/iappad/AdController$ReflectedParcelable;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pad/android/iappad/AdController$Dimensions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2556
    new-instance v0, Lcom/pad/android/iappad/AdController$Dimensions$1;

    invoke-direct {v0}, Lcom/pad/android/iappad/AdController$Dimensions$1;-><init>()V

    sput-object v0, Lcom/pad/android/iappad/AdController$Dimensions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2541
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2546
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$ReflectedParcelable;-><init>()V

    .line 2547
    iput v0, p0, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    .line 2548
    iput v0, p0, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    .line 2549
    iput v0, p0, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    .line 2550
    iput v0, p0, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    .line 2551
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 2572
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/AdController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 2573
    return-void
.end method
