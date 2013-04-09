.class Lcom/millennialmedia/android/MMMedia$2;
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

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$2;->this$0:Lcom/millennialmedia/android/MMMedia;

    iput-object p2, p0, Lcom/millennialmedia/android/MMMedia$2;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$2;->this$0:Lcom/millennialmedia/android/MMMedia;

    new-instance v2, Lcom/millennialmedia/android/MMMedia$2$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMMedia$2$1;-><init>(Lcom/millennialmedia/android/MMMedia$2;)V

    #setter for: Lcom/millennialmedia/android/MMMedia;->tmpActivity:Landroid/app/Activity;
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMMedia;->access$102(Lcom/millennialmedia/android/MMMedia;Landroid/app/Activity;)Landroid/app/Activity;

    .line 148
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$2;->this$0:Lcom/millennialmedia/android/MMMedia;

    #getter for: Lcom/millennialmedia/android/MMMedia;->tmpActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia;->access$100(Lcom/millennialmedia/android/MMMedia;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    return-void
.end method
