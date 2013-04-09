.class public final enum Lcom/revmob/ads/internal/LoadError;
.super Ljava/lang/Enum;
.source "LoadError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/revmob/ads/internal/LoadError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revmob/ads/internal/LoadError;

.field public static final enum DEVICE_NOT_IDENTIFIED:Lcom/revmob/ads/internal/LoadError;

.field public static final enum DOWNLOAD_ERROR:Lcom/revmob/ads/internal/LoadError;

.field public static final enum INVALID_ACTIVITY:Lcom/revmob/ads/internal/LoadError;

.field public static final enum NOT_STARTED_SESSION:Lcom/revmob/ads/internal/LoadError;

.field public static final enum PARSE_FAILED:Lcom/revmob/ads/internal/LoadError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/revmob/ads/internal/LoadError;

    const-string v1, "DEVICE_NOT_IDENTIFIED"

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/internal/LoadError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/LoadError;->DEVICE_NOT_IDENTIFIED:Lcom/revmob/ads/internal/LoadError;

    .line 17
    new-instance v0, Lcom/revmob/ads/internal/LoadError;

    const-string v1, "DOWNLOAD_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/revmob/ads/internal/LoadError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/LoadError;->DOWNLOAD_ERROR:Lcom/revmob/ads/internal/LoadError;

    .line 24
    new-instance v0, Lcom/revmob/ads/internal/LoadError;

    const-string v1, "PARSE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/revmob/ads/internal/LoadError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/LoadError;->PARSE_FAILED:Lcom/revmob/ads/internal/LoadError;

    .line 32
    new-instance v0, Lcom/revmob/ads/internal/LoadError;

    const-string v1, "INVALID_ACTIVITY"

    invoke-direct {v0, v1, v5}, Lcom/revmob/ads/internal/LoadError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/LoadError;->INVALID_ACTIVITY:Lcom/revmob/ads/internal/LoadError;

    .line 34
    new-instance v0, Lcom/revmob/ads/internal/LoadError;

    const-string v1, "NOT_STARTED_SESSION"

    invoke-direct {v0, v1, v6}, Lcom/revmob/ads/internal/LoadError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/LoadError;->NOT_STARTED_SESSION:Lcom/revmob/ads/internal/LoadError;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/revmob/ads/internal/LoadError;

    sget-object v1, Lcom/revmob/ads/internal/LoadError;->DEVICE_NOT_IDENTIFIED:Lcom/revmob/ads/internal/LoadError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/revmob/ads/internal/LoadError;->DOWNLOAD_ERROR:Lcom/revmob/ads/internal/LoadError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/revmob/ads/internal/LoadError;->PARSE_FAILED:Lcom/revmob/ads/internal/LoadError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/revmob/ads/internal/LoadError;->INVALID_ACTIVITY:Lcom/revmob/ads/internal/LoadError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/revmob/ads/internal/LoadError;->NOT_STARTED_SESSION:Lcom/revmob/ads/internal/LoadError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/revmob/ads/internal/LoadError;->$VALUES:[Lcom/revmob/ads/internal/LoadError;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revmob/ads/internal/LoadError;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/revmob/ads/internal/LoadError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/internal/LoadError;

    return-object v0
.end method

.method public static values()[Lcom/revmob/ads/internal/LoadError;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/revmob/ads/internal/LoadError;->$VALUES:[Lcom/revmob/ads/internal/LoadError;

    invoke-virtual {v0}, [Lcom/revmob/ads/internal/LoadError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revmob/ads/internal/LoadError;

    return-object v0
.end method
