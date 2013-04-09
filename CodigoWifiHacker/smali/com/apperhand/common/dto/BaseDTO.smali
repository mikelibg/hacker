.class public abstract Lcom/apperhand/common/dto/BaseDTO;
.super Ljava/lang/Object;
.source "BaseDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static NEW_LINE:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x30f5963ec25fabacL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apperhand/common/dto/BaseDTO;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method
