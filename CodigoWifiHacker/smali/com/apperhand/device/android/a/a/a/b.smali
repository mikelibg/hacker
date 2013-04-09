.class public final Lcom/apperhand/device/android/a/a/a/b;
.super Lcom/apperhand/device/android/a/a/a;
.source "LGHomepageDMA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/apperhand/device/android/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/apperhand/common/dto/Homepage;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 13
    sget-object v0, Lcom/apperhand/device/android/a/a/a/b;->a:[B

    invoke-static {v0}, Lcom/apperhand/device/android/a/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apperhand/device/android/a/a/a/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/apperhand/device/android/a/a/a/b;->b:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apperhand/common/dto/Homepage;->getPageURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apperhand/device/android/a/a/a/b;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p1, v0}, Lcom/apperhand/device/android/a/a/a/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 17
    const/4 v0, 0x1

    return v0
.end method
