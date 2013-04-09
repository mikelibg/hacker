.class Lcom/applovin/impl/bootstrap/a;
.super Lcom/applovin/sdk/AppLovinSdkUtils;


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/applovin/impl/bootstrap/a;->retrieveMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "applovin.sdk.autoupdate_endpoint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://d.applovin.com/sdk/android"

    goto :goto_0
.end method
