.class Lcom/pad/android/richmedia/view/AdView$LoadAsync;
.super Landroid/os/AsyncTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAsync"
.end annotation

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


# instance fields
.field private dataToInject:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private location:Ljava/lang/String;

.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "lct"
    .parameter "dTI"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 636
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->is:Ljava/io/InputStream;

    .line 638
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->location:Ljava/lang/String;

    .line 639
    iput-object p3, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->dataToInject:Ljava/lang/String;

    .line 640
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 647
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->location:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 648
    .local v3, u:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->location:Ljava/lang/String;

    const-string v5, "file:///android_asset/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->location:Ljava/lang/String;

    const-string v5, "file:///android_asset/"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 652
    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v4}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 653
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->is:Ljava/io/InputStream;

    .line 667
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #u:Ljava/net/URL;
    :goto_0
    return-object v7

    .line 655
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #u:Ljava/net/URL;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 660
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #u:Ljava/net/URL;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 661
    :catch_1
    move-exception v1

    .line 662
    .local v1, e:Ljava/io/IOException;
    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOStateException - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v4, "LBAdController"

    invoke-static {v4, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->is:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->dataToInject:Ljava/lang/String;

    #calls: Lcom/pad/android/richmedia/view/AdView;->loadInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView;->access$17(Lcom/pad/android/richmedia/view/AdView;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 677
    :cond_0
    return-void
.end method
