.class Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$3;
.super Ljava/lang/Object;
.source "AdWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$3;->this$1:Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;

    iput-object p2, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 335
    return-void
.end method
