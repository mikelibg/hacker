.class public Lcom/revmob/android/UserInformation;
.super Ljava/lang/Object;
.source "UserInformation.java"


# instance fields
.field private age:I

.field private gender:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "gender"
    .parameter "age"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/revmob/android/UserInformation;->gender:I

    .line 13
    iput p2, p0, Lcom/revmob/android/UserInformation;->age:I

    .line 14
    return-void
.end method

.method private putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .parameter "target"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public addUserData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    const-string v0, "gender"

    iget v1, p0, Lcom/revmob/android/UserInformation;->gender:I

    invoke-direct {p0, p1, v0, v1}, Lcom/revmob/android/UserInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 18
    const-string v0, "age"

    iget v1, p0, Lcom/revmob/android/UserInformation;->age:I

    invoke-direct {p0, p1, v0, v1}, Lcom/revmob/android/UserInformation;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 19
    return-object p1
.end method
