.class public Lcom/millennialmedia/android/VideoPlayer;
.super Landroid/app/Activity;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/VideoPlayer$VideoServer;,
        Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;,
        Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;,
        Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_DELAYED_BUTTON:I = 0x3

.field private static final MESSAGE_EVENTLOG_CHECK:I = 0x2

.field private static final MESSAGE_INACTIVITY_ANIMATION:I = 0x1


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private controlsLayout:Landroid/widget/RelativeLayout;

.field private current:Ljava/lang/String;

.field private currentVideoPosition:I

.field private handler:Landroid/os/Handler;

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private isCachedAd:Z

.field private lastVideoPosition:I

.field private logSet:Lcom/millennialmedia/android/EventLogSet;

.field private mPausePlay:Landroid/widget/Button;

.field private mRewind:Landroid/widget/Button;

.field private mStop:Landroid/widget/Button;

.field private mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

.field private paused:Z

.field private receiver:Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;

.field private relLayout:Landroid/widget/RelativeLayout;

.field private showBottomBar:Z

.field private showCountdownHud:Z

.field private videoAd:Lcom/millennialmedia/android/VideoAd;

.field private videoCompleted:Z

.field private videoCompletedOnce:Z

.field protected videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

.field private waitForUserPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    .line 80
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->showBottomBar:Z

    .line 82
    iput v0, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    .line 84
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    .line 1430
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/VideoPlayer;->dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/VideoAd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayer;->videoPlayerOnCompletion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/millennialmedia/android/VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayer;->waitForUserPresent:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->resumeVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/VideoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/millennialmedia/android/VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/VideoPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayer;->playVideo(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/VideoPlayer;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->dismiss()V

    return-void
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/VideoPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    return v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->hideHud()V

    return-void
.end method

.method private canFadeButtons()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 909
    const-string v0, "Video ad player closed"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->finish()V

    .line 914
    return-void
.end method

.method private dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "urlString"
    .parameter "overlayOrientation"

    .prologue
    .line 1117
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Button Clicked: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1118
    if-eqz p1, :cond_5

    .line 1120
    const-string v17, "mmsdk"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1122
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, action:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1125
    const-string v17, "restartVideo"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 1132
    .local v7, buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1134
    if-eqz v7, :cond_4

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1141
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    .line 1143
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 1145
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "i: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1146
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/millennialmedia/android/VideoImage;

    .line 1149
    .local v6, buttonData:Lcom/millennialmedia/android/VideoImage;
    if-eqz v6, :cond_3

    .line 1151
    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_0

    .line 1153
    iget-object v5, v6, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 1154
    .local v5, button:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1156
    .local v13, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1160
    .end local v5           #button:Landroid/widget/ImageButton;
    .end local v13           #message:Landroid/os/Message;
    :cond_0
    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_1

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1163
    .restart local v13       #message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v18, v0

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    iget-wide v0, v6, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1166
    .end local v13           #message:Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1167
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->showHud(Z)V

    .line 1168
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x3e8

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1143
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1177
    .end local v6           #buttonData:Lcom/millennialmedia/android/VideoImage;
    .end local v7           #buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v10           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1179
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->playVideo(I)V

    .line 1332
    .end local v3           #action:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 1183
    .restart local v3       #action:Ljava/lang/String;
    :cond_6
    const-string v17, "endVideo"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1185
    const-string v17, "End"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1188
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1193
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayer;->dismiss()V

    goto :goto_1

    .line 1200
    :cond_7
    const-string v17, "Unrecognized mmsdk:// URL"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1220
    .end local v3           #action:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    .line 1228
    .local v14, mimeTypeString:Ljava/lang/String;
    :try_start_0
    new-instance v16, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    .line 1229
    .local v16, networkingThread:Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->urlString:Ljava/lang/String;

    .line 1230
    const/16 v17, 0xa

    invoke-virtual/range {v16 .. v17}, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->setPriority(I)V

    .line 1231
    invoke-virtual/range {v16 .. v16}, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->start()V

    .line 1232
    invoke-virtual/range {v16 .. v16}, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->join()V

    .line 1233
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->mimeTypeString:Ljava/lang/String;

    .line 1234
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;->locationString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1237
    .end local v16           #networkingThread:Lcom/millennialmedia/android/VideoPlayer$NetworkingThread;
    .local v12, locationString:Ljava/lang/String;
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "locationString: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1240
    if-eqz v12, :cond_5

    .line 1242
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1250
    .local v8, destinationURI:Landroid/net/Uri;
    if-nez v14, :cond_9

    .line 1251
    const-string v14, ""

    .line 1255
    :cond_9
    :try_start_1
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mmsdk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1257
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v17

    const-string v18, "endVideo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1261
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 1264
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayer;->dismiss()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1327
    :catch_0
    move-exception v9

    .line 1329
    .local v9, e:Landroid/content/ActivityNotFoundException;
    const-string v17, "MillennialMediaSDK"

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1204
    .end local v8           #destinationURI:Landroid/net/Uri;
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    .end local v12           #locationString:Ljava/lang/String;
    .end local v14           #mimeTypeString:Ljava/lang/String;
    :cond_a
    const-string v17, "mmbrowser"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1206
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1207
    .local v4, browserAction:Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1209
    const-string v17, "Launch browser"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1212
    :try_start_2
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1213
    .local v15, myIntent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/millennialmedia/android/VideoPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1215
    .end local v15           #myIntent:Landroid/content/Intent;
    :catch_1
    move-exception v9

    .restart local v9       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 1235
    .end local v4           #browserAction:Ljava/lang/String;
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    .restart local v14       #mimeTypeString:Ljava/lang/String;
    :catch_2
    move-exception v9

    .local v9, e:Ljava/lang/InterruptedException;
    const/4 v14, 0x0

    const/4 v12, 0x0

    .restart local v12       #locationString:Ljava/lang/String;
    goto/16 :goto_2

    .line 1268
    .end local v9           #e:Ljava/lang/InterruptedException;
    .restart local v8       #destinationURI:Landroid/net/Uri;
    :cond_b
    :try_start_3
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "http"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "https"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    const-string v17, "text/html"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1270
    new-instance v11, Landroid/content/Intent;

    const-class v17, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1271
    .local v11, intent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1272
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1273
    const-string v17, "cachedAdView"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1274
    const-string v17, "overlayOrientation"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/millennialmedia/android/VideoPlayer;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1277
    .end local v11           #intent:Landroid/content/Intent;
    :cond_d
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "market"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1279
    const-string v17, "Android Market URL, launch the Market Application"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1280
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1281
    .restart local v15       #myIntent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1282
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/millennialmedia/android/VideoPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1284
    .end local v15           #myIntent:Landroid/content/Intent;
    :cond_e
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "rtsp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "http"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    const-string v17, "video/mp4"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "video/3gpp"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1287
    :cond_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->playVideo(I)V

    goto/16 :goto_1

    .line 1289
    :cond_10
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "tel"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1291
    const-string v17, "Telephone Number, launch the phone"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1292
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.DIAL"

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1293
    .restart local v15       #myIntent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1294
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/millennialmedia/android/VideoPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1296
    .end local v15           #myIntent:Landroid/content/Intent;
    :cond_11
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "http"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1299
    new-instance v11, Landroid/content/Intent;

    const-class v17, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1300
    .restart local v11       #intent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1301
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1302
    const-string v17, "cachedAdView"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    const-string v17, "overlayOrientation"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/millennialmedia/android/VideoPlayer;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1306
    .end local v11           #intent:Landroid/content/Intent;
    :cond_12
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mmbrowser"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1308
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1309
    .restart local v4       #browserAction:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1311
    const-string v17, "Launch browser"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1312
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1313
    .restart local v15       #myIntent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1314
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/millennialmedia/android/VideoPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1320
    .end local v4           #browserAction:Ljava/lang/String;
    .end local v15           #myIntent:Landroid/content/Intent;
    :cond_13
    const-string v17, "Uncertain about content, launch to browser"

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1322
    new-instance v15, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1323
    .restart local v15       #myIntent:Landroid/content/Intent;
    const/high16 v17, 0x2400

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1324
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/millennialmedia/android/VideoPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method private hideHud()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 673
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    :cond_1
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 950
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->pause()V

    .line 955
    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    .line 956
    const-string v0, "Video paused"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    .line 961
    :cond_1
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    if-eqz v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 964
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->stopServer()V

    .line 968
    :cond_2
    return-void
.end method

.method private playVideo(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 687
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 688
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, path:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playVideo path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 690
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 692
    :cond_0
    const-string v5, "Sorry. There was a problem playing the video"

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 693
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_1

    .line 694
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 841
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 699
    .restart local v2       #path:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_2
    const-string v5, "MillennialMediaSettings"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/millennialmedia/android/VideoPlayer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 700
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 701
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "lastAdViewed"

    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    .line 704
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v5, :cond_6

    .line 706
    iget-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    if-eqz v5, :cond_5

    .line 708
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_1

    .line 711
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v5, :cond_4

    .line 713
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/VideoPlayer$6;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/VideoPlayer$6;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 725
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/VideoPlayer$7;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/VideoPlayer$7;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 731
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/VideoPlayer$8;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/VideoPlayer$8;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 738
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 739
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 740
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 741
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 742
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MillennialMediaSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    const-string v5, "MillennialMediaSettings"

    invoke-virtual {p0, v5, v8}, Lcom/millennialmedia/android/VideoPlayer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 831
    .restart local v3       #settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 832
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "lastAdViewed"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    const-string v5, "Sorry. There was a problem playing the video"

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 836
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v5, :cond_3

    .line 837
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 838
    :cond_3
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_1

    .line 839
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 747
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #path:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1, v5}, Lcom/millennialmedia/android/VideoPlayer;->startServer(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 753
    :cond_5
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 754
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 755
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 756
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    goto/16 :goto_0

    .line 761
    :cond_6
    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    .line 763
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v5, :cond_9

    .line 765
    iget-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    if-eqz v5, :cond_8

    .line 767
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_1

    .line 770
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-nez v5, :cond_7

    .line 772
    const-string v5, "Cached Ad. Starting Server"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 773
    const/4 v5, 0x0

    invoke-virtual {p0, v2, p1, v5}, Lcom/millennialmedia/android/VideoPlayer;->startServer(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 778
    :cond_7
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/VideoPlayer$9;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/VideoPlayer$9;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 790
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/VideoPlayer$10;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/VideoPlayer$10;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 796
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v6, Lcom/millennialmedia/android/VideoPlayer$11;

    invoke-direct {v6, p0}, Lcom/millennialmedia/android/VideoPlayer$11;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 803
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 804
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 805
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 806
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 807
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    goto/16 :goto_0

    .line 813
    :cond_8
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 814
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 815
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 816
    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 817
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z

    goto/16 :goto_0

    .line 822
    :cond_9
    const-string v5, "MillennialMediaSDK"

    const-string v6, "Video Player is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private resumeVideo()V
    .locals 12

    .prologue
    .line 973
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v7, :cond_6

    .line 975
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v7}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    if-nez v7, :cond_6

    .line 977
    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v7, :cond_5

    .line 979
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 980
    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    if-eqz v7, :cond_0

    .line 982
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v7, v7, Lcom/millennialmedia/android/VideoAd;->duration:J

    iget v9, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 983
    .local v5, seconds:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_4

    .line 985
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 986
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    .end local v5           #seconds:J
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 995
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v7, v7, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 996
    .local v0, button:Lcom/millennialmedia/android/VideoImage;
    const-wide/16 v1, 0x0

    .line 998
    .local v1, delay:J
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 1000
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1001
    .local v4, message:Landroid/os/Message;
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    iget v9, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 1002
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_1

    .line 1003
    const-wide/16 v1, 0x1f4

    .line 1004
    :cond_1
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1007
    .end local v4           #message:Landroid/os/Message;
    :cond_2
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 1009
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1010
    .restart local v4       #message:Landroid/os/Message;
    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    add-long/2addr v8, v1

    iget-wide v10, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v8, v10

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 993
    .end local v4           #message:Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 990
    .end local v0           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v1           #delay:J
    .end local v3           #i:I
    .restart local v5       #seconds:J
    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->hideHud()V

    goto :goto_0

    .line 1014
    .end local v5           #seconds:J
    :cond_5
    iget v7, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/VideoPlayer;->playVideo(I)V

    .line 1017
    :cond_6
    return-void
.end method

.method private setButtonAlpha(Landroid/widget/ImageButton;F)V
    .locals 4
    .parameter "button"
    .parameter "alpha"

    .prologue
    const/4 v3, 0x1

    .line 382
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 383
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 384
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 385
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 386
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 387
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    return-void
.end method

.method private showHud(Z)V
    .locals 10
    .parameter "restart"

    .prologue
    const/16 v9, 0xa

    const/4 v8, -0x1

    const-wide/16 v6, 0x3e8

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 620
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    if-nez v2, :cond_4

    .line 622
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 623
    .local v0, hudLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 625
    .local v1, hudSecLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    .line 626
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    const-string v3, " seconds remaining ..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 630
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    .line 631
    if-eqz p1, :cond_2

    .line 633
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 645
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 646
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    const/16 v3, 0x192

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 649
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 650
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 651
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 654
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 655
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    .end local v0           #hudLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #hudSecLp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 638
    .restart local v0       #hudLp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #hudSecLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    if-eqz v2, :cond_3

    .line 639
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    iget v3, p0, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 640
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 659
    .end local v0           #hudLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #hudSecLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    if-eqz p1, :cond_5

    .line 661
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_6

    .line 662
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v3, v3, Lcom/millennialmedia/android/VideoAd;->duration:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 664
    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private videoPlayerOnCompletion(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 1025
    iput-boolean v6, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompletedOnce:Z

    iput-boolean v6, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    .line 1026
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MillennialMediaView;->isInErrorState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1027
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->logSet:Lcom/millennialmedia/android/EventLogSet;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoPlayer;->logEndEvent(Lcom/millennialmedia/android/EventLogSet;)V

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->stopServer()V

    .line 1029
    const-string v3, "Video player on complete"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1030
    if-eqz p1, :cond_1

    .line 1032
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/millennialmedia/android/VideoPlayer;->dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_2

    .line 1036
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-nez v3, :cond_3

    .line 1038
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->dismiss()V

    .line 1063
    :cond_2
    :goto_0
    return-void

    .line 1042
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 1045
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1047
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 1048
    .local v2, videoImage:Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/android/VideoPlayer;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 1051
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1052
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    :cond_4
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1054
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1055
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1058
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #videoImage:Lcom/millennialmedia/android/VideoImage;
    :cond_6
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    .line 503
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v4, :cond_4

    .line 505
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 506
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 510
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 511
    .local v3, videoImage:Lcom/millennialmedia/android/VideoImage;
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/android/VideoPlayer;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 512
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 515
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-static {v4, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 516
    .local v2, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    iget-wide v5, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 508
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->canFadeButtons()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 525
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v4, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 526
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 527
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 528
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 529
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 530
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 533
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 535
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v4, v5}, Lcom/millennialmedia/android/VideoPlayer;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    goto :goto_1

    .line 540
    .end local v1           #i:I
    .end local v3           #videoImage:Lcom/millennialmedia/android/VideoImage;
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    .line 411
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 495
    :cond_0
    :goto_0
    return v13

    .line 414
    :pswitch_0
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->canFadeButtons()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 416
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    .line 417
    .local v8, videoImage:Lcom/millennialmedia/android/VideoImage;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v9, v8, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v10, v8, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 418
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    iget-wide v9, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 419
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 420
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 421
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 422
    iget-object v9, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 426
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    .end local v8           #videoImage:Lcom/millennialmedia/android/VideoImage;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    .line 428
    .restart local v8       #videoImage:Lcom/millennialmedia/android/VideoImage;
    :try_start_0
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 429
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v11, v8, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_1
    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v9, v8, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    iget v10, v8, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 432
    .restart local v0       #animation:Landroid/view/animation/AlphaAnimation;
    iget-wide v9, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 433
    new-instance v9, Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v11, v8, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, p0, v10, v11}, Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;-><init>(Lcom/millennialmedia/android/VideoPlayer;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 434
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 435
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 436
    invoke-virtual {v0, v13}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 437
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Beginning animation to visibility. Fade duration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Button: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/millennialmedia/android/VideoImage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 438
    iget-object v9, v8, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v9, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 430
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 443
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v8           #videoImage:Lcom/millennialmedia/android/VideoImage;
    :pswitch_2
    :try_start_1
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v9}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 445
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v9}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    .line 446
    .local v1, currentPosition:I
    iget v9, p0, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    if-le v1, v9, :cond_5

    .line 448
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v9, :cond_4

    .line 450
    iget v9, p0, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    if-nez v9, :cond_2

    .line 451
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->logSet:Lcom/millennialmedia/android/EventLogSet;

    invoke-virtual {p0, v9}, Lcom/millennialmedia/android/VideoPlayer;->logBeginEvent(Lcom/millennialmedia/android/EventLogSet;)V

    .line 452
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 454
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoLogEvent;

    .line 455
    .local v7, videoEvent:Lcom/millennialmedia/android/VideoLogEvent;
    if-eqz v7, :cond_3

    .line 457
    iget-wide v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    iget v11, p0, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    iget-wide v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    int-to-long v11, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 459
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    iget-object v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v9, v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-ge v4, v9, :cond_3

    .line 463
    :try_start_2
    iget-object v9, v7, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {p0, v9}, Lcom/millennialmedia/android/VideoPlayer;->logEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 459
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 464
    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 491
    .end local v1           #currentPosition:I
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v7           #videoEvent:Lcom/millennialmedia/android/VideoLogEvent;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 452
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #currentPosition:I
    .restart local v3       #i:I
    .restart local v7       #videoEvent:Lcom/millennialmedia/android/VideoLogEvent;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 470
    .end local v3           #i:I
    .end local v7           #videoEvent:Lcom/millennialmedia/android/VideoLogEvent;
    :cond_4
    :try_start_4
    iput v1, p0, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    .line 474
    :cond_5
    iget-boolean v9, p0, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    if-eqz v9, :cond_6

    .line 476
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v9, v9, Lcom/millennialmedia/android/VideoAd;->duration:J

    int-to-long v11, v1

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long v5, v9, v11

    .line 477
    .local v5, seconds:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_7

    .line 479
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 480
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .end local v1           #currentPosition:I
    .end local v5           #seconds:J
    :cond_6
    :goto_5
    iget-object v9, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 484
    .restart local v1       #currentPosition:I
    .restart local v5       #seconds:J
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->hideHud()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logBeginEvent(Lcom/millennialmedia/android/EventLogSet;)V
    .locals 3
    .parameter "set"

    .prologue
    .line 550
    if-eqz p1, :cond_0

    .line 552
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 556
    :try_start_0
    const-string v2, "Cached video begin event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 557
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 558
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->startActivity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/VideoPlayer;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 563
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 587
    const-string v2, "Cached video button event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 589
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 590
    iget-object v2, p1, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/VideoPlayer;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 594
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logEndEvent(Lcom/millennialmedia/android/EventLogSet;)V
    .locals 3
    .parameter "set"

    .prologue
    .line 571
    const-string v2, "Cached video end event logged"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 574
    iget-object v2, p1, Lcom/millennialmedia/android/EventLogSet;->endActivity:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/VideoPlayer;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 578
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method protected logEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 603
    move-object v0, p1

    .line 604
    .local v0, logString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging event to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 605
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayer$5;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/android/VideoPlayer$5;-><init>(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 616
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 110
    const v26, 0x1030007

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->setTheme(I)V

    .line 111
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v26, "Setting up the video player"

    invoke-static/range {v26 .. v26}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_6

    .line 116
    const-string v26, "isCachedAd"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    .line 117
    const-string v26, "videoCompleted"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    .line 118
    const-string v26, "videoCompletedOnce"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->videoCompletedOnce:Z

    .line 119
    const-string v26, "videoPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    .line 120
    const-string v26, "lastVideoPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    .line 130
    :goto_0
    new-instance v26, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;-><init>(Lcom/millennialmedia/android/VideoPlayer;Lcom/millennialmedia/android/VideoPlayer$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->receiver:Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;

    .line 131
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v15, intentFilter:Landroid/content/IntentFilter;
    const-string v26, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v26, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v26, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->receiver:Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/millennialmedia/android/VideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    new-instance v26, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x190

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setDrawingCacheBackgroundColor(I)V

    .line 143
    new-instance v24, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 146
    .local v24, videoLayout:Landroid/widget/RelativeLayout;
    const/high16 v26, -0x100

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 147
    const/16 v26, 0x19a

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 148
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v23, videoContainerLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const/high16 v26, -0x100

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setDrawingCacheBackgroundColor(I)V

    .line 153
    new-instance v25, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v25 .. v27}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v25, videoLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xd

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    new-instance v26, Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v26, v0

    const/16 v27, 0x19b

    invoke-virtual/range {v26 .. v27}, Lcom/millennialmedia/android/MillennialMediaView;->setId(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/millennialmedia/android/MillennialMediaView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v26

    const/16 v27, -0x2

    invoke-interface/range {v26 .. v27}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Lcom/millennialmedia/android/MillennialMediaView;->setDrawingCacheBackgroundColor(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v8, buttonsLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Is Cached Ad: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 170
    new-instance v26, Landroid/os/Handler;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    .line 173
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->setRequestedOrientation(I)V

    .line 174
    if-nez p1, :cond_8

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v26

    const-string v27, "adName"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 179
    .local v17, name:Ljava/lang/String;
    const/4 v11, 0x0

    .line 182
    .local v11, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_0
    new-instance v12, Lcom/millennialmedia/android/AdDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v11           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v12, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    if-eqz v12, :cond_10

    .line 189
    invoke-virtual {v12}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v11, v12

    .line 193
    .end local v12           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_1
    new-instance v26, Lcom/millennialmedia/android/EventLogSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/millennialmedia/android/EventLogSet;-><init>(Lcom/millennialmedia/android/VideoAd;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->logSet:Lcom/millennialmedia/android/EventLogSet;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->showBottomBar:Z

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    .line 208
    .end local v11           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v17           #name:Ljava/lang/String;
    :cond_1
    :goto_2
    new-instance v26, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1a4

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 214
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->showHud(Z)V

    .line 218
    :cond_2
    const/4 v7, 0x0

    .line 219
    .local v7, buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 222
    :cond_3
    if-eqz v7, :cond_c

    .line 224
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_b

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    move/from16 v26, v0

    if-eqz v26, :cond_9

    .line 229
    new-instance v9, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".mmsyscache"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v9, cacheDir:Ljava/io/File;
    :goto_4
    new-instance v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 233
    .local v18, newButton:Landroid/widget/ImageButton;
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 236
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v26

    const-string v28, "\\.[^\\.]*$"

    const-string v29, ".dat"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, buttonPath:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 238
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 239
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 240
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/VideoPlayer;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 241
    add-int/lit8 v26, v14, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 242
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v19, newButtonLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Array #: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getId()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " View ID: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Relative to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v26, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " position: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v26, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 246
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v27, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->position2:I

    move/from16 v27, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    move/from16 v27, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    move/from16 v28, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    move/from16 v29, v0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/VideoImage;

    .line 253
    .local v5, button:Lcom/millennialmedia/android/VideoImage;
    iget-object v0, v5, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 255
    new-instance v26, Lcom/millennialmedia/android/VideoPlayer$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/android/VideoPlayer$1;-><init>(Lcom/millennialmedia/android/VideoPlayer;Lcom/millennialmedia/android/VideoImage;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_4
    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_a

    .line 267
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoImage;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 269
    .local v16, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    .end local v16           #message:Landroid/os/Message;
    :goto_5
    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_5

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 280
    .restart local v16       #message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->handler:Landroid/os/Handler;

    move-object/from16 v26, v0

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    move-wide/from16 v27, v0

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    iget-wide v0, v5, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 224
    .end local v16           #message:Landroid/os/Message;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 124
    .end local v5           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v6           #buttonPath:Ljava/lang/String;
    .end local v7           #buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v8           #buttonsLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #cacheDir:Ljava/io/File;
    .end local v14           #i:I
    .end local v15           #intentFilter:Landroid/content/IntentFilter;
    .end local v18           #newButton:Landroid/widget/ImageButton;
    .end local v19           #newButtonLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23           #videoContainerLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v24           #videoLayout:Landroid/widget/RelativeLayout;
    .end local v25           #videoLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v26

    const-string v27, "cached"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    .line 125
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/android/VideoPlayer;->currentVideoPosition:I

    .line 126
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->videoCompletedOnce:Z

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    goto/16 :goto_0

    .line 185
    .restart local v8       #buttonsLp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v15       #intentFilter:Landroid/content/IntentFilter;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v23       #videoContainerLp:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v24       #videoLayout:Landroid/widget/RelativeLayout;
    .restart local v25       #videoLp:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v13

    .local v13, e:Landroid/database/sqlite/SQLiteException;
    :goto_6
    :try_start_2
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    if-eqz v11, :cond_0

    .line 189
    invoke-virtual {v11}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto/16 :goto_1

    .line 188
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v26

    :goto_7
    if-eqz v11, :cond_7

    .line 189
    invoke-virtual {v11}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_7
    throw v26

    .line 202
    .end local v11           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v17           #name:Ljava/lang/String;
    :cond_8
    const-string v26, "videoAd"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 203
    const-string v26, "logSet"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Lcom/millennialmedia/android/EventLogSet;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->logSet:Lcom/millennialmedia/android/EventLogSet;

    .line 204
    const-string v26, "shouldShowBottomBar"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->showBottomBar:Z

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z

    goto/16 :goto_2

    .line 231
    .restart local v7       #buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .restart local v14       #i:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayer;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .restart local v9       #cacheDir:Ljava/io/File;
    goto/16 :goto_4

    .line 273
    .restart local v5       #button:Lcom/millennialmedia/android/VideoImage;
    .restart local v6       #buttonPath:Ljava/lang/String;
    .restart local v18       #newButton:Landroid/widget/ImageButton;
    .restart local v19       #newButtonLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 284
    .end local v5           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v6           #buttonPath:Ljava/lang/String;
    .end local v9           #cacheDir:Ljava/io/File;
    .end local v18           #newButton:Landroid/widget/ImageButton;
    .end local v19           #newButtonLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    .end local v7           #buttons:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    .end local v14           #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayer;->showBottomBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 291
    new-instance v26, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    const/high16 v27, -0x100

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 293
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    .local v10, controlsLp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    new-instance v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->mRewind:Landroid/widget/Button;

    .line 298
    new-instance v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;

    .line 299
    new-instance v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mRewind:Landroid/widget/Button;

    move-object/from16 v26, v0

    const v27, 0x1080025

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v26, v0

    const v27, 0x1080023

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    move-object/from16 v26, v0

    const v27, 0x1080038

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 305
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    .local v20, pauseLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v22, stopLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    .local v21, rewindLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v26, 0xe

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Button;->getId()I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mRewind:Landroid/widget/Button;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 315
    const/16 v26, 0xb

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mRewind:Landroid/widget/Button;

    move-object/from16 v26, v0

    new-instance v27, Lcom/millennialmedia/android/VideoPlayer$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer$2;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;

    move-object/from16 v26, v0

    new-instance v27, Lcom/millennialmedia/android/VideoPlayer$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer$3;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    move-object/from16 v26, v0

    new-instance v27, Lcom/millennialmedia/android/VideoPlayer$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoPlayer$4;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .end local v10           #controlsLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20           #pauseLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21           #rewindLp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22           #stopLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 365
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 370
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->setContentView(Landroid/view/View;)V

    .line 371
    return-void

    .line 188
    .restart local v12       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v17       #name:Ljava/lang/String;
    :catchall_1
    move-exception v26

    move-object v11, v12

    .end local v12           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_7

    .line 185
    .end local v11           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v12       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v13

    move-object v11, v12

    .end local v12           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_6

    .end local v11           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v12       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_10
    move-object v11, v12

    .end local v12           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v11       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 920
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 921
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->receiver:Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 922
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->stopServer()V

    .line 926
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 899
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 900
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompletedOnce:Z

    if-nez v0, :cond_0

    .line 901
    const/4 v0, 0x1

    .line 903
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 886
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 887
    const-string v0, "MillennialMediaSDK"

    const-string v1, "VideoPlayer - onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->waitForUserPresent:Z

    if-nez v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->pauseVideo()V

    .line 890
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 875
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 876
    const-string v0, "MillennialMediaSDK"

    const-string v1, "VideoPlayer - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayer;->waitForUserPresent:Z

    if-nez v0, :cond_0

    .line 878
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->resumeVideo()V

    .line 879
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 934
    const-string v0, "videoPosition"

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    const-string v0, "lastVideoPosition"

    iget v1, p0, Lcom/millennialmedia/android/VideoPlayer;->lastVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    :cond_0
    const-string v0, "isCachedAd"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->isCachedAd:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 938
    const-string v0, "videoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 939
    const-string v0, "videoCompletedOnce"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompletedOnce:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 940
    const-string v0, "logSet"

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->logSet:Lcom/millennialmedia/android/EventLogSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 941
    const-string v0, "shouldShowBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->showBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 942
    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 944
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 945
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 847
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 848
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_2

    .line 850
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v3, v3, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoCompleted:Z

    if-ne v3, v4, :cond_2

    .line 852
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 855
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 857
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 858
    .local v2, videoImage:Lcom/millennialmedia/android/VideoImage;
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/android/VideoPlayer;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 859
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 860
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 862
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 855
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #videoImage:Lcom/millennialmedia/android/VideoImage;
    :cond_2
    return-void
.end method

.method public declared-synchronized startServer(Ljava/lang/String;IZ)V
    .locals 4
    .parameter "path"
    .parameter "position"
    .parameter "isSDCard"

    .prologue
    .line 1341
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    if-nez v1, :cond_0

    .line 1343
    new-instance v1, Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    invoke-direct {v1, p0, p1, p3}, Lcom/millennialmedia/android/VideoPlayer$VideoServer;-><init>(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    .line 1344
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1345
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 1347
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v1, :cond_1

    .line 1349
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoPlayer$VideoServer;->port:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/video.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setVideoURI(Landroid/net/Uri;)V

    .line 1350
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayer$12;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayer$12;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1362
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayer$13;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayer$13;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1368
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    new-instance v2, Lcom/millennialmedia/android/VideoPlayer$14;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayer$14;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1375
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->requestFocus()Z

    .line 1376
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 1377
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 1378
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1382
    .restart local v0       #thread:Ljava/lang/Thread;
    :cond_1
    :try_start_1
    const-string v1, "MillennialMediaSDK"

    const-string v2, "Null Video View"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1341
    .end local v0           #thread:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopServer()V
    .locals 1

    .prologue
    .line 1392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    if-eqz v0, :cond_1

    .line 1394
    const-string v0, "Stop video server"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayer$VideoServer;->requestStop()V

    .line 1398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->videoServer:Lcom/millennialmedia/android/VideoPlayer$VideoServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    :cond_1
    monitor-exit p0

    return-void

    .line 1392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
