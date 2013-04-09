.class final enum Lcom/parse/PushService$ServiceState;
.super Ljava/lang/Enum;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/PushService$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/PushService$ServiceState;

.field public static final enum ABORTING:Lcom/parse/PushService$ServiceState;

.field public static final enum DESTRUCTING:Lcom/parse/PushService$ServiceState;

.field public static final enum RUNNING:Lcom/parse/PushService$ServiceState;

.field public static final enum STOPPED:Lcom/parse/PushService$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/parse/PushService$ServiceState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/parse/PushService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    .line 93
    new-instance v0, Lcom/parse/PushService$ServiceState;

    const-string v1, "ABORTING"

    invoke-direct {v0, v1, v3}, Lcom/parse/PushService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushService$ServiceState;->ABORTING:Lcom/parse/PushService$ServiceState;

    .line 94
    new-instance v0, Lcom/parse/PushService$ServiceState;

    const-string v1, "DESTRUCTING"

    invoke-direct {v0, v1, v4}, Lcom/parse/PushService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    .line 95
    new-instance v0, Lcom/parse/PushService$ServiceState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/parse/PushService$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushService$ServiceState;->RUNNING:Lcom/parse/PushService$ServiceState;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parse/PushService$ServiceState;

    sget-object v1, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/PushService$ServiceState;->ABORTING:Lcom/parse/PushService$ServiceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/PushService$ServiceState;->RUNNING:Lcom/parse/PushService$ServiceState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parse/PushService$ServiceState;->$VALUES:[Lcom/parse/PushService$ServiceState;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/PushService$ServiceState;
    .locals 1
    .parameter "name"

    .prologue
    .line 91
    const-class v0, Lcom/parse/PushService$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/PushService$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/parse/PushService$ServiceState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/parse/PushService$ServiceState;->$VALUES:[Lcom/parse/PushService$ServiceState;

    invoke-virtual {v0}, [Lcom/parse/PushService$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/PushService$ServiceState;

    return-object v0
.end method
