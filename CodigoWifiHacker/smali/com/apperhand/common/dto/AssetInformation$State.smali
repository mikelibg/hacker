.class public final enum Lcom/apperhand/common/dto/AssetInformation$State;
.super Ljava/lang/Enum;
.source "AssetInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/common/dto/AssetInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/common/dto/AssetInformation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apperhand/common/dto/AssetInformation$State;

.field public static final enum EXIST:Lcom/apperhand/common/dto/AssetInformation$State;

.field public static final enum OPTOUT:Lcom/apperhand/common/dto/AssetInformation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/apperhand/common/dto/AssetInformation$State;

    const-string v1, "EXIST"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/common/dto/AssetInformation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/AssetInformation$State;->EXIST:Lcom/apperhand/common/dto/AssetInformation$State;

    new-instance v0, Lcom/apperhand/common/dto/AssetInformation$State;

    const-string v1, "OPTOUT"

    invoke-direct {v0, v1, v3}, Lcom/apperhand/common/dto/AssetInformation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/common/dto/AssetInformation$State;->OPTOUT:Lcom/apperhand/common/dto/AssetInformation$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/apperhand/common/dto/AssetInformation$State;

    sget-object v1, Lcom/apperhand/common/dto/AssetInformation$State;->EXIST:Lcom/apperhand/common/dto/AssetInformation$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apperhand/common/dto/AssetInformation$State;->OPTOUT:Lcom/apperhand/common/dto/AssetInformation$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/apperhand/common/dto/AssetInformation$State;->$VALUES:[Lcom/apperhand/common/dto/AssetInformation$State;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/common/dto/AssetInformation$State;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/apperhand/common/dto/AssetInformation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/AssetInformation$State;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/common/dto/AssetInformation$State;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/apperhand/common/dto/AssetInformation$State;->$VALUES:[Lcom/apperhand/common/dto/AssetInformation$State;

    invoke-virtual {v0}, [Lcom/apperhand/common/dto/AssetInformation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/common/dto/AssetInformation$State;

    return-object v0
.end method
