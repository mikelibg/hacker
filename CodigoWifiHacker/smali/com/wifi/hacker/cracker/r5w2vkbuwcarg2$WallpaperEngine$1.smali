.class Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine$1;
.super Ljava/lang/Object;
.source "r5w2vkbuwcarg2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine$1;->this$1:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine$1;->this$1:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;

    invoke-virtual {v0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->drawWallpaper()V

    .line 25
    return-void
.end method
