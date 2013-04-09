.class public abstract Lcom/chartboost/sdk/ChartBoostDelegate;
.super Ljava/lang/Object;
.source "ChartBoostDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickInterstitial(Landroid/view/View;)V
    .locals 0
    .parameter "interstitialView"

    .prologue
    .line 73
    return-void
.end method

.method public didClickMoreApps(Landroid/view/View;)V
    .locals 0
    .parameter "moreAppsView"

    .prologue
    .line 149
    return-void
.end method

.method public didCloseInterstitial(Landroid/view/View;)V
    .locals 0
    .parameter "interstitialView"

    .prologue
    .line 63
    return-void
.end method

.method public didCloseMoreApps(Landroid/view/View;)V
    .locals 0
    .parameter "moreAppsView"

    .prologue
    .line 139
    return-void
.end method

.method public didDismissInterstitial(Landroid/view/View;)V
    .locals 0
    .parameter "interstitialView"

    .prologue
    .line 53
    return-void
.end method

.method public didDismissMoreApps(Landroid/view/View;)V
    .locals 0
    .parameter "moreAppsView"

    .prologue
    .line 129
    return-void
.end method

.method public didFailToLoadInterstitial()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 1
    .parameter "interstitialView"

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Landroid/view/View;)Z
    .locals 1
    .parameter "moreAppsView"

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method
