.class Lcom/wifi/hacker/cracker/LaunchActivity$3;
.super Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wifi/hacker/cracker/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wifi/hacker/cracker/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/wifi/hacker/cracker/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/wifi/hacker/cracker/LaunchActivity$3;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-direct {p0}, Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Ljava/lang/String;Ljava/lang/String;ILcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;)V
    .locals 2
    .parameter "title"
    .parameter "description"
    .parameter "icon"
    .parameter "showAdMethod"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wifi/hacker/cracker/LaunchActivity$3;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    iget-object v0, v0, Lcom/wifi/hacker/cracker/LaunchActivity;->appLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/wifi/hacker/cracker/LaunchActivity$3;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    iget-object v0, v0, Lcom/wifi/hacker/cracker/LaunchActivity;->appLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/wifi/hacker/cracker/LaunchActivity$3;->this$0:Lcom/wifi/hacker/cracker/LaunchActivity;

    invoke-virtual {v0, p1, p2, p4, p0}, Lcom/wifi/hacker/cracker/LaunchActivity;->setupApp(Ljava/lang/String;Ljava/lang/String;Lcom/wifi/hacker/cracker/BootReceiver$ShowAdMethod;Lcom/wifi/hacker/cracker/BootReceiver$TabViewOnLoadListener;)V

    .line 83
    :cond_0
    return-void
.end method
