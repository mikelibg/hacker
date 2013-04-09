.class Lcom/millennialmedia/android/HandShake$3;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$3;->this$0:Lcom/millennialmedia/android/HandShake;

    iput-object p2, p0, Lcom/millennialmedia/android/HandShake$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/android/HandShake$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 627
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake$3;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 628
    .local v1, overlayDialog:Landroid/app/AlertDialog;
    const-string v2, "Error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 630
    const/4 v2, -0x3

    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/HandShake$3$1;

    invoke-direct {v4, p0, v1}, Lcom/millennialmedia/android/HandShake$3$1;-><init>(Lcom/millennialmedia/android/HandShake$3;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 635
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v1           #overlayDialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
