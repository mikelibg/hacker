.class Lcom/airpush/android/HandleClicks;
.super Ljava/lang/Object;
.source "HandleClicks.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "AirpushSDK"

    iput-object v0, p0, Lcom/airpush/android/HandleClicks;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/airpush/android/HandleClicks;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method callNumber()V
    .locals 4

    .prologue
    .line 21
    const-string v1, "AirpushSDK"

    const-string v2, "Pushing CC Ads....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/HandleClicks;->uri:Landroid/net/Uri;

    .line 24
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    iget-object v3, p0, Lcom/airpush/android/HandleClicks;->uri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error whlie displaying push ad......: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method displayUrl()V
    .locals 4

    .prologue
    .line 50
    const-string v1, "AirpushSDK"

    const-string v2, "Pushing Web and App Ads....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcom/airpush/android/Util;->getNotificationUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error whlie displaying push ad......: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendSms()V
    .locals 4

    .prologue
    .line 35
    :try_start_0
    const-string v1, "AirpushSDK"

    const-string v2, "Pushing CM Ads....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    const-string v2, "address"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    const-string v2, "sms_body"

    invoke-static {}, Lcom/airpush/android/Util;->getSms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/airpush/android/HandleClicks;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/HandleClicks;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error whlie displaying push ad......: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
