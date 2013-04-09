.class public final enum Lcom/apperhand/common/dto/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/common/dto/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apperhand/common/dto/Status;

.field public static final enum ADD:Lcom/apperhand/common/dto/Status;

.field public static final enum DELETE:Lcom/apperhand/common/dto/Status;

.field public static final enum EXISTS:Lcom/apperhand/common/dto/Status;

.field public static final enum UPDATE:Lcom/apperhand/common/dto/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/apperhand/common/dto/Status;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/common/dto/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/Status;->ADD:Lcom/apperhand/common/dto/Status;

    .line 6
    new-instance v0, Lcom/apperhand/common/dto/Status;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/apperhand/common/dto/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/Status;->DELETE:Lcom/apperhand/common/dto/Status;

    .line 7
    new-instance v0, Lcom/apperhand/common/dto/Status;

    const-string v1, "EXISTS"

    invoke-direct {v0, v1, v4}, Lcom/apperhand/common/dto/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/Status;->EXISTS:Lcom/apperhand/common/dto/Status;

    .line 8
    new-instance v0, Lcom/apperhand/common/dto/Status;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/apperhand/common/dto/Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/Status;->UPDATE:Lcom/apperhand/common/dto/Status;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/apperhand/common/dto/Status;

    sget-object v1, Lcom/apperhand/common/dto/Status;->ADD:Lcom/apperhand/common/dto/Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apperhand/common/dto/Status;->DELETE:Lcom/apperhand/common/dto/Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apperhand/common/dto/Status;->EXISTS:Lcom/apperhand/common/dto/Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apperhand/common/dto/Status;->UPDATE:Lcom/apperhand/common/dto/Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apperhand/common/dto/Status;->$VALUES:[Lcom/apperhand/common/dto/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/common/dto/Status;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/apperhand/common/dto/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Status;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/common/dto/Status;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/apperhand/common/dto/Status;->$VALUES:[Lcom/apperhand/common/dto/Status;

    invoke-virtual {v0}, [Lcom/apperhand/common/dto/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/common/dto/Status;

    return-object v0
.end method
