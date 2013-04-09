.class Lcom/airpush/android/Airpush$9;
.super Ljava/lang/Object;
.source "Airpush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/Airpush;->startNewAdThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$isOptin:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/airpush/android/Airpush$9;->val$isOptin:Z

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/airpush/android/Airpush$9;->val$isOptin:Z

    if-eqz v0, :cond_0

    .line 904
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/SetPreferences;->setOptinDialogPref(Landroid/content/Context;)V

    .line 906
    :cond_0
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/SetPreferences;->enableADPref(Landroid/content/Context;)V

    .line 907
    return-void
.end method
