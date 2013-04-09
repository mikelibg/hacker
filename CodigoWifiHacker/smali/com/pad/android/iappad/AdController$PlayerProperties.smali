.class public Lcom/pad/android/iappad/AdController$PlayerProperties;
.super Lcom/pad/android/iappad/AdController$ReflectedParcelable;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pad/android/iappad/AdController$PlayerProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioMuted:Z

.field public autoPlay:Z

.field public doLoop:Z

.field public inline:Z

.field public showControl:Z

.field public startStyle:Ljava/lang/String;

.field public stopStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2442
    new-instance v0, Lcom/pad/android/iappad/AdController$PlayerProperties$1;

    invoke-direct {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties$1;-><init>()V

    sput-object v0, Lcom/pad/android/iappad/AdController$PlayerProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2428
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2432
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$ReflectedParcelable;-><init>()V

    .line 2433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->showControl:Z

    iput-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->autoPlay:Z

    .line 2434
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->audioMuted:Z

    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->doLoop:Z

    .line 2435
    const-string v0, "normal"

    iput-object v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->stopStyle:Ljava/lang/String;

    iput-object v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 2436
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->inline:Z

    .line 2437
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 2453
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/AdController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 2454
    return-void
.end method


# virtual methods
.method public doLoop()Z
    .locals 1

    .prologue
    .line 2508
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->doLoop:Z

    return v0
.end method

.method public doMute()Z
    .locals 1

    .prologue
    .line 2515
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->audioMuted:Z

    return v0
.end method

.method public exitOnComplete()Z
    .locals 2

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->stopStyle:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .prologue
    .line 2493
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->autoPlay:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->startStyle:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public muteAudio()V
    .locals 1

    .prologue
    .line 2485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->audioMuted:Z

    .line 2486
    return-void
.end method

.method public setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "audioMuted"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "inline"
    .parameter "loop"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 2471
    iput-boolean p2, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->autoPlay:Z

    .line 2472
    iput-boolean p3, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->showControl:Z

    .line 2473
    iput-boolean p5, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->doLoop:Z

    .line 2474
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->audioMuted:Z

    .line 2475
    iput-object p6, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->startStyle:Ljava/lang/String;

    .line 2476
    iput-object p7, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->stopStyle:Ljava/lang/String;

    .line 2477
    iput-boolean p4, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->inline:Z

    .line 2479
    return-void
.end method

.method public setStopStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->stopStyle:Ljava/lang/String;

    .line 2462
    return-void
.end method

.method public showControl()Z
    .locals 1

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController$PlayerProperties;->showControl:Z

    return v0
.end method
