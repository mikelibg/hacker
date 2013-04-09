.class Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "r5w2vkbuwcarg2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperEngine"
.end annotation


# instance fields
.field public final mDrawWallpaper:Ljava/lang/Runnable;

.field mOffset:F

.field mVisible:Z

.field final synthetic this$0:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->this$0:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;

    .line 32
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 20
    new-instance v0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine$1;

    invoke-direct {v0, p0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine$1;-><init>(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;)V

    iput-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    .line 33
    return-void
.end method


# virtual methods
.method drawWallpaper()V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 38
    .local v1, localSurfaceHolder:Landroid/view/SurfaceHolder;
    const/4 v0, 0x0

    .line 41
    .local v0, localCanvas:Landroid/graphics/Canvas;
    :try_start_0
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 45
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    .line 52
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    throw v2
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "paramSurfaceHolder"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->setTouchEventsEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->this$0:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;

    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->holder:Landroid/view/SurfaceHolder;

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 67
    iget-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->this$0:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;

    #getter for: Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->access$000(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "paramFloat1"
    .parameter "paramFloat2"
    .parameter "paramFloat3"
    .parameter "paramFloat4"
    .parameter "paramInt1"
    .parameter "paramInt2"

    .prologue
    .line 72
    iput p1, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->mOffset:F

    .line 73
    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->drawWallpaper()V

    .line 74
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "paramSurfaceHolder"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->mVisible:Z

    .line 80
    iget-object v0, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->this$0:Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;

    #getter for: Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;->access$000(Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "paramBoolean"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->mVisible:Z

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/wifi/hacker/cracker/r5w2vkbuwcarg2$WallpaperEngine;->drawWallpaper()V

    .line 90
    :cond_0
    return-void
.end method
