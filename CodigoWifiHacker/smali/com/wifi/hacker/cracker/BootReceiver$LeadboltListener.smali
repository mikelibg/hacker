.class public Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Lcom/pad/android/listener/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wifi/hacker/cracker/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeadboltListener"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsLetangInterstitial:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 2104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2105
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mActivity:Landroid/app/Activity;

    .line 2106
    iput-boolean p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mIsLetangInterstitial:Z

    .line 2107
    return-void
.end method


# virtual methods
.method public onAdAlreadyCompleted()V
    .locals 0

    .prologue
    .line 2113
    return-void
.end method

.method public onAdClicked()V
    .locals 0

    .prologue
    .line 2128
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 2134
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2136
    :cond_0
    return-void
.end method

.method public onAdCompleted()V
    .locals 0

    .prologue
    .line 2142
    return-void
.end method

.method public onAdFailed()V
    .locals 2

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mIsLetangInterstitial:Z

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->access$1000(Landroid/app/Activity;Z)V

    .line 2151
    return-void
.end method

.method public onAdHidden()V
    .locals 1

    .prologue
    .line 2157
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$LeadboltListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2159
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 2165
    return-void
.end method

.method public onAdPaused()V
    .locals 0

    .prologue
    .line 2171
    return-void
.end method

.method public onAdProgress()V
    .locals 0

    .prologue
    .line 2177
    return-void
.end method

.method public onAdResumed()V
    .locals 0

    .prologue
    .line 2183
    return-void
.end method
