.class Lcom/applovin/impl/adview/j;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "http://schemas.applovin.com/android/1.0"

    const-string v2, "size"

    invoke-interface {p0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/util/AttributeSet;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v0, "http://schemas.applovin.com/android/1.0"

    const-string v1, "placement"

    invoke-interface {p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static b(Landroid/util/AttributeSet;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "http://schemas.applovin.com/android/1.0"

    const-string v2, "loadAdOnCreate"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
