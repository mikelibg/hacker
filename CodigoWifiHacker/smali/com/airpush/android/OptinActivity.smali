.class public Lcom/airpush/android/OptinActivity;
.super Landroid/app/Activity;
.source "OptinActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/OptinActivity$MyWebViewClient;,
        Lcom/airpush/android/OptinActivity$OptinDialog;
    }
.end annotation


# static fields
.field private static final OPT_IN_TEXT:Ljava/lang/String; = "<html><body style=\'background:#C4C4C4;font-family:Arial;font-size:11pt;line-height:18px\'><p align=\'justify\'>Thank you for downloading this free, ad-supported application! Please read carefully. This application is ad-supported and our advertising partner, Airpush, Inc., may place ads within applications and in your device\'s notification tray and home screen.  Airpush collects certain information in accordance with the permissions you just granted through the prior screen.  When you click on advertisements delivered by Airpush, you will typically be directed to a third party\'s web page and we may pass certain of your information to the third parties operating or hosting these pages, including your email address, phone number and a list of the apps on your device.</p><p align=\'justify\'>  For more information on how Airpush collects, uses and shares your information, and to learn about your information choices, please visit the <a href=\'http://m.airpush.com/privacypolicy\'><i>Airpush Privacy Policy</i> </a>. If you do not wish to receive ads delivered by Airpush in the future, you may visit the <a href=\'http://m.airpush.com/optout\'><i>Airpush opt-out page</i></a> or delete this app.</p></body></html>"

.field private static TAG:Ljava/lang/String; = null

.field private static final TITLE:Ljava/lang/String; = "Privacy Policy & Advertising Terms"

.field private static event:Ljava/lang/String;

.field private static webView:Landroid/webkit/WebView;


# instance fields
.field private adType:Ljava/lang/String;

.field asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/airpush/android/OptinActivity$OptinDialog;

.field private intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "AirpushSDK"

    sput-object v0, Lcom/airpush/android/OptinActivity;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "optOut"

    sput-object v0, Lcom/airpush/android/OptinActivity;->event:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/airpush/android/OptinActivity$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/OptinActivity$1;-><init>(Lcom/airpush/android/OptinActivity;)V

    iput-object v0, p0, Lcom/airpush/android/OptinActivity;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 34
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/airpush/android/OptinActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/airpush/android/OptinActivity;->event:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/airpush/android/OptinActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/airpush/android/OptinActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    sput-object p0, Lcom/airpush/android/OptinActivity;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airpush/android/OptinActivity;->requestWindowFeature(I)Z

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/airpush/android/OptinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DAU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    const-string v2, "adtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/airpush/android/DialogAd;

    iget-object v2, p0, Lcom/airpush/android/OptinActivity;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2, p0}, Lcom/airpush/android/DialogAd;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/airpush/android/OptinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/SetPreferences;->isShowOptinDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Lcom/airpush/android/OptinActivity$OptinDialog;

    invoke-direct {v1, p0, p0}, Lcom/airpush/android/OptinActivity$OptinDialog;-><init>(Lcom/airpush/android/OptinActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/airpush/android/OptinActivity;->dialog:Lcom/airpush/android/OptinActivity$OptinDialog;

    .line 83
    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->dialog:Lcom/airpush/android/OptinActivity$OptinDialog;

    invoke-virtual {v1}, Lcom/airpush/android/OptinActivity$OptinDialog;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x4

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    const-string v1, "DAU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    const-string v1, "DCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 115
    :cond_1
    if-ne p1, v2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/airpush/android/OptinActivity;->dialog:Lcom/airpush/android/OptinActivity$OptinDialog;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/airpush/android/OptinActivity;->dialog:Lcom/airpush/android/OptinActivity$OptinDialog;

    invoke-virtual {v0}, Lcom/airpush/android/OptinActivity$OptinDialog;->dismiss()V

    .line 119
    :cond_2
    sget-object v0, Lcom/airpush/android/OptinActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/airpush/android/OptinActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/airpush/android/OptinActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    const-string v2, "DAU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/OptinActivity;->adType:Ljava/lang/String;

    const-string v2, "DCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/airpush/android/DialogAd;->getDialog()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 92
    invoke-virtual {p0}, Lcom/airpush/android/OptinActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/airpush/android/OptinActivity;->finish()V

    goto :goto_0
.end method
