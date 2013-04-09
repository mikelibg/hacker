.class final Lcom/parse/ParseCloud$1;
.super Lcom/parse/BackgroundTask;
.source "ParseCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$command:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Lcom/parse/ParseCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    .local p1, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<TT;>;"
    iput-object p2, p0, Lcom/parse/ParseCloud$1;->val$command:Lcom/parse/ParseCommand;

    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lcom/parse/ParseCloud$1;->val$command:Lcom/parse/ParseCommand;

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, result:Ljava/lang/Object;
    #calls: Lcom/parse/ParseCloud;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseCloud;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
