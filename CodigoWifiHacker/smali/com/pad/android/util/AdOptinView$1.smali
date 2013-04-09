.class Lcom/pad/android/util/AdOptinView$1;
.super Landroid/webkit/WebChromeClient;
.source "AdOptinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/util/AdOptinView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    .line 63
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    const v1, 0x104000a

    .line 70
    new-instance v2, Lcom/pad/android/util/AdOptinView$1$1;

    invoke-direct {v2, p0, p4}, Lcom/pad/android/util/AdOptinView$1$1;-><init>(Lcom/pad/android/util/AdOptinView$1;Landroid/webkit/JsResult;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
