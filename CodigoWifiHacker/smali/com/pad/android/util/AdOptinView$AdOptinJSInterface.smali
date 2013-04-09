.class Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;
.super Ljava/lang/Object;
.source "AdOptinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/util/AdOptinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdOptinJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelclicked()V
    .locals 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Preference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SD_APP_OPTIN"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v2, "SD_APP_OPTIN_SHOWN"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #calls: Lcom/pad/android/util/AdOptinView;->closeView()V
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$1(Lcom/pad/android/util/AdOptinView;)V

    .line 171
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 175
    :cond_0
    return-void
.end method

.method public okclicked()V
    .locals 6

    .prologue
    .line 151
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Preference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 152
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SD_APP_OPTIN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v2, "SD_APP_OPTIN_SHOWN"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #calls: Lcom/pad/android/util/AdOptinView;->closeView()V
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$1(Lcom/pad/android/util/AdOptinView;)V

    .line 157
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v2}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 161
    :cond_0
    return-void
.end method
