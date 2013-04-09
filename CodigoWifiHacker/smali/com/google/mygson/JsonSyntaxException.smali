.class public final Lcom/google/mygson/JsonSyntaxException;
.super Lcom/google/mygson/JsonParseException;
.source "JsonSyntaxException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/mygson/JsonParseException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/mygson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/mygson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method
