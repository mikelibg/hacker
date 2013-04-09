.class final Lcom/apperhand/device/android/EULAActivity$c$1;
.super Ljava/lang/Object;
.source "EULAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apperhand/device/android/EULAActivity$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/android/EULAActivity$c;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity$c;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$c$1;->a:Lcom/apperhand/device/android/EULAActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c$1;->a:Lcom/apperhand/device/android/EULAActivity$c;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->e(Lcom/apperhand/device/android/EULAActivity;)I

    .line 344
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c$1;->a:Lcom/apperhand/device/android/EULAActivity$c;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->f(Lcom/apperhand/device/android/EULAActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c$1;->a:Lcom/apperhand/device/android/EULAActivity$c;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->g(Lcom/apperhand/device/android/EULAActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c$1;->a:Lcom/apperhand/device/android/EULAActivity$c;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->h(Lcom/apperhand/device/android/EULAActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_0
    return-void
.end method
