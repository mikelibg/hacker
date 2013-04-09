.class public final enum Lcom/pad/android/richmedia/view/AdView$ACTION;
.super Ljava/lang/Enum;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pad/android/richmedia/view/AdView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pad/android/richmedia/view/AdView$ACTION;

.field public static final enum PLAY_AUDIO:Lcom/pad/android/richmedia/view/AdView$ACTION;

.field public static final enum PLAY_VIDEO:Lcom/pad/android/richmedia/view/AdView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ACTION;

    const-string v1, "PLAY_AUDIO"

    invoke-direct {v0, v1, v2}, Lcom/pad/android/richmedia/view/AdView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_AUDIO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    new-instance v0, Lcom/pad/android/richmedia/view/AdView$ACTION;

    const-string v1, "PLAY_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/pad/android/richmedia/view/AdView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_VIDEO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pad/android/richmedia/view/AdView$ACTION;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_AUDIO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_VIDEO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pad/android/richmedia/view/AdView$ACTION;->ENUM$VALUES:[Lcom/pad/android/richmedia/view/AdView$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pad/android/richmedia/view/AdView$ACTION;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pad/android/richmedia/view/AdView$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/pad/android/richmedia/view/AdView$ACTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ACTION;->ENUM$VALUES:[Lcom/pad/android/richmedia/view/AdView$ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
