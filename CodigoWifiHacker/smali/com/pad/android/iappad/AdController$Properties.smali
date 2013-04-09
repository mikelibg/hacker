.class public Lcom/pad/android/iappad/AdController$Properties;
.super Lcom/pad/android/iappad/AdController$ReflectedParcelable;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pad/android/iappad/AdController$Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:I

.field public backgroundOpacity:F

.field public useBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2609
    new-instance v0, Lcom/pad/android/iappad/AdController$Properties$1;

    invoke-direct {v0}, Lcom/pad/android/iappad/AdController$Properties$1;-><init>()V

    sput-object v0, Lcom/pad/android/iappad/AdController$Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2586
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2600
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$ReflectedParcelable;-><init>()V

    .line 2601
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdController$Properties;->useBackground:Z

    .line 2602
    iput v0, p0, Lcom/pad/android/iappad/AdController$Properties;->backgroundColor:I

    .line 2603
    const/4 v0, 0x0

    iput v0, p0, Lcom/pad/android/iappad/AdController$Properties;->backgroundOpacity:F

    .line 2604
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 2594
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/AdController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 2595
    return-void
.end method
