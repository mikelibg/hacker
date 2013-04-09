.class public final enum Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;
.super Ljava/lang/Enum;
.source "AndroidSDKProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/AndroidSDKProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

.field public static final enum IMAGES:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

.field public static final enum VIDEO:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

.field public static final enum WEB:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->WEB:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    new-instance v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    const-string v1, "IMAGES"

    invoke-direct {v0, v1, v3}, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->IMAGES:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    new-instance v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->VIDEO:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    sget-object v1, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->WEB:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->IMAGES:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->VIDEO:Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->$VALUES:[Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;
    .locals 1
    .parameter

    .prologue
    .line 96
    const-class v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->$VALUES:[Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    invoke-virtual {v0}, [Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/device/android/AndroidSDKProvider$SearchCategory;

    return-object v0
.end method
