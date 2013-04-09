.class public Lcom/wifi/hacker/cracker/NetworkDetails;
.super Ljava/lang/Object;
.source "NetworkDetails.java"


# instance fields
.field public networkEncryption:Ljava/lang/String;

.field public networkName:Ljava/lang/String;

.field public networkStrength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "networkName"
    .parameter "networkEncryption"
    .parameter "networkStrength"

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkEncryption:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkStrength:I

    .line 9
    iput-object p1, p0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkEncryption:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/wifi/hacker/cracker/NetworkDetails;->networkStrength:I

    .line 12
    return-void
.end method
