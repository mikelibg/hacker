.class public final enum Lcom/apperhand/device/a/d/f$a;
.super Ljava/lang/Enum;
.source "SDKException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/a/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/device/a/d/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apperhand/device/a/d/f$a;

.field public static final enum b:Lcom/apperhand/device/a/d/f$a;

.field public static final enum c:Lcom/apperhand/device/a/d/f$a;

.field public static final enum d:Lcom/apperhand/device/a/d/f$a;

.field public static final enum e:Lcom/apperhand/device/a/d/f$a;

.field private static final synthetic h:[Lcom/apperhand/device/a/d/f$a;


# instance fields
.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/apperhand/device/a/d/f$a;

    const-string v1, "GENERAL_ERROR"

    const-wide/16 v3, 0x1

    const-string v5, "general error"

    invoke-direct/range {v0 .. v5}, Lcom/apperhand/device/a/d/f$a;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    .line 45
    new-instance v3, Lcom/apperhand/device/a/d/f$a;

    const-string v4, "SHORTCUT_ERROR"

    const-wide/16 v6, 0xa

    const-string v8, "shortcut error"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/apperhand/device/a/d/f$a;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v3, Lcom/apperhand/device/a/d/f$a;->b:Lcom/apperhand/device/a/d/f$a;

    .line 46
    new-instance v3, Lcom/apperhand/device/a/d/f$a;

    const-string v4, "BOOKMARK_ERROR"

    const-wide/16 v6, 0x14

    const-string v8, "bookmark error"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/apperhand/device/a/d/f$a;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v3, Lcom/apperhand/device/a/d/f$a;->c:Lcom/apperhand/device/a/d/f$a;

    .line 47
    new-instance v3, Lcom/apperhand/device/a/d/f$a;

    const-string v4, "HISTORY_ERROR"

    const-wide/16 v6, 0x1e

    const-string v8, "history error"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/apperhand/device/a/d/f$a;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v3, Lcom/apperhand/device/a/d/f$a;->d:Lcom/apperhand/device/a/d/f$a;

    .line 48
    new-instance v3, Lcom/apperhand/device/a/d/f$a;

    const-string v4, "NOTIFICATION_ERROR"

    const-wide/16 v6, 0x28

    const-string v8, "notification error"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/apperhand/device/a/d/f$a;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v3, Lcom/apperhand/device/a/d/f$a;->e:Lcom/apperhand/device/a/d/f$a;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/apperhand/device/a/d/f$a;

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->b:Lcom/apperhand/device/a/d/f$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->c:Lcom/apperhand/device/a/d/f$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->d:Lcom/apperhand/device/a/d/f$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->e:Lcom/apperhand/device/a/d/f$a;

    aput-object v1, v0, v12

    sput-object v0, Lcom/apperhand/device/a/d/f$a;->h:[Lcom/apperhand/device/a/d/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-wide p3, p0, Lcom/apperhand/device/a/d/f$a;->f:J

    .line 55
    iput-object p5, p0, Lcom/apperhand/device/a/d/f$a;->g:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/device/a/d/f$a;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/apperhand/device/a/d/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/a/d/f$a;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/device/a/d/f$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/apperhand/device/a/d/f$a;->h:[Lcom/apperhand/device/a/d/f$a;

    invoke-virtual {v0}, [Lcom/apperhand/device/a/d/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/device/a/d/f$a;

    return-object v0
.end method
