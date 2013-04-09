.class public final Lcom/apperhand/device/android/a/d;
.super Ljava/lang/Object;
.source "AndroidHomepageDMA.java"

# interfaces
.implements Lcom/apperhand/device/a/a/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/apperhand/device/android/a/d;->a:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/apperhand/common/dto/Homepage;)Z
    .locals 4
    .parameter

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/android/a/d;->a:Landroid/content/Context;

    invoke-static {}, Lcom/apperhand/device/android/a/a/a$a;->a()Ljava/util/List;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/a/a/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    iget-object v3, p0, Lcom/apperhand/device/android/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/apperhand/device/android/a/a/a;->a(Landroid/content/Context;Lcom/apperhand/common/dto/Homepage;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 41
    :cond_0
    return v1

    .line 34
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
