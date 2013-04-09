.class Lcom/pad/android/richmedia/view/AdView$AdChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdChromeClient"
.end annotation


# instance fields
.field COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field private mContentView:Landroid/widget/RelativeLayout;

.field private mCtx:Landroid/content/Context;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mVideoView:Landroid/widget/VideoView;

.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "ctx"

    .prologue
    const/4 v2, -0x2

    .line 1070
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 1069
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 1063
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1065
    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    .line 1071
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCtx:Landroid/content/Context;

    .line 1072
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1107
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 1108
    .local v0, bar:Landroid/widget/ProgressBar;
    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 1132
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1133
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1134
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->onHideCustomView()V

    .line 1135
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1136
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .parameter "consoleMessage"

    .prologue
    .line 1077
    const-string v0, "LBAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Console Message - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Line Number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1140
    const/4 v0, 0x1

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1113
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    .line 1124
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1127
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mContentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 1145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 1165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1084
    const-string v0, "AdView"

    const-string v1, "onShowCustomView called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1087
    const-string v0, "AdView"

    const-string v1, "view is FrameLayout instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 1089
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1090
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v0, v0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mContentView:Landroid/widget/RelativeLayout;

    .line 1091
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1093
    const-string v0, "AdView"

    const-string v1, "VideoView instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    .line 1095
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mContentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1098
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1099
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1100
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1103
    :cond_0
    return-void
.end method
