.class public Lcom/applovin/impl/sdk/AppLovinSdkImpl;
.super Lcom/applovin/sdk/AppLovinSdk;


# static fields
.field public static final FULL_VERSION:Ljava/lang/String; = "4.2.0-4.2.1"

.field public static final IMPL_VERSION:Ljava/lang/String; = "4.2.1"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private c:Landroid/content/Context;

.field private d:Lcom/applovin/sdk/Logger;

.field private e:Lcom/applovin/impl/sdk/q;

.field private f:Lcom/applovin/impl/sdk/M;

.field private g:Lcom/applovin/impl/sdk/z;

.field private h:Lcom/applovin/impl/sdk/h;

.field private i:Lcom/applovin/impl/sdk/A;

.field private j:Lcom/applovin/impl/sdk/ae;

.field private k:Lcom/applovin/impl/sdk/f;

.field private l:Lcom/applovin/impl/sdk/b;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/applovin/sdk/AppLovinSdk;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Z

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Z

    return-void
.end method

.method private static h()Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/M;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/M;

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Z

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Z

    return-void
.end method

.method b()Lcom/applovin/impl/sdk/q;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/q;

    return-object v0
.end method

.method c()Lcom/applovin/impl/sdk/A;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/A;

    return-object v0
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Z

    return v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->o:Z

    return v0
.end method

.method f()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->m:Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/M;

    new-instance v1, Lcom/applovin/impl/sdk/L;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/L;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/L;J)V

    return-void
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->d()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/A;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/A;->a()V

    return-void
.end method

.method public getAdService()Lcom/applovin/sdk/AppLovinAdService;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/b;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getConnectionManager()Lcom/applovin/impl/sdk/h;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/h;

    return-object v0
.end method

.method public getLogger()Lcom/applovin/sdk/Logger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Lcom/applovin/sdk/Logger;

    return-object v0
.end method

.method public getSdkKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public getSettingsManager()Lcom/applovin/impl/sdk/z;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    return-object v0
.end method

.method public getTargetingData()Lcom/applovin/sdk/AppLovinTargetingData;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/f;

    return-object v0
.end method

.method public hasCriticalErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initialize(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b:Lcom/applovin/sdk/AppLovinSdkSettings;

    iput-object p3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c:Landroid/content/Context;

    new-instance v1, Lcom/applovin/impl/sdk/t;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/t;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d:Lcom/applovin/sdk/Logger;

    new-instance v0, Lcom/applovin/impl/sdk/z;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/z;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    new-instance v0, Lcom/applovin/impl/sdk/q;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/q;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/q;

    new-instance v0, Lcom/applovin/impl/sdk/M;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/M;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f:Lcom/applovin/impl/sdk/M;

    new-instance v0, Lcom/applovin/impl/sdk/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/h;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h:Lcom/applovin/impl/sdk/h;

    new-instance v0, Lcom/applovin/impl/sdk/A;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/A;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->i:Lcom/applovin/impl/sdk/A;

    new-instance v0, Lcom/applovin/impl/sdk/ae;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ae;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->j:Lcom/applovin/impl/sdk/ae;

    new-instance v0, Lcom/applovin/impl/sdk/b;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/b;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->l:Lcom/applovin/impl/sdk/b;

    new-instance v0, Lcom/applovin/impl/sdk/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/f;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->k:Lcom/applovin/impl/sdk/f;

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->p:Z

    const-string v0, "AppLovinSdk"

    const-string v2, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->q:Z

    const-string v0, "AppLovinSdk"

    const-string v2, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->hasCriticalErrors()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/q;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/z;)V

    instance-of v0, p2, Lcom/applovin/impl/sdk/s;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/applovin/impl/sdk/s;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->a()Lcom/applovin/impl/sdk/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/u;)V

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->c()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    sget-object v1, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/sdk/AppLovinSdkSettings;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    sget-object v1, Lcom/applovin/impl/sdk/w;->b:Lcom/applovin/impl/sdk/y;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f()V

    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Z)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->n:Z

    return v0
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No version specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    sget-object v1, Lcom/applovin/impl/sdk/w;->H:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g:Lcom/applovin/impl/sdk/z;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    return-void
.end method
