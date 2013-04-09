.class Lcom/millennialmedia/android/MMMedia$2$1;
.super Landroid/app/Activity;
.source "MMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMMedia$2;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia$2;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$2$1;->this$1:Lcom/millennialmedia/android/MMMedia$2;

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, contentUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/MMMedia$2$1;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 140
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 141
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$2$1;->this$1:Lcom/millennialmedia/android/MMMedia$2;

    iget-object v0, v0, Lcom/millennialmedia/android/MMMedia$2;->this$0:Lcom/millennialmedia/android/MMMedia;

    new-instance v3, Ljava/io/File;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/millennialmedia/android/MMMedia;->tmpFile:Ljava/io/File;
    invoke-static {v0, v3}, Lcom/millennialmedia/android/MMMedia;->access$002(Lcom/millennialmedia/android/MMMedia;Ljava/io/File;)Ljava/io/File;

    .line 143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 145
    .end local v6           #column_index:I
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$2$1;->this$1:Lcom/millennialmedia/android/MMMedia$2;

    iget-object v3, v0, Lcom/millennialmedia/android/MMMedia$2;->val$lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$2$1;->this$1:Lcom/millennialmedia/android/MMMedia$2;

    iget-object v0, v0, Lcom/millennialmedia/android/MMMedia$2;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
