.class public abstract Lcom/parse/GetDataCallback;
.super Lcom/parse/ParseCallback;
.source "GetDataCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done([BLcom/parse/ParseException;)V
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/GetDataCallback;->internalDone([BLcom/parse/ParseException;)V

    return-void
.end method

.method final internalDone([BLcom/parse/ParseException;)V
    .locals 0
    .parameter "returnValue"
    .parameter "e"

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/parse/GetDataCallback;->done([BLcom/parse/ParseException;)V

    .line 22
    return-void
.end method
