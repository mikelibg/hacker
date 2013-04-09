.class Lcom/pad/android/richmedia/view/AdView$5;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/richmedia/view/AdView;->loadHTMLWrap(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$5;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView$5;->val$url:Ljava/lang/String;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$5;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$5;->val$url:Ljava/lang/String;

    #calls: Lcom/pad/android/richmedia/view/AdView;->superviewLoad(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pad/android/richmedia/view/AdView;->access$16(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V

    .line 918
    return-void
.end method
