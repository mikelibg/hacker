.class Lcom/millennialmedia/android/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;

.field final synthetic val$button:Lcom/millennialmedia/android/VideoImage;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayer;Lcom/millennialmedia/android/VideoImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$1;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayer$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$1;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v2, v2, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    #calls: Lcom/millennialmedia/android/VideoPlayer;->dispatchButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/VideoPlayer;->access$100(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$1;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V

    .line 259
    return-void
.end method
