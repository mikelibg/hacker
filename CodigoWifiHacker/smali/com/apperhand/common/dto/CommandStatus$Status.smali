.class public final enum Lcom/apperhand/common/dto/CommandStatus$Status;
.super Ljava/lang/Enum;
.source "CommandStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/common/dto/CommandStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/common/dto/CommandStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum EXCEPTION:Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum LOG_DUMP:Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum OPT_OUT:Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum SUCCESS_WITH_WARNING:Lcom/apperhand/common/dto/CommandStatus$Status;

.field public static final enum WAITING_FOR_LOG_DUMP:Lcom/apperhand/common/dto/CommandStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 41
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 42
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "EXCEPTION"

    invoke-direct {v0, v1, v5}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->EXCEPTION:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 43
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "SUCCESS_WITH_WARNING"

    invoke-direct {v0, v1, v6}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS_WITH_WARNING:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 44
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "WAITING_FOR_LOG_DUMP"

    invoke-direct {v0, v1, v7}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->WAITING_FOR_LOG_DUMP:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 45
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "LOG_DUMP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->LOG_DUMP:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 46
    new-instance v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    const-string v1, "OPT_OUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/apperhand/common/dto/CommandStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->OPT_OUT:Lcom/apperhand/common/dto/CommandStatus$Status;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/apperhand/common/dto/CommandStatus$Status;

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->FAILURE:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->EXCEPTION:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->SUCCESS_WITH_WARNING:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apperhand/common/dto/CommandStatus$Status;->WAITING_FOR_LOG_DUMP:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apperhand/common/dto/CommandStatus$Status;->LOG_DUMP:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apperhand/common/dto/CommandStatus$Status;->OPT_OUT:Lcom/apperhand/common/dto/CommandStatus$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->$VALUES:[Lcom/apperhand/common/dto/CommandStatus$Status;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/common/dto/CommandStatus$Status;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/CommandStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/common/dto/CommandStatus$Status;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/apperhand/common/dto/CommandStatus$Status;->$VALUES:[Lcom/apperhand/common/dto/CommandStatus$Status;

    invoke-virtual {v0}, [Lcom/apperhand/common/dto/CommandStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/common/dto/CommandStatus$Status;

    return-object v0
.end method
