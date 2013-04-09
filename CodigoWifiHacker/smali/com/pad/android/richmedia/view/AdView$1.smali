.class Lcom/pad/android/richmedia/view/AdView$1;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ViewState:[I


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ViewState()[I
    .locals 3

    .prologue
    .line 723
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$1;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ViewState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/pad/android/richmedia/view/AdView$ViewState;->values()[Lcom/pad/android/richmedia/view/AdView$ViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->HIDDEN:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->LEFT_BEHIND:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->OPENED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->RESIZED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/pad/android/richmedia/view/AdView$1;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ViewState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/pad/android/richmedia/view/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 723
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 729
    .local v1, data:Landroid/os/Bundle;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 802
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 803
    return-void

    .line 731
    :pswitch_0
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 732
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/pad/android/richmedia/view/AdView$AdViewListener;->onExpandClose()Z

    goto :goto_0

    .line 736
    :pswitch_1
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    sget-object v6, Lcom/pad/android/richmedia/view/AdView$ViewState;->RESIZED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    #setter for: Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;
    invoke-static {v5, v6}, Lcom/pad/android/richmedia/view/AdView;->access$1(Lcom/pad/android/richmedia/view/AdView;Lcom/pad/android/richmedia/view/AdView$ViewState;)V

    .line 737
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 738
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    const-string v5, "resize_height"

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 739
    const-string v5, "resize_width"

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "window.ormmaview.fireChangeEvent({ state: \'resized\', size: { width: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 743
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 744
    const-string v6, "height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 745
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 740
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, injection:Ljava/lang/String;
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5, v2}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 747
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->requestLayout()V

    .line 748
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 749
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/pad/android/richmedia/view/AdView$AdViewListener;->onResize()Z

    goto :goto_0

    .line 753
    .end local v2           #injection:Ljava/lang/String;
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :pswitch_2
    invoke-static {}, Lcom/pad/android/richmedia/view/AdView$1;->$SWITCH_TABLE$com$pad$android$richmedia$view$AdView$ViewState()[I

    move-result-object v5

    iget-object v6, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;
    invoke-static {v6}, Lcom/pad/android/richmedia/view/AdView;->access$2(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$ViewState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pad/android/richmedia/view/AdView$ViewState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 755
    :pswitch_3
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #calls: Lcom/pad/android/richmedia/view/AdView;->closeResized()V
    invoke-static {v5}, Lcom/pad/android/richmedia/view/AdView;->access$3(Lcom/pad/android/richmedia/view/AdView;)V

    goto/16 :goto_0

    .line 758
    :pswitch_4
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5}, Lcom/pad/android/richmedia/view/AdView;->closeExpanded()V

    goto/16 :goto_0

    .line 765
    :pswitch_5
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/pad/android/richmedia/view/AdView;->setVisibility(I)V

    .line 766
    const-string v2, "window.ormmaview.fireChangeEvent({ state: \'hidden\' });"

    .line 768
    .restart local v2       #injection:Ljava/lang/String;
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5, v2}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 772
    .end local v2           #injection:Ljava/lang/String;
    :pswitch_6
    const-string v2, "window.ormmaview.fireChangeEvent({ state: \'default\' });"

    .line 773
    .restart local v2       #injection:Ljava/lang/String;
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5, v2}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 774
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pad/android/richmedia/view/AdView;->setVisibility(I)V

    goto/16 :goto_0

    .line 778
    .end local v2           #injection:Ljava/lang/String;
    :pswitch_7
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #calls: Lcom/pad/android/richmedia/view/AdView;->doExpand(Landroid/os/Bundle;)V
    invoke-static {v5, v1}, Lcom/pad/android/richmedia/view/AdView;->access$4(Lcom/pad/android/richmedia/view/AdView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 782
    :pswitch_8
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    sget-object v6, Lcom/pad/android/richmedia/view/AdView$ViewState;->LEFT_BEHIND:Lcom/pad/android/richmedia/view/AdView$ViewState;

    #setter for: Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;
    invoke-static {v5, v6}, Lcom/pad/android/richmedia/view/AdView;->access$1(Lcom/pad/android/richmedia/view/AdView;Lcom/pad/android/richmedia/view/AdView$ViewState;)V

    goto/16 :goto_0

    .line 787
    :pswitch_9
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5, v1}, Lcom/pad/android/richmedia/view/AdView;->playAudioImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 792
    :pswitch_a
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5, v1}, Lcom/pad/android/richmedia/view/AdView;->playVideoImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 796
    :pswitch_b
    const-string v5, "message"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, strMsg:Ljava/lang/String;
    const-string v5, "action"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, action:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "window.ormmaview.fireErrorEvent(\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 799
    .restart local v2       #injection:Ljava/lang/String;
    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView$1;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v5, v2}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 753
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
