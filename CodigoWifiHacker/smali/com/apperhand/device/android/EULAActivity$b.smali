.class final Lcom/apperhand/device/android/EULAActivity$b;
.super Landroid/os/AsyncTask;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field final synthetic d:Lcom/apperhand/device/android/EULAActivity;


# direct methods
.method private constructor <init>(Lcom/apperhand/device/android/EULAActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 234
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->a:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->b:Ljava/lang/String;

    .line 235
    iput-boolean p2, p0, Lcom/apperhand/device/android/EULAActivity$b;->c:Z

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/apperhand/device/android/EULAActivity;ZB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lcom/apperhand/device/android/EULAActivity$b;-><init>(Lcom/apperhand/device/android/EULAActivity;Z)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    const-string v2, "offline_startapp_eula_body.htm"

    invoke-virtual {v0, v2}, Lcom/apperhand/device/android/EULAActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    const-string v2, "offline_startapp_eula_footer.htm"

    invoke-virtual {v0, v2}, Lcom/apperhand/device/android/EULAActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "offline_startapp_eula_body.htm"

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->b:Ljava/lang/String;

    .line 245
    const-string v0, "offline_startapp_eula_footer.htm"

    iput-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->a:Ljava/lang/String;

    .line 246
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 275
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    invoke-virtual {v0}, Lcom/apperhand/device/android/EULAActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/offline_startapp_eula_footer.htm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/offline_startapp_eula_body.htm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/eula.zip"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :try_start_0
    iget-object v4, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    invoke-virtual {v4}, Lcom/apperhand/device/android/EULAActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    invoke-virtual {v5}, Lcom/apperhand/device/android/EULAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 263
    const-string v5, "eula.zip"

    invoke-static {v4, v5, v0}, Lcom/apperhand/device/android/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    const-string v4, "offline_startapp_eula_footer.htm"

    invoke-static {v0, v4, v2}, Lcom/apperhand/device/android/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 265
    :try_start_1
    const-string v4, "offline_startapp_eula_body.htm"

    invoke-static {v0, v4, v3}, Lcom/apperhand/device/android/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 267
    :try_start_2
    const-string v3, "offline_startapp_eula_body.htm"

    iput-object v3, p0, Lcom/apperhand/device/android/EULAActivity$b;->b:Ljava/lang/String;

    .line 268
    const-string v3, "offline_startapp_eula_footer.htm"

    iput-object v3, p0, Lcom/apperhand/device/android/EULAActivity$b;->a:Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    const-string v4, "eula.zip"

    invoke-virtual {v3, v4}, Lcom/apperhand/device/android/EULAActivity;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 275
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/apperhand/device/android/EULAActivity$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    iget-object v1, p0, Lcom/apperhand/device/android/EULAActivity$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/apperhand/device/android/EULAActivity$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apperhand/device/android/EULAActivity;->a(Lcom/apperhand/device/android/EULAActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$b;->d:Lcom/apperhand/device/android/EULAActivity;

    invoke-virtual {v0}, Lcom/apperhand/device/android/EULAActivity;->finish()V

    goto :goto_0
.end method
