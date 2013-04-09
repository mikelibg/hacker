.class Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedAnimationListener"
.end annotation


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayer;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter "b"
    .parameter "lp"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;->button:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/millennialmedia/android/VideoPlayer$DelayedAnimationListener;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 400
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 401
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 399
    return-void
.end method
