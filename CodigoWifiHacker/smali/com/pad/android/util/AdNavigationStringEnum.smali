.class public final enum Lcom/pad/android/util/AdNavigationStringEnum;
.super Ljava/lang/Enum;
.source "AdNavigationStringEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pad/android/util/AdNavigationStringEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACK:Lcom/pad/android/util/AdNavigationStringEnum;

.field public static final enum CLOSE:Lcom/pad/android/util/AdNavigationStringEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/pad/android/util/AdNavigationStringEnum;

.field public static final enum FORWARD:Lcom/pad/android/util/AdNavigationStringEnum;

.field public static final enum NONE:Lcom/pad/android/util/AdNavigationStringEnum;

.field public static final enum REFRESH:Lcom/pad/android/util/AdNavigationStringEnum;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/pad/android/util/AdNavigationStringEnum;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/pad/android/util/AdNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->NONE:Lcom/pad/android/util/AdNavigationStringEnum;

    new-instance v0, Lcom/pad/android/util/AdNavigationStringEnum;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/pad/android/util/AdNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->CLOSE:Lcom/pad/android/util/AdNavigationStringEnum;

    new-instance v0, Lcom/pad/android/util/AdNavigationStringEnum;

    const-string v1, "BACK"

    const-string v2, "back"

    invoke-direct {v0, v1, v5, v2}, Lcom/pad/android/util/AdNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->BACK:Lcom/pad/android/util/AdNavigationStringEnum;

    new-instance v0, Lcom/pad/android/util/AdNavigationStringEnum;

    const-string v1, "FORWARD"

    const-string v2, "forward"

    invoke-direct {v0, v1, v6, v2}, Lcom/pad/android/util/AdNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->FORWARD:Lcom/pad/android/util/AdNavigationStringEnum;

    new-instance v0, Lcom/pad/android/util/AdNavigationStringEnum;

    const-string v1, "REFRESH"

    const-string v2, "refresh"

    invoke-direct {v0, v1, v7, v2}, Lcom/pad/android/util/AdNavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->REFRESH:Lcom/pad/android/util/AdNavigationStringEnum;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pad/android/util/AdNavigationStringEnum;

    sget-object v1, Lcom/pad/android/util/AdNavigationStringEnum;->NONE:Lcom/pad/android/util/AdNavigationStringEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pad/android/util/AdNavigationStringEnum;->CLOSE:Lcom/pad/android/util/AdNavigationStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pad/android/util/AdNavigationStringEnum;->BACK:Lcom/pad/android/util/AdNavigationStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pad/android/util/AdNavigationStringEnum;->FORWARD:Lcom/pad/android/util/AdNavigationStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pad/android/util/AdNavigationStringEnum;->REFRESH:Lcom/pad/android/util/AdNavigationStringEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->ENUM$VALUES:[Lcom/pad/android/util/AdNavigationStringEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/pad/android/util/AdNavigationStringEnum;->text:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/pad/android/util/AdNavigationStringEnum;
    .locals 5
    .parameter "text"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-static {}, Lcom/pad/android/util/AdNavigationStringEnum;->values()[Lcom/pad/android/util/AdNavigationStringEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 45
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 39
    :cond_2
    aget-object v0, v2, v1

    .line 40
    .local v0, b:Lcom/pad/android/util/AdNavigationStringEnum;
    iget-object v4, v0, Lcom/pad/android/util/AdNavigationStringEnum;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pad/android/util/AdNavigationStringEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/pad/android/util/AdNavigationStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pad/android/util/AdNavigationStringEnum;

    return-object v0
.end method

.method public static values()[Lcom/pad/android/util/AdNavigationStringEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pad/android/util/AdNavigationStringEnum;->ENUM$VALUES:[Lcom/pad/android/util/AdNavigationStringEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/pad/android/util/AdNavigationStringEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pad/android/util/AdNavigationStringEnum;->text:Ljava/lang/String;

    return-object v0
.end method
