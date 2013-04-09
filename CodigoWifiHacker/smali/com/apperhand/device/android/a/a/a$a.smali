.class public final Lcom/apperhand/device/android/a/a/a$a;
.super Ljava/lang/Object;
.source "BaseHomepageDMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/device/android/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    sput-object v0, Lcom/apperhand/device/android/a/a/a$a;->a:Ljava/util/List;

    new-instance v1, Lcom/apperhand/device/android/a/a/a/a;

    invoke-direct {v1}, Lcom/apperhand/device/android/a/a/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/apperhand/device/android/a/a/a$a;->a:Ljava/util/List;

    new-instance v1, Lcom/apperhand/device/android/a/a/a/b;

    invoke-direct {v1}, Lcom/apperhand/device/android/a/a/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/apperhand/device/android/a/a/a$a;->a:Ljava/util/List;

    new-instance v1, Lcom/apperhand/device/android/a/a/a/c;

    invoke-direct {v1}, Lcom/apperhand/device/android/a/a/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apperhand/device/android/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/apperhand/device/android/a/a/a$a;->a:Ljava/util/List;

    return-object v0
.end method
