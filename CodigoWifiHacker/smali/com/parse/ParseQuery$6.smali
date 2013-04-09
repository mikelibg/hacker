.class Lcom/parse/ParseQuery$6;
.super Lcom/parse/BackgroundTask;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$finalObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Lcom/parse/ParseObject;>;"
    iput-object p1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    iput-object p3, p0, Lcom/parse/ParseQuery$6;->val$finalObjectId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/parse/ParseObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 775
    iget-object v1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$6;->val$finalObjectId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseQuery;->get(Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v0

    .line 776
    .local v0, result:Lcom/parse/ParseObject;
    iget-object v1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    #setter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1, v2}, Lcom/parse/ParseQuery;->access$502(Lcom/parse/ParseQuery;Lcom/parse/ParseCommand;)Lcom/parse/ParseCommand;

    .line 777
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/parse/ParseQuery$6;->run()Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
