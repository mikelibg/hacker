.class Lcom/parse/ParsePushRouter$1$1;
.super Lcom/parse/BackgroundTask;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushRouter$1;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePushRouter$1;


# direct methods
.method constructor <init>(Lcom/parse/ParsePushRouter$1;Lcom/parse/ParseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/parse/ParsePushRouter$1$1;->this$0:Lcom/parse/ParsePushRouter$1;

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/parse/ParsePushRouter$1$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parse/ParsePushRouter$1$1;->this$0:Lcom/parse/ParsePushRouter$1;

    iget-object v0, v0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    #calls: Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/parse/ParsePushRouter;->access$000(Landroid/content/Context;)V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method