.class Lcom/pad/android/iappad/AdController$5;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->playAudioAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdController;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mediaPlayer"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$25(Lcom/pad/android/iappad/AdController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->oldVolumeLevel:I
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$26(Lcom/pad/android/iappad/AdController;)I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1040
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$23(Lcom/pad/android/iappad/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$23(Lcom/pad/android/iappad/AdController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pad/android/listener/AdAudioListener;->onAdFinished()V

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$5;->this$0:Lcom/pad/android/iappad/AdController;

    const/4 v1, 0x0

    #setter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/pad/android/iappad/AdController;->access$24(Lcom/pad/android/iappad/AdController;Landroid/media/MediaPlayer;)V

    .line 1049
    return-void
.end method
