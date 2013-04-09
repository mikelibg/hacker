.class public abstract Lcom/parse/SaveCallback;
.super Lcom/parse/ParseCallback;
.source "SaveCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/parse/ParseException;)V
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    return-void
.end method

.method final internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "returnValue"
    .parameter "e"

    .prologue
    .line 42
    invoke-virtual {p0, p2}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 43
    return-void
.end method
