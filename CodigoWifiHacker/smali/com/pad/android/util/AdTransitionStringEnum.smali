.class public final enum Lcom/pad/android/util/AdTransitionStringEnum;
.super Ljava/lang/Enum;
.source "AdTransitionStringEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pad/android/util/AdTransitionStringEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/pad/android/util/AdTransitionStringEnum;

.field public static final enum DISSOLVE:Lcom/pad/android/util/AdTransitionStringEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/pad/android/util/AdTransitionStringEnum;

.field public static final enum FADE:Lcom/pad/android/util/AdTransitionStringEnum;

.field public static final enum NONE:Lcom/pad/android/util/AdTransitionStringEnum;

.field public static final enum ROLL:Lcom/pad/android/util/AdTransitionStringEnum;

.field public static final enum SLIDE:Lcom/pad/android/util/AdTransitionStringEnum;

.field public static final enum ZOOM:Lcom/pad/android/util/AdTransitionStringEnum;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->DEFAULT:Lcom/pad/android/util/AdTransitionStringEnum;

    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "DISSOLVE"

    const-string v2, "dissolve"

    invoke-direct {v0, v1, v5, v2}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->DISSOLVE:Lcom/pad/android/util/AdTransitionStringEnum;

    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "FADE"

    const-string v2, "fade"

    invoke-direct {v0, v1, v6, v2}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->FADE:Lcom/pad/android/util/AdTransitionStringEnum;

    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "ROLL"

    const-string v2, "roll"

    invoke-direct {v0, v1, v7, v2}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->ROLL:Lcom/pad/android/util/AdTransitionStringEnum;

    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "SLIDE"

    const-string v2, "slide"

    invoke-direct {v0, v1, v8, v2}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->SLIDE:Lcom/pad/android/util/AdTransitionStringEnum;

    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "ZOOM"

    const/4 v2, 0x5

    const-string v3, "zoom"

    invoke-direct {v0, v1, v2, v3}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->ZOOM:Lcom/pad/android/util/AdTransitionStringEnum;

    new-instance v0, Lcom/pad/android/util/AdTransitionStringEnum;

    const-string v1, "NONE"

    const/4 v2, 0x6

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/pad/android/util/AdTransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->NONE:Lcom/pad/android/util/AdTransitionStringEnum;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pad/android/util/AdTransitionStringEnum;

    sget-object v1, Lcom/pad/android/util/AdTransitionStringEnum;->DEFAULT:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pad/android/util/AdTransitionStringEnum;->DISSOLVE:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pad/android/util/AdTransitionStringEnum;->FADE:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pad/android/util/AdTransitionStringEnum;->ROLL:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pad/android/util/AdTransitionStringEnum;->SLIDE:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/pad/android/util/AdTransitionStringEnum;->ZOOM:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pad/android/util/AdTransitionStringEnum;->NONE:Lcom/pad/android/util/AdTransitionStringEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->ENUM$VALUES:[Lcom/pad/android/util/AdTransitionStringEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/pad/android/util/AdTransitionStringEnum;->text:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/pad/android/util/AdTransitionStringEnum;
    .locals 5
    .parameter "text"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-static {}, Lcom/pad/android/util/AdTransitionStringEnum;->values()[Lcom/pad/android/util/AdTransitionStringEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 26
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 20
    :cond_2
    aget-object v0, v2, v1

    .line 21
    .local v0, b:Lcom/pad/android/util/AdTransitionStringEnum;
    iget-object v4, v0, Lcom/pad/android/util/AdTransitionStringEnum;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pad/android/util/AdTransitionStringEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/pad/android/util/AdTransitionStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pad/android/util/AdTransitionStringEnum;

    return-object v0
.end method

.method public static values()[Lcom/pad/android/util/AdTransitionStringEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pad/android/util/AdTransitionStringEnum;->ENUM$VALUES:[Lcom/pad/android/util/AdTransitionStringEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/pad/android/util/AdTransitionStringEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pad/android/util/AdTransitionStringEnum;->text:Ljava/lang/String;

    return-object v0
.end method
