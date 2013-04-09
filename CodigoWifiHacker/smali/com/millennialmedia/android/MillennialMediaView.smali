.class public Lcom/millennialmedia/android/MillennialMediaView;
.super Landroid/view/SurfaceView;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->TAG:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 76
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 79
    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 80
    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 275
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$1;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 286
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$2;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 353
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$3;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 363
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$4;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 377
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$5;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 434
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$6;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 476
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$7;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 99
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->initVideoView()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MillennialMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->initVideoView()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->TAG:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 76
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 79
    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 80
    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 275
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$1;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 286
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$2;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 353
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$3;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 363
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$4;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 377
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$5;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 434
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$6;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 476
    new-instance v0, Lcom/millennialmedia/android/MillennialMediaView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MillennialMediaView$7;-><init>(Lcom/millennialmedia/android/MillennialMediaView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 111
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->initVideoView()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/millennialmedia/android/MillennialMediaView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/millennialmedia/android/MillennialMediaView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MillennialMediaView;->release(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$202(Lcom/millennialmedia/android/MillennialMediaView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/millennialmedia/android/MillennialMediaView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/millennialmedia/android/MillennialMediaView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/millennialmedia/android/MillennialMediaView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/MillennialMediaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 266
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 268
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 270
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 271
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 273
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 268
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    .line 168
    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    .line 169
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 170
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 171
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MillennialMediaView;->setFocusable(Z)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MillennialMediaView;->setFocusableInTouchMode(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 175
    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 176
    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 177
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 690
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 532
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 534
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 535
    if-eqz p1, :cond_0

    .line 536
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 539
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 684
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentBufferPercentage:I

    .line 686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    if-lez v0, :cond_0

    .line 652
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    .line 658
    :goto_0
    return v0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    .line 655
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    goto :goto_0

    .line 657
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    .line 658
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    goto :goto_0
.end method

.method public isInErrorState()Z
    .locals 2

    .prologue
    .line 709
    iget v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 560
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 566
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 567
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->pause()V

    .line 571
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 586
    :goto_1
    return v1

    .line 560
    .end local v0           #isKeyCodeSupported:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 573
    .restart local v0       #isKeyCodeSupported:Z
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 574
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 577
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 579
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->pause()V

    .line 580
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 586
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 582
    :cond_5
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 118
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/millennialmedia/android/MillennialMediaView;->getDefaultSize(II)I

    move-result v1

    .line 119
    .local v1, width:I
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/millennialmedia/android/MillennialMediaView;->getDefaultSize(II)I

    move-result v0

    .line 120
    .local v0, height:I
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 121
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 123
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/android/MillennialMediaView;->setMeasuredDimension(II)V

    .line 135
    return-void

    .line 124
    :cond_1
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 126
    iget v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->toggleMediaControlsVisiblity()V

    .line 546
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->toggleMediaControlsVisiblity()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 211
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    invoke-direct {p0, v6}, Lcom/millennialmedia/android/MillennialMediaView;->release(Z)V

    .line 225
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 226
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 227
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 228
    const/4 v2, -0x1

    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mDuration:I

    .line 229
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 230
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 231
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 232
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentBufferPercentage:I

    .line 233
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 234
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 235
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 236
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 237
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 240
    const/4 v2, 0x1

    iput v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 241
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iput v5, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 245
    iput v5, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 246
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 248
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    iput v5, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 251
    iput v5, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 252
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 606
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 609
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 612
    :cond_0
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 613
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 138
    move v0, p1

    .line 139
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 140
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 142
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 163
    :goto_0
    return v0

    .line 147
    :sswitch_0
    move v0, p1

    .line 148
    goto :goto_0

    .line 155
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 156
    goto :goto_0

    .line 160
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    iput p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;

    .line 262
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->attachMediaController()V

    .line 263
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 461
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 474
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 450
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 180
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 181
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mUri:Landroid/net/Uri;

    .line 192
    iput-object p2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mHeaders:Ljava/util/Map;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I

    .line 194
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->openVideo()V

    .line 195
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->requestLayout()V

    .line 196
    invoke-virtual {p0}, Lcom/millennialmedia/android/MillennialMediaView;->invalidate()V

    .line 197
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 598
    invoke-direct {p0}, Lcom/millennialmedia/android/MillennialMediaView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 600
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 602
    :cond_0
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 603
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 202
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 203
    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mUri:Landroid/net/Uri;

    .line 204
    iput-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 205
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I

    .line 206
    iput v1, p0, Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I

    .line 208
    :cond_0
    return-void
.end method
