.class abstract Lcom/applovin/impl/sdk/T;
.super Lcom/applovin/impl/sdk/O;

# interfaces
.implements Lcom/applovin/impl/sdk/i;


# instance fields
.field private a:I

.field private final b:Lcom/applovin/impl/sdk/i;

.field private g:Lcom/applovin/impl/sdk/y;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/T;->g:Lcom/applovin/impl/sdk/y;

    iput p2, p0, Lcom/applovin/impl/sdk/T;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/U;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/U;-><init>(Lcom/applovin/impl/sdk/T;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/T;->b:Lcom/applovin/impl/sdk/i;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/T;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/T;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/T;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/T;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/T;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/T;I)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/T;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/impl/sdk/T;->a:I

    return v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/T;->g:Lcom/applovin/impl/sdk/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/T;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/T;->g:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/T;->g:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/y;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/T;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/T;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/i;)V
.end method

.method public a(Lcom/applovin/impl/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/T;->g:Lcom/applovin/impl/sdk/y;

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/T;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/T;->b:Lcom/applovin/impl/sdk/i;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/T;->a(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/i;)V

    return-void
.end method
