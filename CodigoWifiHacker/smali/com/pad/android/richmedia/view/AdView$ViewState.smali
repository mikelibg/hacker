.class public final enum Lcom/pad/android/richmedia/view/AdView$ViewState;
.super Ljava/lang/Enum;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pad/android/richmedia/view/AdView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

.field private static final synthetic ENUM$VALUES:[Lcom/pad/android/richmedia/view/AdView$ViewState;

.field public static final enum EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

.field public static final enum HIDDEN:Lcom/pad/android/richmedia/view/AdView$ViewState;

.field public static final enum LEFT_BEHIND:Lcom/pad/android/richmedia/view/AdView$ViewState;

.field public static final enum OPENED:Lcom/pad/android/richmedia/view/AdView$ViewState;

.field public static final enum RESIZED:Lcom/pad/android/richmedia/view/AdView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/pad/android/richmedia/view/AdView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v4}, Lcom/pad/android/richmedia/view/AdView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->RESIZED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lcom/pad/android/richmedia/view/AdView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/pad/android/richmedia/view/AdView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->HIDDEN:Lcom/pad/android/richmedia/view/AdView$ViewState;

    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    const-string v1, "LEFT_BEHIND"

    invoke-direct {v0, v1, v7}, Lcom/pad/android/richmedia/view/AdView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->LEFT_BEHIND:Lcom/pad/android/richmedia/view/AdView$ViewState;

    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    const-string v1, "OPENED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->OPENED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pad/android/richmedia/view/AdView$ViewState;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->RESIZED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->HIDDEN:Lcom/pad/android/richmedia/view/AdView$ViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->LEFT_BEHIND:Lcom/pad/android/richmedia/view/AdView$ViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pad/android/richmedia/view/AdView$ViewState;->OPENED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->ENUM$VALUES:[Lcom/pad/android/richmedia/view/AdView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pad/android/richmedia/view/AdView$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pad/android/richmedia/view/AdView$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/pad/android/richmedia/view/AdView$ViewState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->ENUM$VALUES:[Lcom/pad/android/richmedia/view/AdView$ViewState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
