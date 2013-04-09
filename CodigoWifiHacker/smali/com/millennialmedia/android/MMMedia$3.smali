.class Lcom/millennialmedia/android/MMMedia$3;
.super Ljava/lang/Object;
.source "MMMedia.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia;->playAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMMedia;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$3;->this$0:Lcom/millennialmedia/android/MMMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 236
    return-void
.end method
