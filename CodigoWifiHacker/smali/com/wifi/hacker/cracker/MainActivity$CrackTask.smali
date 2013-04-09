.class public Lcom/wifi/hacker/cracker/MainActivity$CrackTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wifi/hacker/cracker/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private mActivity:Landroid/app/Activity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mNetworkName:Ljava/lang/String;

.field final synthetic this$0:Lcom/wifi/hacker/cracker/MainActivity;


# direct methods
.method public constructor <init>(Lcom/wifi/hacker/cracker/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "activity"
    .parameter "networkName"

    .prologue
    const/4 v2, 0x0

    .line 96
    iput-object p1, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 93
    iput v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->i:I

    .line 97
    iput-object p3, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mNetworkName:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mActivity:Landroid/app/Activity;

    .line 99
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    .line 100
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 102
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 104
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Here you can set a message"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iget-object v2, v2, Lcom/wifi/hacker/cracker/MainActivity;->messages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 157
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v2}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->publishProgress([Ljava/lang/Object;)V

    .line 158
    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    const/16 v3, 0x258

    const/16 v4, 0x4b0

    invoke-virtual {v2, v3, v4}, Lcom/wifi/hacker/cracker/MainActivity;->getRandomIntBetween(II)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    :goto_1
    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "success"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    invoke-virtual {v2}, Lcom/wifi/hacker/cracker/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 121
    .local v0, localAlertDialog:Landroid/app/AlertDialog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi Key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wifi/hacker/cracker/MainActivity;->toHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "^0+(?!$)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 124
    const-string v1, "Close"

    new-instance v2, Lcom/wifi/hacker/cracker/MainActivity$CrackTask$1;

    invoke-direct {v2, p0}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask$1;-><init>(Lcom/wifi/hacker/cracker/MainActivity$CrackTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 135
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "Progress start"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 111
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 141
    iget v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->i:I

    iget-object v3, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iget-object v3, v3, Lcom/wifi/hacker/cracker/MainActivity;->messages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iget-object v3, v3, Lcom/wifi/hacker/cracker/MainActivity;->messages:[Ljava/lang/String;

    iget v4, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->i:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, message:Ljava/lang/String;
    iget v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->i:I

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->this$0:Lcom/wifi/hacker/cracker/MainActivity;

    iget-object v3, v3, Lcom/wifi/hacker/cracker/MainActivity;->messages:[Ljava/lang/String;

    array-length v3, v3

    div-int v1, v2, v3

    .line 144
    .local v1, newProgress:I
    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 145
    iget-object v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    iget v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/wifi/hacker/cracker/MainActivity$CrackTask;->i:I

    .line 150
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #newProgress:I
    :cond_0
    return-void
.end method
