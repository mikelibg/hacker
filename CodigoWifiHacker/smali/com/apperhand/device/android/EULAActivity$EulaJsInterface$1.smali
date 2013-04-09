.class final Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;
.super Ljava/lang/Object;
.source "EULAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;->press(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->d:Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;

    iput-object p2, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->d:Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;->this$0:Lcom/apperhand/device/android/EULAActivity;

    iget-object v1, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    return-void
.end method
