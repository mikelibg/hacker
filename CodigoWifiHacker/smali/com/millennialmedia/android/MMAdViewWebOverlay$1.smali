.class Lcom/millennialmedia/android/MMAdViewWebOverlay$1;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/content/Context;IJLjava/lang/String;ZLjava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 144
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 154
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 146
    :pswitch_0
    const-string v2, "Close button down"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$000(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/TextView;

    move-result-object v2

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 150
    const-string v2, "Close button up"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #calls: Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V
    invoke-static {v2, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$100(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
