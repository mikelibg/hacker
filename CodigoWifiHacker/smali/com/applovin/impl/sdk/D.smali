.class Lcom/applovin/impl/sdk/D;
.super Lcom/applovin/impl/sdk/O;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    const-string v0, "CheckSdkUpdates"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/D;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/bootstrap/SdkBootstrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->checkForUpdates()V

    return-void
.end method
