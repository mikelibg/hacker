.class public Lcom/pad/android/richmedia/view/AdActionHandler;
.super Landroid/app/Activity;
.source "AdActionHandler.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ACTION:[I


# instance fields
.field private actionData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pad/android/richmedia/view/AdView$ACTION;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Landroid/widget/RelativeLayout;


# direct methods
.method static synthetic $SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ACTION()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/pad/android/richmedia/view/AdActionHandler;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ACTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/pad/android/richmedia/view/AdView$ACTION;->values()[Lcom/pad/android/richmedia/view/AdView$ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_AUDIO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_VIDEO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/pad/android/richmedia/view/AdActionHandler;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ACTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->actionData:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method private doAction(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 49
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, actionData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView$ACTION;->valueOf(Ljava/lang/String;)Lcom/pad/android/richmedia/view/AdView$ACTION;

    move-result-object v1

    .line 56
    .local v1, actionType:Lcom/pad/android/richmedia/view/AdView$ACTION;
    invoke-static {}, Lcom/pad/android/richmedia/view/AdActionHandler;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ACTION()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ACTION;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    invoke-virtual {p0, p1, v1}, Lcom/pad/android/richmedia/view/AdActionHandler;->initPlayer(Landroid/os/Bundle;Lcom/pad/android/richmedia/view/AdView$ACTION;)Lcom/pad/android/util/AdPlayer;

    move-result-object v2

    .line 59
    .local v2, player:Lcom/pad/android/util/AdPlayer;
    invoke-virtual {v2}, Lcom/pad/android/util/AdPlayer;->playAudio()V

    goto :goto_0

    .line 63
    .end local v2           #player:Lcom/pad/android/util/AdPlayer;
    :pswitch_1
    invoke-virtual {p0, p1, v1}, Lcom/pad/android/richmedia/view/AdActionHandler;->initPlayer(Landroid/os/Bundle;Lcom/pad/android/richmedia/view/AdView$ACTION;)Lcom/pad/android/util/AdPlayer;

    move-result-object v2

    .line 64
    .restart local v2       #player:Lcom/pad/android/util/AdPlayer;
    invoke-virtual {v2}, Lcom/pad/android/util/AdPlayer;->playVideo()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPlayerListener(Lcom/pad/android/util/AdPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    .line 113
    new-instance v0, Lcom/pad/android/richmedia/view/AdActionHandler$1;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdActionHandler$1;-><init>(Lcom/pad/android/richmedia/view/AdActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/pad/android/util/AdPlayer;->setListener(Lcom/pad/android/util/AdPlayerListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method initPlayer(Landroid/os/Bundle;Lcom/pad/android/richmedia/view/AdView$ACTION;)Lcom/pad/android/util/AdPlayer;
    .locals 6
    .parameter "playData"
    .parameter "actionType"

    .prologue
    const/4 v5, -0x1

    .line 80
    const-string v4, "player_properties"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/pad/android/iappad/AdController$PlayerProperties;

    .line 82
    .local v3, properties:Lcom/pad/android/iappad/AdController$PlayerProperties;
    const-string v4, "expand_dimensions"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pad/android/iappad/AdController$Dimensions;

    .line 84
    .local v1, playDimensions:Lcom/pad/android/iappad/AdController$Dimensions;
    new-instance v2, Lcom/pad/android/util/AdPlayer;

    invoke-direct {v2, p0}, Lcom/pad/android/util/AdPlayer;-><init>(Landroid/content/Context;)V

    .line 85
    .local v2, player:Lcom/pad/android/util/AdPlayer;
    const-string v4, "expand_url"

    invoke-static {v4, p1}, Lcom/pad/android/util/AdUtils;->getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/pad/android/util/AdPlayer;->setPlayData(Lcom/pad/android/iappad/AdController$PlayerProperties;Ljava/lang/String;)V

    .line 88
    if-nez v1, :cond_0

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    :goto_0
    invoke-virtual {v2, v0}, Lcom/pad/android/util/AdPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 102
    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->actionData:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0, v2}, Lcom/pad/android/richmedia/view/AdActionHandler;->setPlayerListener(Lcom/pad/android/util/AdPlayer;)V

    .line 105
    return-object v2

    .line 94
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    iget v5, v1, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 96
    iget v4, v1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdActionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, data:Landroid/os/Bundle;
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->layout:Landroid/widget/RelativeLayout;

    .line 36
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->layout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/pad/android/richmedia/view/AdActionHandler;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-direct {p0, v0}, Lcom/pad/android/richmedia/view/AdActionHandler;->doAction(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdActionHandler;->actionData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 145
    return-void

    .line 133
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/pad/android/richmedia/view/AdView$ACTION;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/pad/android/richmedia/view/AdActionHandler;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ACTION()[I

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView$ACTION;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pad/android/util/AdPlayer;

    .line 138
    .local v1, player:Lcom/pad/android/util/AdPlayer;
    invoke-virtual {v1}, Lcom/pad/android/util/AdPlayer;->releasePlayer()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
