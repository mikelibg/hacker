.class public Lcom/millennialmedia/android/MMAdView;
.super Landroid/widget/FrameLayout;
.source "MMAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$MMAdListener;
    }
.end annotation


# static fields
.field public static final BANNER_AD_BOTTOM:Ljava/lang/String; = "MMBannerAdBottom"

.field public static final BANNER_AD_RECTANGLE:Ljava/lang/String; = "MMBannerAdRectangle"

.field public static final BANNER_AD_TOP:Ljava/lang/String; = "MMBannerAdTop"

.field public static final FULLSCREEN_AD_LAUNCH:Ljava/lang/String; = "MMFullScreenAdLaunch"

.field public static final FULLSCREEN_AD_TRANSITION:Ljava/lang/String; = "MMFullScreenAdTransition"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final REFRESH_INTERVAL_OFF:I = -0x1

.field private static nextAdViewId:J


# instance fields
.field _goalId:Ljava/lang/String;

.field accelerate:Z

.field acid:Ljava/lang/String;

.field adType:Ljava/lang/String;

.field adViewId:Ljava/lang/Long;

.field age:Ljava/lang/String;

.field apid:Ljava/lang/String;

.field children:Ljava/lang/String;

.field controller:Lcom/millennialmedia/android/MMAdViewController;

.field deferedCallForAd:Z

.field deferedFetch:Z

.field education:Ljava/lang/String;

.field ethnicity:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field height:Ljava/lang/String;

.field ignoreDensityScaling:Z

.field income:Ljava/lang/String;

.field keywords:Ljava/lang/String;

.field latitude:Ljava/lang/String;

.field listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

.field location:Landroid/location/Location;

.field longitude:Ljava/lang/String;

.field marital:Ljava/lang/String;

.field mxsdk:Ljava/lang/String;

.field orientation:Ljava/lang/String;

.field politics:Ljava/lang/String;

.field refreshInterval:I

.field testMode:Z

.field vendor:Ljava/lang/String;

.field vibrate:Z

.field width:Ljava/lang/String;

.field xmlLayout:Z

.field zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 172
    const-string v0, "Creating new MMAdView for conversion tracking."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/app/Activity;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0x3c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput v5, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v1, "28911"

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 195
    const-string v1, "Creating MMAdView from XML layout."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 197
    if-eqz p2, :cond_0

    .line 199
    const-string v0, "http://millennialmedia.com/android/schema"

    .line 200
    .local v0, namespace:Ljava/lang/String;
    const-string v1, "apid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 201
    const-string v1, "acid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 202
    const-string v1, "adType"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 203
    const-string v1, "refreshInterval"

    invoke-interface {p2, v0, v1, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 204
    const-string v1, "accelerate"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 205
    const-string v1, "ignoreDensityScaling"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 206
    const-string v1, "height"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 207
    const-string v1, "width"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 208
    const-string v1, "age"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 209
    const-string v1, "gender"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 210
    const-string v1, "zip"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 211
    const-string v1, "income"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 212
    const-string v1, "keywords"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 213
    const-string v1, "ethnicity"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 214
    const-string v1, "orientation"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 215
    const-string v1, "marital"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 216
    const-string v1, "children"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 217
    const-string v1, "education"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 218
    const-string v1, "politics"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 219
    const-string v1, "vendor"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 220
    const-string v1, "goalId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->_goalId:Ljava/lang/String;

    .line 222
    .end local v0           #namespace:Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 223
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 237
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 238
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 239
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 240
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 241
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 287
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 288
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 290
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 291
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Z)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"
    .parameter
    .parameter "accelerate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 307
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 308
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 309
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 310
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 311
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 312
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 313
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 314
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"
    .parameter "testMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 251
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 252
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 254
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 255
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 256
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Hashtable;)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"
    .parameter "testMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 324
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 325
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 326
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 327
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 328
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 329
    invoke-virtual {p0, p6}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"
    .parameter "testMode"
    .parameter "accelerate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 266
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 267
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 268
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 269
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 270
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 271
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 272
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZLjava/util/Hashtable;)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "refreshInterval"
    .parameter "testMode"
    .parameter "accelerate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 340
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 341
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 343
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 344
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 345
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 346
    invoke-virtual {p0, p7}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;)V
    .locals 4
    .parameter "context"
    .parameter "apid"
    .parameter "adType"
    .parameter "accelerate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 76
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 101
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 103
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 109
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 112
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 113
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 362
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 363
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 364
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 366
    iput-boolean p4, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 367
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/app/Activity;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 183
    check-cast p1, Landroid/app/Activity;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method private _callForAd(Z)V
    .locals 4
    .parameter "fetch"

    .prologue
    .line 720
    :try_start_0
    const-string v1, "callForAd"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    if-eqz v1, :cond_0

    .line 725
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->deferedCallForAd:Z

    .line 726
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->deferedFetch:Z

    .line 745
    :goto_0
    return-void

    .line 730
    :cond_0
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-gez v1, :cond_1

    .line 733
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 734
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMAdViewController;->chooseCachedAdOrAdCall(Z)V

    .line 737
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->deferedCallForAd:Z

    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->deferedFetch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MillennialMediaSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an exception with the ad request. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static checkPermissions(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x3

    .line 1157
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1159
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1160
    .local v2, phoneStateDialog:Landroid/app/AlertDialog;
    const-string v3, "Whoops!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1161
    const-string v3, "The developer has forgot to declare the READ_PHONE_STATE permission in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1162
    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MMAdView$3;

    invoke-direct {v4, v2}, Lcom/millennialmedia/android/MMAdView$3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1166
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1169
    .end local v2           #phoneStateDialog:Landroid/app/AlertDialog;
    :cond_0
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1171
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1172
    .local v0, internetDialog:Landroid/app/AlertDialog;
    const-string v3, "Whoops!"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1173
    const-string v3, "The developer has forgot to declare the INTERNET permission in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1174
    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MMAdView$4;

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/MMAdView$4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1178
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1181
    .end local v0           #internetDialog:Landroid/app/AlertDialog;
    :cond_1
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1183
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1184
    .local v1, networkStateDialog:Landroid/app/AlertDialog;
    const-string v3, "Whoops!"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1185
    const-string v3, "The developer has forgot to declare the ACCESS_NETWORK_STATE permission in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1186
    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MMAdView$5;

    invoke-direct {v4, v1}, Lcom/millennialmedia/android/MMAdView$5;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1190
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1192
    .end local v1           #networkStateDialog:Landroid/app/AlertDialog;
    :cond_2
    return-void
.end method

.method static getAdTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MMBannerAdTop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MMBannerAdBottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MMBannerAdRectangle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MMFullScreenAdLaunch"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MMFullScreenAdTransition"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private init(Landroid/app/Activity;)V
    .locals 13
    .parameter "activity"

    .prologue
    const/4 v12, -0x1

    .line 379
    :try_start_0
    const-string v6, "Initializing MMAdView."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 382
    const-class v7, Lcom/millennialmedia/android/MMAdView;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :try_start_1
    new-instance v6, Ljava/lang/Long;

    sget-wide v8, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    iput-object v6, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    .line 385
    sget-wide v8, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    sput-wide v8, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Assigning MMAdView internal id: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 387
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :try_start_2
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/app/Activity;)V

    .line 393
    const-string v6, "android.permission.VIBRATE"

    invoke-virtual {p1, v6}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v12, :cond_0

    .line 396
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/android/MMAdView;->vibrate:Z

    .line 400
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 404
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_3
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.millennialmedia.android.VideoPlayer"

    invoke-direct {v1, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    .local v1, cn:Landroid/content/ComponentName;
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 420
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    :try_start_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.millennialmedia.android.MMAdViewOverlayActivity"

    invoke-direct {v1, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    .restart local v1       #cn:Landroid/content/ComponentName;
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 436
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_1
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 439
    invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V

    .line 441
    const/high16 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMAdView;->setDescendantFocusability(I)V

    .line 444
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 446
    const-string v6, "MillennialMediaSDK"

    const-string v7, "MMAdView initialized without an apid. New ad requests will be disabled."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v6, "28911"

    sput-object v6, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    .line 453
    :goto_2
    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/millennialmedia/android/HandShake;->overrideAdRefresh(Lcom/millennialmedia/android/MMAdView;)V

    .line 456
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v7, "MMFullScreenAdTransition"

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v7, "MMFullScreenAdLaunch"

    if-ne v6, v7, :cond_2

    .line 458
    :cond_1
    iget v6, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-eq v6, v12, :cond_2

    .line 460
    const-string v6, "MillennialMediaSDK"

    const-string v7, "Turning off interstitial refresh interval."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v6, -0x1

    iput v6, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 470
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_3
    return-void

    .line 387
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 465
    :catch_0
    move-exception v2

    .line 467
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "MillennialMediaSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was an exception initializing the MMAdView. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 406
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 407
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_8
    const-string v6, "MillennialMediaSDK"

    const-string v7, "Activity VideoPlayer not declared in AndroidManifest.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 409
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 410
    .local v5, videoDialog:Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 411
    const-string v6, "The developer has forgot to declare the Millennial Media Video Player in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v6, -0x3

    const-string v7, "OK"

    new-instance v8, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v8, p0, v5}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 416
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 422
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #videoDialog:Landroid/app/AlertDialog;
    :catch_2
    move-exception v2

    .line 423
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "MillennialMediaSDK"

    const-string v7, "Activity MMAdViewOverlayActivity not declared in AndroidManifest.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 425
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 426
    .local v3, overlayDialog:Landroid/app/AlertDialog;
    const-string v6, "Whoops!"

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    const-string v6, "The developer has forgot to declare the Millennial Media MMAdViewOverlayActivity in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 428
    const/4 v6, -0x3

    const-string v7, "OK"

    new-instance v8, Lcom/millennialmedia/android/MMAdView$2;

    invoke-direct {v8, p0, v3}, Lcom/millennialmedia/android/MMAdView$2;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 432
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 451
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #overlayDialog:Landroid/app/AlertDialog;
    :cond_3
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    sput-object v6, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2
.end method

.method public static startConversionTrackerWithGoalId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "goalId"

    .prologue
    .line 1306
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    monitor-enter p0

    .line 1311
    :try_start_0
    const-string v6, "MillennialMediaSettings"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1312
    .local v4, settings:Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstLaunch_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1313
    .local v3, isFirstLaunch:Z
    if-eqz v3, :cond_2

    .line 1315
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1316
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstLaunch_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1317
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1319
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v6, v0

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/app/Activity;)V

    .line 1320
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, auid:Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1324
    new-instance v5, Lcom/millennialmedia/android/MMAdView$7;

    invoke-direct {v5, p1, v1, v3}, Lcom/millennialmedia/android/MMAdView$7;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1335
    .local v5, thread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1341
    .end local v5           #thread:Ljava/lang/Thread;
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1           #auid:Ljava/lang/String;
    .end local v3           #isFirstLaunch:Z
    .end local v4           #settings:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1339
    .restart local v1       #auid:Ljava/lang/String;
    .restart local v3       #isFirstLaunch:Z
    .restart local v4       #settings:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    const-string v6, "MillennialMediaSDK"

    const-string v7, "No network available for conversion tracking."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public callForAd()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->_callForAd(Z)V

    .line 755
    return-void
.end method

.method public check()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 790
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v2, :cond_0

    .line 791
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMAdViewController;->check(Lcom/millennialmedia/android/MMAdView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 798
    :cond_0
    :goto_0
    return v1

    .line 794
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MillennialMediaSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an exception checking for a cached ad. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public display()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 810
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v2, :cond_0

    .line 811
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMAdViewController;->display(Lcom/millennialmedia/android/MMAdView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 818
    :cond_0
    :goto_0
    return v1

    .line 814
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MillennialMediaSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an exception displaying a cached ad. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fetch()V
    .locals 4

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->check()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    const-string v1, "Ad already fetched and ready for display..."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MillennialMediaSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "Fetching new ad..."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 778
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/millennialmedia/android/MMAdView;->_callForAd(Z)V

    goto :goto_0
.end method

.method public getListener()Lcom/millennialmedia/android/MMAdView$MMAdListener;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    return-object v0
.end method

.method public halt()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 546
    const-string v0, "onAttachedToWindow"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 547
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 548
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedCallForAd:Z

    if-eqz v0, :cond_0

    .line 549
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedFetch:Z

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->_callForAd(Z)V

    .line 550
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 600
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 601
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 558
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 560
    const-string v0, "onDetachedFromWindow"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 562
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 583
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 586
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "onRestoreInstanceState"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 588
    const-string v3, "MMAdView"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 589
    .local v1, id:J
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    .line 590
    const-string v3, "super"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 591
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 570
    const-string v1, "onSaveInstanceState"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 571
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    const-string v1, "MMAdView"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 574
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 622
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 625
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 688
    :cond_0
    :goto_0
    return v7

    .line 628
    :cond_1
    if-ne v0, v7, :cond_0

    .line 630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad clicked: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 631
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v6, "mmvideo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v6, "content.once"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 633
    :cond_2
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iput-boolean v7, v5, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 635
    :cond_3
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-boolean v5, v5, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    if-ne v5, v7, :cond_6

    .line 638
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v5, :cond_4

    .line 642
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v5, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 648
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v6, v6, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :catch_0
    move-exception v2

    .local v2, exception:Ljava/lang/Exception;
    const-string v5, "MillennialMediaSDK"

    const-string v6, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 650
    .end local v2           #exception:Ljava/lang/Exception;
    :cond_5
    const-string v5, "MillennialMediaSDK"

    const-string v6, "No ad returned, no overlay launched"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_6
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 657
    const-string v5, "Ad clicked, launching new browser"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 660
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_7

    .line 662
    const-string v5, "MillennialMediaSDK"

    const-string v6, "The reference to the ad view was broken."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    :cond_7
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v6, v6, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 669
    .local v3, myIntent:Landroid/content/Intent;
    const/high16 v5, 0x2400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 673
    .end local v3           #myIntent:Landroid/content/Intent;
    :goto_2
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v5, :cond_0

    .line 677
    :try_start_2
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v5, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 679
    :catch_1
    move-exception v2

    .restart local v2       #exception:Ljava/lang/Exception;
    const-string v5, "MillennialMediaSDK"

    const-string v6, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 671
    .end local v2           #exception:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .local v4, notFoundException:Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find activity for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v6, v6, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 684
    .end local v1           #activity:Landroid/app/Activity;
    .end local v4           #notFoundException:Landroid/content/ActivityNotFoundException;
    :cond_8
    const-string v5, "MillennialMediaSDK"

    const-string v6, "No ad returned, no new browser launched"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_0

    .line 520
    if-nez p2, :cond_2

    .line 521
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 525
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window Visibility Changed. Window is visible?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 526
    return-void

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "windowInFocus"

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 489
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_0

    .line 491
    if-eqz p1, :cond_3

    .line 492
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 497
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window Focus Changed. Window in focus?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 499
    if-nez p1, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 502
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 508
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    return-void

    .line 494
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 840
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 850
    :cond_0
    return-void
.end method

.method public setAcid(Ljava/lang/String;)V
    .locals 0
    .parameter "acid"

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 1033
    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 877
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 887
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 888
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 0
    .parameter "apid"

    .prologue
    .line 998
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 999
    return-void
.end method

.method public setEducation(Ljava/lang/String;)V
    .locals 0
    .parameter "education"

    .prologue
    .line 979
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 980
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 0
    .parameter "ethnicity"

    .prologue
    .line 959
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 960
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 897
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 898
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 1009
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .parameter "ignoresDensityScaling"

    .prologue
    .line 1149
    monitor-enter p0

    .line 1151
    :try_start_0
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 1152
    monitor-exit p0

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIncome(Ljava/lang/String;)V
    .locals 0
    .parameter "income"

    .prologue
    .line 927
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 928
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 938
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 939
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1124
    monitor-enter p0

    .line 1126
    :try_start_0
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .line 1127
    monitor-exit p0

    .line 1128
    return-void

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 949
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 950
    return-void
.end method

.method public setMarital(Ljava/lang/String;)V
    .locals 0
    .parameter "marital"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public setMetaValues(Ljava/util/Hashtable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p1, metaHash:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 1070
    :cond_2
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1071
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 1073
    :cond_3
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1074
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 1076
    :cond_4
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1077
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 1079
    :cond_5
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1080
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 1082
    :cond_6
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1083
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 1085
    :cond_7
    const-string v0, "mmacid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    const-string v0, "mmacid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 1088
    :cond_8
    const-string v0, "mxsdk"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1089
    const-string v0, "mxsdk"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 1091
    :cond_9
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1092
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 1094
    :cond_a
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1095
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 1097
    :cond_b
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1098
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 1100
    :cond_c
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1101
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 1103
    :cond_d
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1104
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 1106
    :cond_e
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1107
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 1109
    :cond_f
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1110
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 1112
    :cond_10
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setMxsdk(Ljava/lang/String;)V
    .locals 0
    .parameter "mxsdk"

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 969
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 970
    return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
    .locals 0
    .parameter "politics"

    .prologue
    .line 989
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 990
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .parameter "vendor"

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    .line 1024
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 1019
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .parameter "zip"

    .prologue
    .line 907
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 908
    return-void
.end method

.method public startConversionTrackerWithGoalId(Ljava/lang/String;)V
    .locals 8
    .parameter "goalId"

    .prologue
    const/4 v7, 0x0

    .line 1263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->_goalId:Ljava/lang/String;

    .line 1267
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "MillennialMediaSettings"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1268
    .local v3, settings:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstLaunch_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->_goalId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1269
    .local v2, isFirstLaunch:Z
    if-eqz v2, :cond_2

    .line 1271
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1272
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstLaunch_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->_goalId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1273
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1275
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1277
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuidOrHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, auid:Ljava/lang/String;
    new-instance v4, Lcom/millennialmedia/android/MMAdView$6;

    invoke-direct {v4, p0, v0, v2}, Lcom/millennialmedia/android/MMAdView$6;-><init>(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;Z)V

    .line 1290
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1294
    .end local v0           #auid:Ljava/lang/String;
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_3
    const-string v5, "MillennialMediaSDK"

    const-string v6, "No network available for conversion tracking."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateUserLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "userLocation"

    .prologue
    .line 858
    if-nez p1, :cond_0

    .line 865
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 863
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 864
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    goto :goto_0
.end method
