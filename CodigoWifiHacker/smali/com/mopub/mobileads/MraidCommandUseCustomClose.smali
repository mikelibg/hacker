.class Lcom/mopub/mobileads/MraidCommandUseCustomClose;
.super Lcom/mopub/mobileads/MraidCommand;
.source "MraidCommand.java"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V
    .locals 0
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/mobileads/MraidView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MraidCommand;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 82
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .prologue
    .line 85
    const-string v1, "shouldUseCustomClose"

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MraidCommandUseCustomClose;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, shouldUseCustomClose:Z
    iget-object v1, p0, Lcom/mopub/mobileads/MraidCommandUseCustomClose;->mView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/MraidDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidDisplayController;->useCustomClose(Z)V

    .line 87
    return-void
.end method
