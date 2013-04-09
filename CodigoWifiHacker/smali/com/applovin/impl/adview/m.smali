.class Lcom/applovin/impl/adview/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAdSize;

.field final synthetic b:Lcom/applovin/impl/adview/n;

.field final synthetic c:Lcom/applovin/impl/adview/l;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/l;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/adview/n;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/m;->c:Lcom/applovin/impl/adview/l;

    iput-object p2, p0, Lcom/applovin/impl/adview/m;->a:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p3, p0, Lcom/applovin/impl/adview/m;->b:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/applovin/impl/adview/m;->a:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v0, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/m;->b:Lcom/applovin/impl/adview/n;

    iget-object v2, p0, Lcom/applovin/impl/adview/m;->c:Lcom/applovin/impl/adview/l;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/l;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_4
    move v1, v2

    goto :goto_2
.end method
