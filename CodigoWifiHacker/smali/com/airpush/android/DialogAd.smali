.class public Lcom/airpush/android/DialogAd;
.super Ljava/lang/Object;
.source "DialogAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static dialog:Landroid/app/AlertDialog;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adtype:Ljava/lang/String;

.field asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buttontxt:Ljava/lang/String;

.field private campid:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field runnable:Ljava/lang/Runnable;

.field private sms:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 3
    .parameter "intent"
    .parameter "activity"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v1, "0"

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->event:Ljava/lang/String;

    .line 31
    new-instance v1, Lcom/airpush/android/DialogAd$1;

    invoke-direct {v1, p0}, Lcom/airpush/android/DialogAd$1;-><init>(Lcom/airpush/android/DialogAd;)V

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->runnable:Ljava/lang/Runnable;

    .line 45
    new-instance v1, Lcom/airpush/android/DialogAd$2;

    invoke-direct {v1, p0}, Lcom/airpush/android/DialogAd$2;-><init>(Lcom/airpush/android/DialogAd;)V

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 70
    :try_start_0
    iput-object p2, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    .line 71
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->title:Ljava/lang/String;

    .line 72
    const-string v1, "buttontxt"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->buttontxt:Ljava/lang/String;

    .line 73
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->url:Ljava/lang/String;

    .line 74
    const-string v1, "creativeid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->creativeId:Ljava/lang/String;

    .line 75
    const-string v1, "campaignid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->campid:Ljava/lang/String;

    .line 76
    const-string v1, "adtype"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->adtype:Ljava/lang/String;

    .line 77
    const-string v1, "sms"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->sms:Ljava/lang/String;

    .line 78
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/DialogAd;->number:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/airpush/android/DialogAd;->showDialog()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/DialogAd;->dialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occured in DialogAd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/airpush/android/DialogAd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airpush/android/DialogAd;->event:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/airpush/android/DialogAd;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/airpush/android/DialogAd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/airpush/android/DialogAd;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/airpush/android/DialogAd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airpush/android/DialogAd;->campid:Ljava/lang/String;

    return-object v0
.end method

.method public static getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/airpush/android/DialogAd;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method handleClicks()V
    .locals 5

    .prologue
    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->adtype:Ljava/lang/String;

    const-string v4, "DAU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const-string v3, "AirpushSDK"

    const-string v4, "Pushing dialog DAU Ads....."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/airpush/android/DialogAd;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    :try_start_2
    sget-object v3, Lcom/airpush/android/DialogAd;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 192
    :goto_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 185
    :try_start_4
    sget-object v4, Lcom/airpush/android/DialogAd;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    iget-object v4, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 191
    :goto_2
    throw v3

    .line 152
    :cond_0
    :try_start_5
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->adtype:Ljava/lang/String;

    const-string v4, "DCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    const-string v3, "AirpushSDK"

    const-string v4, "Pushing dialog CC Ads....."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/airpush/android/DialogAd;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 156
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 160
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_7
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->adtype:Ljava/lang/String;

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    :try_start_8
    const-string v3, "AirpushSDK"

    const-string v4, "Pushing dialog CM Ads....."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v3, "address"

    iget-object v4, p0, Lcom/airpush/android/DialogAd;->number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v3, "sms_body"

    iget-object v4, p0, Lcom/airpush/android/DialogAd;->sms:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 176
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ad type for dialog ad."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/airpush/android/DialogAd;->adtype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 188
    :catch_3
    move-exception v3

    goto/16 :goto_1

    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 162
    :catch_5
    move-exception v3

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 119
    :pswitch_0
    :try_start_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/airpush/android/DialogAd;->event:Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/airpush/android/DialogAd;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/airpush/android/DialogAd;->event:Ljava/lang/String;

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/airpush/android/DialogAd;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected showDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/airpush/android/DialogAd;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/airpush/android/DialogAd;->title:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/airpush/android/DialogAd;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    :goto_0
    const-string v2, "No Thanks."

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    iget-object v2, p0, Lcom/airpush/android/DialogAd;->buttontxt:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/airpush/android/DialogAd;->buttontxt:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/airpush/android/DialogAd;->buttontxt:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 112
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_2
    return-object v2

    .line 96
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const-string v2, "Click for new offers"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AirpushSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    goto :goto_2

    .line 103
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    :try_start_1
    const-string v2, "Yes!"

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
