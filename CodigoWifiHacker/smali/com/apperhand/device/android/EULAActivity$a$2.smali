.class final Lcom/apperhand/device/android/EULAActivity$a$2;
.super Ljava/lang/Object;
.source "EULAActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/android/EULAActivity$a;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity$a;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$a$2;->a:Lcom/apperhand/device/android/EULAActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a$2;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->b(Lcom/apperhand/device/android/EULAActivity;Z)Z

    .line 176
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$a$2;->a:Lcom/apperhand/device/android/EULAActivity$a;

    iget-object v0, v0, Lcom/apperhand/device/android/EULAActivity$a;->a:Lcom/apperhand/device/android/EULAActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Z)V

    .line 177
    return-void
.end method
