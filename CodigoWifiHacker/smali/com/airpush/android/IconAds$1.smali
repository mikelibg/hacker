.class Lcom/airpush/android/IconAds$1;
.super Ljava/lang/Object;
.source "IconAds.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/IconAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airpush/android/AsyncTaskCompleteListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/IconAds;


# direct methods
.method constructor <init>(Lcom/airpush/android/IconAds;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/IconAds$1;->this$0:Lcom/airpush/android/IconAds;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/airpush/android/ImageTask;

    iget-object v1, p0, Lcom/airpush/android/IconAds$1;->this$0:Lcom/airpush/android/IconAds;

    #getter for: Lcom/airpush/android/IconAds;->iconImage:Ljava/lang/String;
    invoke-static {v1}, Lcom/airpush/android/IconAds;->access$1(Lcom/airpush/android/IconAds;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airpush/android/IconAds$1;->this$0:Lcom/airpush/android/IconAds;

    iget-object v2, v2, Lcom/airpush/android/IconAds;->getIconImageListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-direct {v0, v1, v2}, Lcom/airpush/android/ImageTask;-><init>(Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 50
    .local v0, imageTask:Lcom/airpush/android/ImageTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/airpush/android/ImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method public onTaskComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/airpush/android/IconAds$1;->this$0:Lcom/airpush/android/IconAds;

    #setter for: Lcom/airpush/android/IconAds;->bmpicon:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/airpush/android/IconAds;->access$0(Lcom/airpush/android/IconAds;Landroid/graphics/Bitmap;)V

    .line 43
    iget-object v0, p0, Lcom/airpush/android/IconAds$1;->this$0:Lcom/airpush/android/IconAds;

    invoke-virtual {v0}, Lcom/airpush/android/IconAds;->createShortcut()V

    .line 45
    :cond_0
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/airpush/android/IconAds$1;->onTaskComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method
