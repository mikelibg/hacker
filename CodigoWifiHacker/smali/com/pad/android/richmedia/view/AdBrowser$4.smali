.class Lcom/pad/android/richmedia/view/AdBrowser$4;
.super Ljava/lang/Object;
.source "AdBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/richmedia/view/AdBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdBrowser;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdBrowser$4;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdBrowser$4;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdBrowser;->finish()V

    .line 166
    return-void
.end method
