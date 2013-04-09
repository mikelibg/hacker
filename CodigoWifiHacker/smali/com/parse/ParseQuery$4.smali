.class Lcom/parse/ParseQuery$4;
.super Lcom/parse/FindCallback;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->getFirstInBackground(Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$callback:Lcom/parse/GetCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/GetCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$4;->val$callback:Lcom/parse/GetCallback;

    invoke-direct {p0}, Lcom/parse/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 5
    .parameter
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v4, 0x0

    .line 628
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/parse/ParseQuery$4;->val$callback:Lcom/parse/GetCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v1, v0, p2}, Lcom/parse/GetCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 636
    :goto_0
    return-void

    .line 630
    :cond_0
    if-eqz p2, :cond_1

    .line 631
    iget-object v0, p0, Lcom/parse/ParseQuery$4;->val$callback:Lcom/parse/GetCallback;

    invoke-virtual {v0, v4, p2}, Lcom/parse/GetCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseQuery$4;->val$callback:Lcom/parse/GetCallback;

    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x65

    const-string v3, "no results found for query"

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/parse/GetCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    goto :goto_0
.end method
