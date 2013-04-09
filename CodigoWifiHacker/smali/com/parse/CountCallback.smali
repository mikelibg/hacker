.class public abstract Lcom/parse/CountCallback;
.super Lcom/parse/ParseCallback;
.source "CountCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(ILcom/parse/ParseException;)V
.end method

.method internalDone(Ljava/lang/Integer;Lcom/parse/ParseException;)V
    .locals 2
    .parameter "returnValue"
    .parameter "e"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    goto :goto_0
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/CountCallback;->internalDone(Ljava/lang/Integer;Lcom/parse/ParseException;)V

    return-void
.end method
