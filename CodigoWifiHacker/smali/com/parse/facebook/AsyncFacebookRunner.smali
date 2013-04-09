.class public Lcom/parse/facebook/AsyncFacebookRunner;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;
    }
.end annotation


# instance fields
.field fb:Lcom/parse/facebook/Facebook;


# direct methods
.method public constructor <init>(Lcom/parse/facebook/Facebook;)V
    .locals 0
    .parameter "fb"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/parse/facebook/AsyncFacebookRunner;->fb:Lcom/parse/facebook/Facebook;

    .line 54
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/parse/facebook/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public logout(Landroid/content/Context;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 81
    new-instance v0, Lcom/parse/facebook/AsyncFacebookRunner$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/parse/facebook/AsyncFacebookRunner$1;-><init>(Lcom/parse/facebook/AsyncFacebookRunner;Landroid/content/Context;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/parse/facebook/AsyncFacebookRunner$1;->start()V

    .line 100
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "parameters"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 142
    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/parse/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 138
    const/4 v1, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parse/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 213
    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parse/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 207
    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/parse/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 7
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 251
    new-instance v0, Lcom/parse/facebook/AsyncFacebookRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parse/facebook/AsyncFacebookRunner$2;-><init>(Lcom/parse/facebook/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/parse/facebook/AsyncFacebookRunner$2;->start()V

    .line 265
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .parameter "graphPath"
    .parameter "listener"

    .prologue
    .line 173
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parse/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .parameter "graphPath"
    .parameter "listener"
    .parameter "state"

    .prologue
    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/parse/facebook/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/parse/facebook/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 170
    return-void
.end method
