.class Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebChromeClient"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/pad/android/iappad/AdWebView;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/AdWebView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;->this$0:Lcom/pad/android/iappad/AdWebView;

    .line 298
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;->ctx:Landroid/content/Context;

    .line 301
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
    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    const v1, 0x104000a

    .line 309
    new-instance v2, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$1;

    invoke-direct {v2, p0, p4}, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$1;-><init>(Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 324
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 325
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    const v1, 0x104000a

    new-instance v2, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$2;-><init>(Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    const/high16 v1, 0x104

    new-instance v2, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$3;

    invoke-direct {v2, p0, p4}, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$3;-><init>(Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 338
    const/4 v0, 0x1

    return v0
.end method
