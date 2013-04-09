.class public Lcom/pad/android/util/AdPlayer;
.super Landroid/widget/VideoView;
.source "AdPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static transientText:Ljava/lang/String;


# instance fields
.field private aManager:Landroid/media/AudioManager;

.field private contentURL:Ljava/lang/String;

.field private isReleased:Z

.field private listener:Lcom/pad/android/util/AdPlayerListener;

.field private mutedVolume:I

.field private playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

.field private transientLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/pad/android/util/AdPlayer;->transientText:Ljava/lang/String;

    .line 38
    const-string v0, "AdOrmma Player"

    sput-object v0, Lcom/pad/android/util/AdPlayer;->LOG_TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pad/android/util/AdPlayer;->aManager:Landroid/media/AudioManager;

    .line 48
    sget-object v0, Lcom/pad/android/util/AdPlayer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Initialized!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method


# virtual methods
.method addTransientMessage()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 207
    iget-object v3, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    iget-boolean v3, v3, Lcom/pad/android/iappad/AdController$PlayerProperties;->inline:Z

    if-eqz v3, :cond_0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pad/android/util/AdPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    .line 211
    iget-object v3, p0, Lcom/pad/android/util/AdPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v2, transientView:Landroid/widget/TextView;
    sget-object v3, Lcom/pad/android/util/AdPlayer;->transientText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v0, msgparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    iget-object v3, p0, Lcom/pad/android/util/AdPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 223
    .local v1, parent:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/pad/android/util/AdPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method clearTransientMessage()V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/pad/android/util/AdPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/pad/android/util/AdPlayer;->transientLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method displayControl()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-virtual {v1}, Lcom/pad/android/iappad/AdController$PlayerProperties;->showControl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, ctrl:Landroid/widget/MediaController;
    invoke-virtual {p0, v0}, Lcom/pad/android/util/AdPlayer;->setMediaController(Landroid/widget/MediaController;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 82
    .end local v0           #ctrl:Landroid/widget/MediaController;
    :cond_0
    return-void
.end method

.method loadContent()V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/pad/android/util/AdPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content URL - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/pad/android/util/AdUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->removeView()V

    .line 96
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    invoke-interface {v0}, Lcom/pad/android/util/AdPlayerListener;->onError()V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pad/android/util/AdPlayer;->setVideoURI(Landroid/net/Uri;)V

    .line 101
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->displayControl()V

    .line 102
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->startContent()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->start()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController$PlayerProperties;->inline:Z

    if-eqz v0, :cond_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->releasePlayer()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 161
    sget-object v0, Lcom/pad/android/util/AdPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Player error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->clearTransientMessage()V

    .line 163
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->removeView()V

    .line 164
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    invoke-interface {v0}, Lcom/pad/android/util/AdPlayerListener;->onError()V

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->clearTransientMessage()V

    .line 171
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    invoke-interface {v0}, Lcom/pad/android/util/AdPlayerListener;->onPrepared()V

    .line 173
    :cond_0
    return-void
.end method

.method public playAudio()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->loadContent()V

    .line 69
    return-void
.end method

.method public playVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 128
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->aManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/pad/android/util/AdPlayer;->mutedVolume:I

    .line 130
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->aManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->loadContent()V

    .line 134
    return-void
.end method

.method public releasePlayer()V
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/pad/android/util/AdPlayer;->isReleased:Z

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/util/AdPlayer;->isReleased:Z

    .line 194
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->stopPlayback()V

    .line 195
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->removeView()V

    .line 196
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->unMute()V

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    invoke-interface {v0}, Lcom/pad/android/util/AdPlayerListener;->onComplete()V

    goto :goto_0
.end method

.method removeView()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setListener(Lcom/pad/android/util/AdPlayerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/pad/android/util/AdPlayer;->listener:Lcom/pad/android/util/AdPlayerListener;

    .line 149
    return-void
.end method

.method public setPlayData(Lcom/pad/android/iappad/AdController$PlayerProperties;Ljava/lang/String;)V
    .locals 3
    .parameter "properties"
    .parameter "url"

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pad/android/util/AdPlayer;->isReleased:Z

    .line 58
    iput-object p1, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    .line 59
    iput-object p2, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/pad/android/util/AdPlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting data - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/util/AdPlayer;->contentURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method startContent()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p0}, Lcom/pad/android/util/AdPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/pad/android/util/AdPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 112
    invoke-virtual {p0, p0}, Lcom/pad/android/util/AdPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 114
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    iget-boolean v0, v0, Lcom/pad/android/iappad/AdController$PlayerProperties;->inline:Z

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->addTransientMessage()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->playProperties:Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/pad/android/util/AdPlayer;->start()V

    .line 120
    :cond_1
    return-void
.end method

.method unMute()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pad/android/util/AdPlayer;->aManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/pad/android/util/AdPlayer;->mutedVolume:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    return-void
.end method
