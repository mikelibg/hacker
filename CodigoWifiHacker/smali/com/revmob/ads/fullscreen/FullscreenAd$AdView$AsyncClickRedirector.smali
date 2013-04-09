.class Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;
.super Landroid/os/AsyncTask;
.source "FullscreenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncClickRedirector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;


# direct methods
.method private constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;Lcom/revmob/ads/fullscreen/FullscreenAd$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 198
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdClicked()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->click()V

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 198
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->cleanLoadedFullscreen(Lcom/revmob/ads/fullscreen/FullscreenAd;)V

    .line 214
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 215
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    #calls: Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addProgressBar()V
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->access$400(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V

    .line 210
    return-void
.end method
