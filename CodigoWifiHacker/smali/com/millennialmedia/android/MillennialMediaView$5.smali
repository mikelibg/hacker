.class Lcom/millennialmedia/android/MillennialMediaView$5;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MillennialMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MillennialMediaView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MillennialMediaView;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I
    invoke-static {v2, v4}, Lcom/millennialmedia/android/MillennialMediaView;->access$202(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 382
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I
    invoke-static {v2, v4}, Lcom/millennialmedia/android/MillennialMediaView;->access$1202(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 383
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$1400(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$1400(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    :cond_1
    :goto_0
    return v5

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MillennialMediaView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$1500(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 403
    .local v1, r:Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_3

    .line 405
    const v0, 0x1040015

    .line 411
    .local v0, messageId:I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/millennialmedia/android/MillennialMediaView;->access$1500(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Sorry"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MillennialMediaView$5$1;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/MillennialMediaView$5$1;-><init>(Lcom/millennialmedia/android/MillennialMediaView$5;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 408
    .end local v0           #messageId:I
    :cond_3
    const v0, 0x1040011

    .restart local v0       #messageId:I
    goto :goto_1
.end method
