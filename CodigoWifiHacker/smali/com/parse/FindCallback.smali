.class public abstract Lcom/parse/FindCallback;
.super Lcom/parse/ParseCallback;
.source "FindCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/parse/ParseException;)V
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
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/FindCallback;->internalDone(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method final internalDone(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 0
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
    .line 48
    .local p1, returnValue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-virtual {p0, p1, p2}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    .line 49
    return-void
.end method