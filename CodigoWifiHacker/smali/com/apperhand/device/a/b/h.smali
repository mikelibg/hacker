.class public final Lcom/apperhand/device/a/b/h;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/a/b/h$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 21
    sget-object v1, Lcom/apperhand/device/a/b/h$1;->a:[I

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apperhand/common/dto/Command$Commands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 47
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    const-string v3, "Factory"

    const-string v4, "Uknown command [command = %s] !!!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/apperhand/device/a/b/a;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/apperhand/device/a/b/a;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Lcom/apperhand/device/a/b/c;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/apperhand/device/a/b/c;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    goto :goto_0

    .line 29
    :pswitch_2
    new-instance v0, Lcom/apperhand/device/a/b/i;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/i;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 32
    :pswitch_3
    new-instance v0, Lcom/apperhand/device/a/b/j;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/apperhand/device/a/b/j;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    goto :goto_0

    .line 35
    :pswitch_4
    new-instance v0, Lcom/apperhand/device/a/b/f;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/f;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 38
    :pswitch_5
    new-instance v0, Lcom/apperhand/device/a/b/g;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/g;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 41
    :pswitch_6
    new-instance v0, Lcom/apperhand/device/a/b/e;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/e;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 44
    :pswitch_7
    new-instance v0, Lcom/apperhand/device/a/b/d;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/d;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
