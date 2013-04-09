.class Lcom/pad/android/iappad/AdController$1;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/pad/android/listener/AdOptinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->loadStartAd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdController;

.field private final synthetic val$iId:Ljava/lang/String;

.field private final synthetic val$notifId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$1;->this$0:Lcom/pad/android/iappad/AdController;

    iput-object p2, p0, Lcom/pad/android/iappad/AdController$1;->val$notifId:Ljava/lang/String;

    iput-object p3, p0, Lcom/pad/android/iappad/AdController$1;->val$iId:Ljava/lang/String;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdOptin()V
    .locals 21

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController$1;->this$0:Lcom/pad/android/iappad/AdController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/pad/android/iappad/AdController;->loadAd()V

    .line 501
    const-string v17, "setSectionId"

    .line 502
    .local v17, setSection:Ljava/lang/String;
    const-string v16, "setContext"

    .line 503
    .local v16, setContext:Ljava/lang/String;
    const-string v14, "loadNotification"

    .line 504
    .local v14, notifMethod:Ljava/lang/String;
    const-string v11, "loadIcon"

    .line 505
    .local v11, iconMethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController$1;->this$0:Lcom/pad/android/iappad/AdController;

    move-object/from16 v18, v0

    #getter for: Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/pad/android/iappad/AdController;->access$16(Lcom/pad/android/iappad/AdController;)Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 508
    .local v5, ctx:Landroid/content/Context;
    :try_start_0
    const-class v18, Lcom/pad/android/iappad/AdController;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 509
    .local v4, classLoader:Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 511
    const-string v18, "com.pad.android.xappad.AdController"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 512
    .local v2, adController:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    .line 514
    .local v13, notifInstance:Ljava/lang/Object;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 515
    .local v15, sec:Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController$1;->val$notifId:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v15, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 518
    .local v3, c:Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v3, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v14, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 521
    .local v12, n:Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    .line 526
    .local v10, iconInstance:Ljava/lang/Object;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 527
    .local v9, iSec:Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pad/android/iappad/AdController$1;->val$iId:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v9, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 530
    .local v7, iC:Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v7, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v11, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 533
    .local v8, iN:Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v2           #adController:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #c:Ljava/lang/reflect/Method;
    .end local v4           #classLoader:Ljava/lang/ClassLoader;
    .end local v7           #iC:Ljava/lang/reflect/Method;
    .end local v8           #iN:Ljava/lang/reflect/Method;
    .end local v9           #iSec:Ljava/lang/reflect/Method;
    .end local v10           #iconInstance:Ljava/lang/Object;
    .end local v12           #n:Ljava/lang/reflect/Method;
    .end local v13           #notifInstance:Ljava/lang/Object;
    .end local v15           #sec:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v6

    .line 538
    .local v6, e:Ljava/lang/Exception;
    const-string v18, "LBAdController"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error when loading StartAd - "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v18, "LBAdController"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
