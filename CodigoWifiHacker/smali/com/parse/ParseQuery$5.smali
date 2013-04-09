.class Lcom/parse/ParseQuery$5;
.super Lcom/parse/BackgroundTask;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 697
    iget-object v1, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->count(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 698
    .local v0, result:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    #setter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1, v2}, Lcom/parse/ParseQuery;->access$502(Lcom/parse/ParseQuery;Lcom/parse/ParseCommand;)Lcom/parse/ParseCommand;

    .line 699
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
    .line 694
    invoke-virtual {p0}, Lcom/parse/ParseQuery$5;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
