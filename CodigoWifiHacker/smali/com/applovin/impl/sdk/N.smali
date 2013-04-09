.class final enum Lcom/applovin/impl/sdk/N;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/N;

.field public static final enum b:Lcom/applovin/impl/sdk/N;

.field private static final synthetic c:[Lcom/applovin/impl/sdk/N;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/N;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/N;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    new-instance v0, Lcom/applovin/impl/sdk/N;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/N;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/N;->b:Lcom/applovin/impl/sdk/N;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applovin/impl/sdk/N;

    sget-object v1, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/N;->b:Lcom/applovin/impl/sdk/N;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applovin/impl/sdk/N;->c:[Lcom/applovin/impl/sdk/N;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
