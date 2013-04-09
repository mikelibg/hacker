.class public final Lcom/apperhand/device/a/d/f;
.super Ljava/lang/Exception;
.source "SDKException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/a/d/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apperhand/device/a/d/f$a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apperhand/device/a/d/f;->b:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apperhand/device/a/d/f;->b:Z

    .line 22
    iput-object p1, p0, Lcom/apperhand/device/a/d/f;->a:Lcom/apperhand/device/a/d/f$a;

    .line 23
    iput-boolean p4, p0, Lcom/apperhand/device/a/d/f;->b:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/apperhand/device/a/d/f;->b:Z

    return v0
.end method
