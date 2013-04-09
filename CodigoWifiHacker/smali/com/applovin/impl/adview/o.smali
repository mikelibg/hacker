.class Lcom/applovin/impl/adview/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->c:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/o;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/impl/adview/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/adview/p;

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->c:Lcom/applovin/impl/adview/n;

    invoke-static {v1}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/o;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/p;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/p;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/adview/p;->show()V

    return-void
.end method
