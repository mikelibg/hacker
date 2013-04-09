.class final Lcom/apperhand/device/a/b/j$1;
.super Lcom/apperhand/common/dto/protocol/BaseResponse;
.source "TerminateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apperhand/device/a/b/j;->a()Lcom/apperhand/common/dto/protocol/BaseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/a/b/j;


# direct methods
.method constructor <init>(Lcom/apperhand/device/a/b/j;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/apperhand/device/a/b/j$1;->a:Lcom/apperhand/device/a/b/j;

    invoke-direct {p0}, Lcom/apperhand/common/dto/protocol/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "DummyResponse"

    return-object v0
.end method
