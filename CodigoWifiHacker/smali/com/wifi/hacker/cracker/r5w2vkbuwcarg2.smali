.class public Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;
.super Landroid/service/wallpaper/WallpaperService;
.source "r5w2vkbuwcarg2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;
    }
.end annotation


# instance fields
.field holder:Landroid/view/SurfaceHolder;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->mHandler:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;

    invoke-direct {v0, p0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;-><init>(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;)V

    return-object v0
.end method
