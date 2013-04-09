.class Lcom/wifi/hacker/cracker/MainActivity$CrackTask$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wifi/hacker/cracker/MainActivity$CrackTask;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/MainActivity$CrackTask;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask$1;->this$1:Lcom/wifi/hacker/cracker/MainActivity$CrackTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "paramDialogInterface"
    .parameter "paramInt"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask$1;->this$1:Lcom/wifi/hacker/cracker/MainActivity$CrackTask;

    iget-object v0, v0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    invoke-virtual {v0}, Lcom/wifi/hacker/cracker/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/wifi/hacker/cracker/BootReceiver;->hasRatedApp(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask$1;->this$1:Lcom/wifi/hacker/cracker/MainActivity$CrackTask;

    iget-object v0, v0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    invoke-virtual {v0}, Lcom/wifi/hacker/cracker/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->showRatePopup(Landroid/app/Activity;Z)V

    .line 132
    :cond_0
    return-void
.end method
