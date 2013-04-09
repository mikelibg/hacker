.class Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;
.super Lcom/chartboost/sdk/ChartBoostDelegate;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wifi/hacker/cracker/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyChartboostDelegate"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsLetangInterstitial:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1740
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartBoostDelegate;-><init>()V

    .line 1737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    .line 1741
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    .line 1742
    iput-boolean p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    .line 1743
    return-void
.end method


# virtual methods
.method public didClickInterstitial(Landroid/view/View;)V
    .locals 1
    .parameter "interstitialView"

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1780
    :cond_0
    return-void
.end method

.method public didClickMoreApps(Landroid/view/View;)V
    .locals 1
    .parameter "moreAppsView"

    .prologue
    .line 1816
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1817
    :cond_0
    return-void
.end method

.method public didCloseInterstitial(Landroid/view/View;)V
    .locals 1
    .parameter "interstitialView"

    .prologue
    .line 1774
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1775
    :cond_0
    return-void
.end method

.method public didCloseMoreApps(Landroid/view/View;)V
    .locals 1
    .parameter "moreAppsView"

    .prologue
    .line 1811
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1812
    :cond_0
    return-void
.end method

.method public didDismissInterstitial(Landroid/view/View;)V
    .locals 1
    .parameter "interstitialView"

    .prologue
    .line 1769
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1770
    :cond_0
    return-void
.end method

.method public didDismissMoreApps(Landroid/view/View;)V
    .locals 1
    .parameter "moreAppsView"

    .prologue
    .line 1806
    iget-boolean v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1807
    :cond_0
    return-void
.end method

.method public didFailToLoadInterstitial()V
    .locals 2

    .prologue
    .line 1761
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1763
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->access$1000(Landroid/app/Activity;Z)V

    .line 1765
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 2

    .prologue
    .line 1799
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1800
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mIsLetangInterstitial:Z

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultMoreApps(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->access$1100(Landroid/app/Activity;Z)V

    .line 1802
    return-void
.end method

.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 1
    .parameter "interstitialView"

    .prologue
    .line 1754
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1756
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 1785
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Landroid/view/View;)Z
    .locals 1
    .parameter "moreAppsView"

    .prologue
    .line 1794
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1795
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->showLoader(Landroid/app/Activity;)V

    .line 1749
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MyChartboostDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->showLoader(Landroid/app/Activity;)V

    .line 1790
    const/4 v0, 0x1

    return v0
.end method
