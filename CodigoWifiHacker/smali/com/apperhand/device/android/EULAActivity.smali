.class public Lcom/apperhand/device/android/EULAActivity;
.super Landroid/app/Activity;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;,
        Lcom/apperhand/device/android/EULAActivity$c;,
        Lcom/apperhand/device/android/EULAActivity$b;,
        Lcom/apperhand/device/android/EULAActivity$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/view/View;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->a:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity;->c:Z

    .line 47
    iput-object v1, p0, Lcom/apperhand/device/android/EULAActivity;->d:Landroid/view/View;

    .line 48
    iput-object v1, p0, Lcom/apperhand/device/android/EULAActivity;->e:Landroid/webkit/WebView;

    .line 49
    iput-object v1, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    .line 50
    iput-object v1, p0, Lcom/apperhand/device/android/EULAActivity;->g:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/apperhand/device/android/EULAActivity;->h:Landroid/content/BroadcastReceiver;

    .line 54
    iput v2, p0, Lcom/apperhand/device/android/EULAActivity;->i:I

    .line 56
    iput-boolean v2, p0, Lcom/apperhand/device/android/EULAActivity;->j:Z

    .line 64
    iput-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    .line 65
    iput-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->p:J

    .line 67
    iput-object v1, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/apperhand/device/android/EULAActivity;->r:I

    return p1
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity;->h:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 295
    new-instance v0, Lcom/apperhand/device/android/EULAActivity$c;

    invoke-direct {v0, p0}, Lcom/apperhand/device/android/EULAActivity$c;-><init>(Lcom/apperhand/device/android/EULAActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 296
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 297
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 298
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 299
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 300
    return-void
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/apperhand/device/android/EULAActivity;->i:I

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/apperhand/common/dto/EULAAcceptDetails;

    invoke-direct {v2}, Lcom/apperhand/common/dto/EULAAcceptDetails;-><init>()V

    invoke-virtual {v2, p2}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setButton(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setTemplate(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setAccepted(Z)V

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "default"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setChain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setStep(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    iget-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->p:J

    add-long/2addr v3, v8

    iput-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->p:J

    const-string v0, "com.apperhand.global"

    invoke-virtual {p0, v0, v6}, Lcom/apperhand/device/android/EULAActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "EulaCounter"

    iget-wide v4, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "EulaGlobalCounter"

    iget-wide v4, p0, Lcom/apperhand/device/android/EULAActivity;->p:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    invoke-virtual {v2, v3, v4}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setCounter(J)V

    iget-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->p:J

    invoke-virtual {v2, v3, v4}, Lcom/apperhand/common/dto/EULAAcceptDetails;->setGlobalCounter(J)V

    const-string v0, "eulaAcceptDetails"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lcom/apperhand/device/android/EULAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/apperhand/device/android/a;

    invoke-direct {v0, p0}, Lcom/apperhand/device/android/a;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/apperhand/device/android/a;->a:Landroid/content/Context;

    const-string v1, "com.apperhand.global"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACCEPTED_EULA"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/apperhand/device/android/EULAActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Lcom/apperhand/device/android/AndroidSDKProvider;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/apperhand/device/android/EULAActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v0, "default"

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->m:Ljava/lang/String;

    new-instance v0, Lcom/apperhand/device/android/EULAActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/apperhand/device/android/EULAActivity$b;-><init>(Lcom/apperhand/device/android/EULAActivity;ZB)V

    invoke-virtual {v0, v2}, Lcom/apperhand/device/android/EULAActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 190
    sget-object v1, Lcom/apperhand/device/a/b/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    const-string v2, "com.apperhand.global"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/apperhand/device/android/EULAActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 193
    const-string v3, "NewEulaChain"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apperhand/device/android/EULAActivity;->l:Ljava/lang/String;

    .line 194
    const-string v3, "NewStep"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apperhand/device/android/EULAActivity;->m:Ljava/lang/String;

    .line 195
    const-string v3, "NewEulaTemplate"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apperhand/device/android/EULAActivity;->n:Ljava/lang/String;

    .line 196
    const-string v3, "EulaCounter"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apperhand/device/android/EULAActivity;->o:J

    .line 197
    const-string v3, "EulaGlobalCounter"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/apperhand/device/android/EULAActivity;->p:J

    .line 199
    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->n:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 200
    :cond_0
    monitor-exit v1

    .line 206
    :goto_0
    return v0

    .line 202
    :cond_1
    const-string v2, "new_eula_body.htm"

    invoke-virtual {p0, v2}, Lcom/apperhand/device/android/EULAActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "new_eula_footer.htm"

    invoke-virtual {p0, v2}, Lcom/apperhand/device/android/EULAActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_2
    monitor-exit v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/apperhand/device/android/EULAActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/apperhand/device/android/EULAActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/apperhand/device/android/EULAActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/apperhand/device/android/EULAActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/apperhand/device/android/EULAActivity;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/apperhand/device/android/EULAActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/apperhand/device/android/EULAActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/apperhand/device/android/EULAActivity;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/apperhand/device/android/EULAActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->h:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic e(Lcom/apperhand/device/android/EULAActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/apperhand/device/android/EULAActivity;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/apperhand/device/android/EULAActivity;->i:I

    return v0
.end method

.method static synthetic f(Lcom/apperhand/device/android/EULAActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/apperhand/device/android/EULAActivity;->i:I

    return v0
.end method

.method static synthetic g(Lcom/apperhand/device/android/EULAActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/apperhand/device/android/EULAActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/apperhand/device/android/EULAActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic j(Lcom/apperhand/device/android/EULAActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/apperhand/device/android/EULAActivity;->r:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity;->j:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 402
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v6, 0x4100

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apperhand/device/android/EULAActivity;->requestWindowFeature(I)Z

    .line 76
    new-instance v0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;

    invoke-direct {v0, p0}, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;-><init>(Lcom/apperhand/device/android/EULAActivity;)V

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->b:Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;

    .line 77
    invoke-virtual {p0}, Lcom/apperhand/device/android/EULAActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->k:Ljava/lang/String;

    .line 78
    iput-boolean v7, p0, Lcom/apperhand/device/android/EULAActivity;->j:Z

    .line 79
    invoke-virtual {p0}, Lcom/apperhand/device/android/EULAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 80
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 84
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 87
    const/high16 v2, 0x41a0

    mul-float/2addr v2, v0

    add-float/2addr v2, v8

    float-to-int v2, v2

    const/high16 v3, 0x41a0

    mul-float/2addr v0, v3

    add-float/2addr v0, v8

    float-to-int v0, v0

    invoke-virtual {v1, v2, v7, v0, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 89
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->e:Landroid/webkit/WebView;

    .line 90
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    .line 92
    const-string v0, "License Agreement"

    .line 93
    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->e:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    invoke-static {p0, v0, v2, v3}, Lcom/apperhand/device/android/c/e;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/WebView;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->d:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->e:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/apperhand/device/android/EULAActivity;->a(Landroid/webkit/WebView;)V

    .line 96
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/apperhand/device/android/EULAActivity;->a(Landroid/webkit/WebView;)V

    .line 98
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->f:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->b:Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;

    const-string v3, "startapp"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/apperhand/device/android/c/b;

    invoke-direct {v3}, Lcom/apperhand/device/android/c/b;-><init>()V

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v5, -0x3000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    mul-float v3, v6, v0

    add-float/2addr v3, v8

    float-to-int v3, v3

    const/high16 v4, 0x4120

    mul-float/2addr v4, v0

    add-float/2addr v4, v8

    float-to-int v4, v4

    mul-float v5, v6, v0

    add-float/2addr v5, v8

    float-to-int v5, v5

    const/high16 v6, 0x4120

    mul-float/2addr v6, v0

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x4140

    mul-float/2addr v0, v5

    add-float/2addr v0, v8

    float-to-int v0, v0

    invoke-virtual {v4, v7, v7, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x2710

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "Loading..."

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->g:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->d:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    new-instance v0, Lcom/apperhand/device/android/EULAActivity$a;

    invoke-direct {v0, p0}, Lcom/apperhand/device/android/EULAActivity$a;-><init>(Lcom/apperhand/device/android/EULAActivity;)V

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    .line 110
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    invoke-virtual {p0}, Lcom/apperhand/device/android/EULAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/apperhand/device/android/EULAActivity;->setRequestedOrientation(I)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/apperhand/device/android/EULAActivity;->setContentView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/apperhand/device/android/EULAActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iput-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->h:Landroid/content/BroadcastReceiver;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 413
    iput-object v2, p0, Lcom/apperhand/device/android/EULAActivity;->q:Landroid/os/AsyncTask;

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    return-void
.end method
