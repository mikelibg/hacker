.class Lcom/pad/android/richmedia/view/AdView$LoadInputStream;
.super Landroid/os/AsyncTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadInputStream"
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

.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "i"
    .parameter "dti"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->this$0:Lcom/pad/android/richmedia/view/AdView;

    .line 549
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->url:Ljava/lang/String;

    .line 551
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    .line 552
    iput-object p3, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->dataToInject:Ljava/lang/String;

    .line 553
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 559
    :try_start_0
    iget-object v8, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;
    invoke-static {v0}, Lcom/pad/android/richmedia/view/AdView;->access$9(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/controller/AdUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    .line 560
    const-string v2, "_ormma_current"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->dataToInject:Ljava/lang/String;

    invoke-static {}, Lcom/pad/android/richmedia/view/AdView;->access$12()Ljava/lang/String;

    move-result-object v5

    .line 561
    invoke-static {}, Lcom/pad/android/richmedia/view/AdView;->access$13()Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-virtual/range {v0 .. v6}, Lcom/pad/android/iappad/controller/AdUtilityController;->writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/pad/android/richmedia/view/AdView;->access$14(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->this$0:Lcom/pad/android/richmedia/view/AdView;

    #getter for: Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/pad/android/richmedia/view/AdView;->access$15(Lcom/pad/android/richmedia/view/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    const-string v1, "_ormma_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 574
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :cond_0
    :goto_0
    iput-object v9, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    .line 583
    :goto_1
    return-object v9

    .line 566
    :catch_0
    move-exception v7

    .line 567
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IllegalStateException - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "LBAdController"

    invoke-static {v0, v7}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 576
    :try_start_3
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 581
    :cond_1
    :goto_2
    iput-object v9, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    goto :goto_1

    .line 569
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 570
    .local v7, e:Ljava/io/IOException;
    :try_start_4
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "LBAdController"

    invoke-static {v0, v7}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 574
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 576
    :try_start_5
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 581
    :cond_2
    :goto_3
    iput-object v9, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    goto :goto_1

    .line 573
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 574
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 576
    :try_start_6
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 581
    :cond_3
    :goto_4
    iput-object v9, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->is:Ljava/io/InputStream;

    .line 582
    throw v0

    .line 577
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_4

    .restart local v7       #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    goto :goto_3

    .local v7, e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "res"

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->dataToInject:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 593
    const-string v1, "AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataToInject - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->dataToInject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->dataToInject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->this$0:Lcom/pad/android/richmedia/view/AdView;

    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->url:Ljava/lang/String;

    #calls: Lcom/pad/android/richmedia/view/AdView;->superviewLoad(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/pad/android/richmedia/view/AdView;->access$16(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalStateException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
