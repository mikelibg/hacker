.class abstract Lcom/airpush/android/SDKIntializer;
.super Ljava/lang/Object;
.source "SDKIntializer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract parseAppWallJson(Ljava/lang/String;)V
.end method

.method abstract parseDialogAdJson(Ljava/lang/String;)V
.end method

.method abstract parseLandingPageAdJson(Ljava/lang/String;)V
.end method

.method public abstract startAppWall()V
.end method

.method public abstract startDialogAd()V
.end method

.method public abstract startIconAd()V
.end method

.method public abstract startLandingPageAd()V
.end method

.method public abstract startPushNotification(Z)V
.end method

.method public abstract startSmartWallAd()V
.end method
