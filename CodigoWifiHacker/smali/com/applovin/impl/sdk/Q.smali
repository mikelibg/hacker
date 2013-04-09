.class Lcom/applovin/impl/sdk/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/P;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/P;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/Q;->a:Lcom/applovin/impl/sdk/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/Q;->a:Lcom/applovin/impl/sdk/P;

    iget-object v0, v0, Lcom/applovin/impl/sdk/P;->a:Lcom/applovin/impl/sdk/M;

    iget-object v0, v0, Lcom/applovin/impl/sdk/M;->b:Lcom/applovin/sdk/Logger;

    const-string v1, "TaskManager"

    const-string v2, "Caught unhandeled exception"

    invoke-interface {v0, v1, v2, p2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
