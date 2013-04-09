.class Lcom/revmob/RevMob$1;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Lcom/revmob/ads/RevMobAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->showFullscreenAd(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/RevMob;

.field final synthetic val$fullscreen:Lcom/revmob/ads/fullscreen/Fullscreen;


# direct methods
.method constructor <init>(Lcom/revmob/RevMob;Lcom/revmob/ads/fullscreen/Fullscreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/revmob/RevMob$1;->this$0:Lcom/revmob/RevMob;

    iput-object p2, p0, Lcom/revmob/RevMob$1;->val$fullscreen:Lcom/revmob/ads/fullscreen/Fullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobAdClicked()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onRevMobAdDismiss()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "RevMob"

    const-string v1, "Ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 140
    const-string v0, "RevMob"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public onRevMobAdReceived()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/revmob/RevMob$1;->val$fullscreen:Lcom/revmob/ads/fullscreen/Fullscreen;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->show()V

    .line 136
    return-void
.end method
