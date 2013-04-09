.class public final enum Lcom/apperhand/common/dto/Command$Commands;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/common/dto/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/common/dto/Command$Commands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum ACTIVATION:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum COMMANDS:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum COMMANDS_STATUS:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum DUMP_LOG:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum EULA:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum EULA_STATUS:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum HOMEPAGE:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum INFO:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum INSTALLATION:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum NOTIFICATIONS:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum OPTOUT:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum TERMINATE:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum UNEXPECTED_EXCEPTION:Lcom/apperhand/common/dto/Command$Commands;

.field public static final enum UPGRADE:Lcom/apperhand/common/dto/Command$Commands;


# instance fields
.field private internalUri:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "COMMANDS"

    const-string v2, "Commands"

    const-string v3, "Tg0LHwIICkoa"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS:Lcom/apperhand/common/dto/Command$Commands;

    .line 88
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "ACTIVATION"

    const-string v2, "Activation"

    const-string v3, "Tg8HBgYfBVoM"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->ACTIVATION:Lcom/apperhand/common/dto/Command$Commands;

    .line 89
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "HOMEPAGE"

    const-string v2, "Homepage"

    const-string v3, "TgYLHwoZBUkM"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->HOMEPAGE:Lcom/apperhand/common/dto/Command$Commands;

    .line 90
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "COMMANDS_STATUS"

    const-string v2, "CommandsStatus"

    const-string v3, "Tg0LHwIICkoaGhURGwc="

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    .line 91
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "BOOKMARKS"

    const-string v2, "Bookmarks"

    const-string v3, "TgwLHQQEBVwCHQ=="

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

    .line 92
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "SHORTCUTS"

    const/4 v2, 0x5

    const-string v3, "Shortcuts"

    const-string v4, "Th0MHR0dB1sdHQ=="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    .line 93
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "NOTIFICATIONS"

    const/4 v2, 0x6

    const-string v3, "Notifications"

    const-string v4, "TgALBgYPDU0IGh0KAAc="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->NOTIFICATIONS:Lcom/apperhand/common/dto/Command$Commands;

    .line 95
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "TERMINATE"

    const/4 v2, 0x7

    const-string v3, "Terminate"

    const-string v4, "ThoBAAIACk8dCw=="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->TERMINATE:Lcom/apperhand/common/dto/Command$Commands;

    .line 97
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "DUMP_LOG"

    const/16 v2, 0x8

    const-string v3, "DumpLog"

    const-string v4, "TgoRHx8FC0k="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->DUMP_LOG:Lcom/apperhand/common/dto/Command$Commands;

    .line 99
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "UNEXPECTED_EXCEPTION"

    const/16 v2, 0x9

    const-string v3, "UnexpectedException"

    const-string v4, "ThsKFxcZAU0dCxAAFhdLEgYGGB0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->UNEXPECTED_EXCEPTION:Lcom/apperhand/common/dto/Command$Commands;

    .line 100
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "UPGRADE"

    const/16 v2, 0xa

    const-string v3, "Upgrade"

    const-string v4, "ThsUFR0IAEs="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->UPGRADE:Lcom/apperhand/common/dto/Command$Commands;

    .line 101
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "INSTALLATION"

    const/16 v2, 0xb

    const-string v3, "Installation"

    const-string v4, "TgcKARsICEIIGh0KAA=="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->INSTALLATION:Lcom/apperhand/common/dto/Command$Commands;

    .line 102
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "INFO"

    const/16 v2, 0xc

    const-string v3, "Info"

    const-string v4, "TgcKFAA="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->INFO:Lcom/apperhand/common/dto/Command$Commands;

    .line 103
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "OPTOUT"

    const/16 v2, 0xd

    const-string v3, "Optout"

    const-string v4, "TgEUBgAcEA=="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->OPTOUT:Lcom/apperhand/common/dto/Command$Commands;

    .line 104
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "EULA"

    const/16 v2, 0xe

    const-string v3, "EULA"

    const-string v4, "TgsRHg4="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    .line 105
    new-instance v0, Lcom/apperhand/common/dto/Command$Commands;

    const-string v1, "EULA_STATUS"

    const/16 v2, 0xf

    const-string v3, "EULA_STATUS"

    const-string v4, "TgsRHg4aEE8dGwc="

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/apperhand/common/dto/Command$Commands;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->EULA_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/apperhand/common/dto/Command$Commands;

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->ACTIVATION:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->HOMEPAGE:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v1, v0, v7

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v1, v0, v8

    sget-object v1, Lcom/apperhand/common/dto/Command$Commands;->BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->NOTIFICATIONS:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->TERMINATE:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->DUMP_LOG:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->UNEXPECTED_EXCEPTION:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->UPGRADE:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->INSTALLATION:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->INFO:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->OPTOUT:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apperhand/common/dto/Command$Commands;->$VALUES:[Lcom/apperhand/common/dto/Command$Commands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apperhand/common/dto/Command$Commands;->uri:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/apperhand/common/dto/Command$Commands;->string:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcom/apperhand/common/dto/Command$Commands;->internalUri:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static getInstance(I)Lcom/apperhand/common/dto/Command$Commands;
    .locals 1
    .parameter

    .prologue
    .line 112
    packed-switch p0, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 114
    :pswitch_0
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS:Lcom/apperhand/common/dto/Command$Commands;

    goto :goto_0

    .line 116
    :pswitch_1
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->BOOKMARKS:Lcom/apperhand/common/dto/Command$Commands;

    goto :goto_0

    .line 118
    :pswitch_2
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->SHORTCUTS:Lcom/apperhand/common/dto/Command$Commands;

    goto :goto_0

    .line 120
    :pswitch_3
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->NOTIFICATIONS:Lcom/apperhand/common/dto/Command$Commands;

    goto :goto_0

    .line 122
    :pswitch_4
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->TERMINATE:Lcom/apperhand/common/dto/Command$Commands;

    goto :goto_0

    .line 124
    :pswitch_5
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->NOTIFICATIONS:Lcom/apperhand/common/dto/Command$Commands;

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/common/dto/Command$Commands;
    .locals 1
    .parameter

    .prologue
    .line 67
    const-class v0, Lcom/apperhand/common/dto/Command$Commands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Command$Commands;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/common/dto/Command$Commands;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/apperhand/common/dto/Command$Commands;->$VALUES:[Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v0}, [Lcom/apperhand/common/dto/Command$Commands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/common/dto/Command$Commands;

    return-object v0
.end method


# virtual methods
.method public final getInternalUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/apperhand/common/dto/Command$Commands;->internalUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/apperhand/common/dto/Command$Commands;->string:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/apperhand/common/dto/Command$Commands;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/apperhand/common/dto/Command$Commands;->uri:Ljava/lang/String;

    .line 146
    return-void
.end method
