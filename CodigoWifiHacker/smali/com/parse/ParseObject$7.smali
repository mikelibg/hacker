.class Lcom/parse/ParseObject$7;
.super Lcom/parse/BackgroundTask;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteEventually(Lcom/parse/DeleteCallback;)V
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$callback:Lcom/parse/DeleteCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;Lcom/parse/DeleteCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/ParseObject$7;->val$callback:Lcom/parse/DeleteCallback;

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
    .line 1078
    invoke-virtual {p0}, Lcom/parse/ParseObject$7;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    .line 1082
    .local v0, cache:Lcom/parse/ParseCommandCache;
    iget-object v1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    #calls: Lcom/parse/ParseObject;->constructDeleteCommand(Z)Lcom/parse/ParseCommand;
    invoke-static {v1, v2}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;Z)Lcom/parse/ParseCommand;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseObject$7;->val$callback:Lcom/parse/DeleteCallback;

    iget-object v3, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/ParseCommandCache;->runEventually(Lcom/parse/ParseCommand;Lcom/parse/ParseCallback;Lcom/parse/ParseObject;)V

    .line 1083
    const/4 v1, 0x0

    return-object v1
.end method
