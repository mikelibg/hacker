.class public abstract enum Lcom/google/mygson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lcom/google/mygson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/mygson/FieldNamingPolicy;",
        ">;",
        "Lcom/google/mygson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mygson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/google/mygson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/mygson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/mygson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/google/mygson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/mygson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/mygson/FieldNamingPolicy$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v2}, Lcom/google/mygson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mygson/FieldNamingPolicy;->IDENTITY:Lcom/google/mygson/FieldNamingPolicy;

    .line 52
    new-instance v0, Lcom/google/mygson/FieldNamingPolicy$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v3}, Lcom/google/mygson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mygson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/mygson/FieldNamingPolicy;

    .line 71
    new-instance v0, Lcom/google/mygson/FieldNamingPolicy$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v4}, Lcom/google/mygson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mygson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/mygson/FieldNamingPolicy;

    .line 89
    new-instance v0, Lcom/google/mygson/FieldNamingPolicy$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v5}, Lcom/google/mygson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mygson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/mygson/FieldNamingPolicy;

    .line 112
    new-instance v0, Lcom/google/mygson/FieldNamingPolicy$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v6}, Lcom/google/mygson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mygson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/mygson/FieldNamingPolicy;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/mygson/FieldNamingPolicy;

    sget-object v1, Lcom/google/mygson/FieldNamingPolicy;->IDENTITY:Lcom/google/mygson/FieldNamingPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/mygson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/mygson/FieldNamingPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/mygson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/mygson/FieldNamingPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/mygson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/mygson/FieldNamingPolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/mygson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/mygson/FieldNamingPolicy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/mygson/FieldNamingPolicy;->$VALUES:[Lcom/google/mygson/FieldNamingPolicy;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/mygson/FieldNamingPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/mygson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/google/mygson/FieldNamingPolicy;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/mygson/FieldNamingPolicy;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "firstCharacter"
    .parameter "srcString"
    .parameter "indexOfSubstring"

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "separator"

    .prologue
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v2, translation:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    .local v0, character:C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0           #character:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, fieldNameBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 140
    .local v2, index:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 142
    .local v1, firstCharacter:C
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 143
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 159
    .end local p0
    :cond_1
    :goto_1
    return-object p0

    .line 147
    .restart local p0
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 155
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, p0, v2}, Lcom/google/mygson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, modifiedTarget:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mygson/FieldNamingPolicy;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/google/mygson/FieldNamingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/FieldNamingPolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/mygson/FieldNamingPolicy;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/mygson/FieldNamingPolicy;->$VALUES:[Lcom/google/mygson/FieldNamingPolicy;

    invoke-virtual {v0}, [Lcom/google/mygson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mygson/FieldNamingPolicy;

    return-object v0
.end method
