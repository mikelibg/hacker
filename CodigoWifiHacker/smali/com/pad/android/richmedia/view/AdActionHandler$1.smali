.class Lcom/pad/android/richmedia/view/AdActionHandler$1;
.super Ljava/lang/Object;
.source "AdActionHandler.java"

# interfaces
.implements Lcom/pad/android/util/AdPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/richmedia/view/AdActionHandler;->setPlayerListener(Lcom/pad/android/util/AdPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdActionHandler;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdActionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdActionHandler$1;->this$0:Lcom/pad/android/richmedia/view/AdActionHandler;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdActionHandler$1;->this$0:Lcom/pad/android/richmedia/view/AdActionHandler;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdActionHandler;->finish()V

    .line 126
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdActionHandler$1;->this$0:Lcom/pad/android/richmedia/view/AdActionHandler;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdActionHandler;->finish()V

    .line 122
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
