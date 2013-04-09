.class public final Lcom/apperhand/device/android/a/f;
.super Ljava/lang/Object;
.source "AndroidTerminateDMA.java"

# interfaces
.implements Lcom/apperhand/device/a/a/f;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/apperhand/device/android/a/f;->a:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/apperhand/device/android/a/f;->a:Landroid/content/Context;

    const-string v1, "com.apperhand.global"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    const-string v1, "TERMINATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method
