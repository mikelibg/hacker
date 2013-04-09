.class Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;
.super Ljava/lang/Object;
.source "MillennialInterstitialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MillennialInterstitialAdapter;->MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MillennialInterstitialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    #getter for: Lcom/mopub/mobileads/MillennialInterstitialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;
    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->access$100(Lcom/mopub/mobileads/MillennialInterstitialAdapter;)Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->check()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial caching completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    iget-object v1, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial caching failed. Trying another."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    iget-object v1, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$6;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialFailed(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto :goto_0
.end method
