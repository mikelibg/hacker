.class final synthetic Lcom/apperhand/device/a/b/i$1;
.super Ljava/lang/Object;
.source "ShortcutsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/apperhand/common/dto/Status;->values()[Lcom/apperhand/common/dto/Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/apperhand/device/a/b/i$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/apperhand/device/a/b/i$1;->a:[I

    sget-object v1, Lcom/apperhand/common/dto/Status;->ADD:Lcom/apperhand/common/dto/Status;

    invoke-virtual {v1}, Lcom/apperhand/common/dto/Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
