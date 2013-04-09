.class Lcom/pad/android/util/AdOptinView$3;
.super Ljava/lang/Object;
.source "AdOptinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/util/AdOptinView;->closeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$3;->this$0:Lcom/pad/android/util/AdOptinView;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$3;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$5(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$3;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$5(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$3;->this$0:Lcom/pad/android/util/AdOptinView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinView;->setVisibility(I)V

    .line 141
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method
