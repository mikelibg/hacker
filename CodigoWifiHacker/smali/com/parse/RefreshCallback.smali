.class public abstract Lcom/parse/RefreshCallback;
.super Lcom/parse/ParseCallback;
.source "RefreshCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
.end method

.method final internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "returnValue"
    .parameter "e"

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/parse/RefreshCallback;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 44
    return-void
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p1, Lcom/parse/ParseObject;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/RefreshCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
