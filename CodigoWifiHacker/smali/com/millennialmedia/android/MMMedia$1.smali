.class Lcom/millennialmedia/android/MMMedia$1;
.super Ljava/lang/Object;
.source "MMMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia;->getPicture(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMMedia;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    iput-object p2, p0, Lcom/millennialmedia/android/MMMedia$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/millennialmedia/android/MMMedia$1;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/millennialmedia/android/MMMedia$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tmp_mm_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #setter for: Lcom/millennialmedia/android/MMMedia;->tmpFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMMedia;->access$002(Lcom/millennialmedia/android/MMMedia;Ljava/io/File;)Ljava/io/File;

    .line 105
    const-string v1, "output"

    iget-object v2, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    #getter for: Lcom/millennialmedia/android/MMMedia;->tmpFile:Ljava/io/File;
    invoke-static {v2}, Lcom/millennialmedia/android/MMMedia;->access$000(Lcom/millennialmedia/android/MMMedia;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    new-instance v2, Lcom/millennialmedia/android/MMMedia$1$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMMedia$1$1;-><init>(Lcom/millennialmedia/android/MMMedia$1;)V

    #setter for: Lcom/millennialmedia/android/MMMedia;->tmpActivity:Landroid/app/Activity;
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMMedia;->access$102(Lcom/millennialmedia/android/MMMedia;Landroid/app/Activity;)Landroid/app/Activity;

    .line 114
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    #getter for: Lcom/millennialmedia/android/MMMedia;->tmpActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia;->access$100(Lcom/millennialmedia/android/MMMedia;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method
