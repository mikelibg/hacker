.class public Lcom/applovin/impl/adview/AdWebViewJsInterface;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/adview/n;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdWebViewJsInterface;->a:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/AdWebViewJsInterface;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applovin://com.applovin.sdk/adservice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdWebViewJsInterface;->showUrl(Ljava/lang/String;)V

    return-void
.end method

.method public showUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdWebViewJsInterface;->a:Lcom/applovin/impl/adview/n;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdWebViewJsInterface;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/adview/n;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
