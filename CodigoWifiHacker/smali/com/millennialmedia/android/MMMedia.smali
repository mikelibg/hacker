.class Lcom/millennialmedia/android/MMMedia;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMMedia.java"


# instance fields
.field private tmpActivity:Landroid/app/Activity;

.field private tmpFile:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMMedia;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia;->tmpFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/android/MMMedia;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia;->tmpFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMMedia;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia;->tmpActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/MMMedia;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia;->tmpActivity:Landroid/app/Activity;

    return-object p1
.end method

.method private isCameraAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 30
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 39
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private isPictureChooserAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 45
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 53
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method


# virtual methods
.method public availableSourceTypes(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v0, jsonArray:Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isPictureChooserAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "Photo Library"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 79
    .local v1, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 80
    iput-object v0, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 81
    return-object v1
.end method

.method public getPicture(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSourceTypeAvailable(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sourceType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 61
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 63
    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isPictureChooserAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 220
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, path:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 223
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mmsyscache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "creativecache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, file:Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 231
    .local v2, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 232
    new-instance v4, Lcom/millennialmedia/android/MMMedia$3;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/MMMedia$3;-><init>(Lcom/millennialmedia/android/MMMedia;)V

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 238
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 241
    .end local v1           #file:Ljava/io/File;
    .end local v2           #mp:Landroid/media/MediaPlayer;
    :goto_1
    return-object v4

    .line 226
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creativecache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0

    .line 241
    .end local v1           #file:Ljava/io/File;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method
