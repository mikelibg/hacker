.class public Lcom/parse/ParseRole;
.super Lcom/parse/ParseObject;
.source "ParseRole.java"


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "_Role"

.field private static final NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "^[0-9a-zA-Z_\\- ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRole;->NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseRole;-><init>(Z)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/parse/ParseRole;->setName(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseACL;)V
    .locals 0
    .parameter "name"
    .parameter "acl"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/ParseRole;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/parse/ParseRole;->setACL(Lcom/parse/ParseACL;)V

    .line 52
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .parameter "isPointer"

    .prologue
    .line 25
    const-string v0, "_Role"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "_Role"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Lcom/parse/ParseRelation;
    .locals 1

    .prologue
    .line 99
    const-string v0, "roles"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Lcom/parse/ParseRelation;
    .locals 1

    .prologue
    .line 87
    const-string v0, "users"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 112
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name can only be set before it has been saved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name must be a String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    sget-object v1, Lcom/parse/ParseRole;->NAME_PATTERN:Ljava/util/regex/Pattern;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name can only contain alphanumeric characters, _, -, and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected validateSave()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "New roles must specify a name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 108
    return-void
.end method
