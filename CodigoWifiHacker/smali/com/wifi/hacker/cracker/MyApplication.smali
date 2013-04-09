.class public Lcom/wifi/hacker/cracker/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    sget-object v1, Lcom/wifi/hacker/cracker/BootReceiver;->PARSE_APPID:Ljava/lang/String;

    sget-object v2, Lcom/wifi/hacker/cracker/BootReceiver;->PARSE_CLIENTKEY:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "true"

    const-string v2, "has_subscribed"

    const-string v3, "false"

    invoke-static {p0, v2, v3}, Lcom/wifi/hacker/cracker/BootReceiver;->getSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    .local v0, hasSubscribed:Z
    if-nez v0, :cond_0

    .line 21
    const-string v1, ""

    const-class v2, Lcom/wifi/hacker/cracker/MainActivity;

    invoke-static {p0, v1, v2}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    const-class v1, Lcom/wifi/hacker/cracker/MainActivity;

    invoke-static {p0, v1}, Lcom/parse/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const-string v1, "has_subscribed"

    const-string v2, "true"

    invoke-static {p0, v1, v2}, Lcom/wifi/hacker/cracker/BootReceiver;->putSharedPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
