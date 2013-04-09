.class public abstract Lcom/parse/SendCallback;
.super Lcom/parse/ParseCallback;
.source "SendCallback.java"


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
    .line 32
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
    .line 32
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/SendCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    return-void
.end method

.method final internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "returnValue"
    .parameter "e"

    .prologue
    .line 45
    invoke-virtual {p0, p2}, Lcom/parse/SendCallback;->done(Lcom/parse/ParseException;)V

    .line 46
    return-void
.end method
