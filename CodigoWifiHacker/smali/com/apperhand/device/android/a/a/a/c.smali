.class public final Lcom/apperhand/device/android/a/a/a/c;
.super Lcom/apperhand/device/android/a/a/a;
.source "SamsungHomepageDMA.java"


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
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 14
    sget-object v0, Lcom/apperhand/device/android/a/a/a/c;->d:[B

    invoke-static {v0}, Lcom/apperhand/device/android/a/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apperhand/device/android/a/a/a/c;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/apperhand/device/android/a/a/a/c;->p:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/android/a/a/a/c;->q:[B

    invoke-static {v2}, Lcom/apperhand/device/android/a/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/apperhand/device/android/a/a/a/c;->b(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v1, Lcom/apperhand/device/android/a/a/a/c;->c:[B

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apperhand/device/android/a/a/a/c;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 18
    sget-object v2, Lcom/apperhand/device/android/a/a/a/c;->e:[B

    invoke-static {v2}, Lcom/apperhand/device/android/a/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/apperhand/common/dto/Homepage;->getPageURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/apperhand/device/android/a/a/a/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p1, v0}, Lcom/apperhand/device/android/a/a/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    invoke-static {p1, v1}, Lcom/apperhand/device/android/a/a/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    const/4 v0, 0x1

    return v0
.end method
