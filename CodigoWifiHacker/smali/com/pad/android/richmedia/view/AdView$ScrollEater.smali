.class Lcom/pad/android/richmedia/view/AdView$ScrollEater;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollEater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$ScrollEater;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1833
    const/4 v0, 0x1

    return v0
.end method
