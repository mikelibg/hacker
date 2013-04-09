.class public Lcom/pad/android/richmedia/view/AdView;
.super Landroid/webkit/WebView;
.source "AdView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pad/android/richmedia/view/AdView$ACTION;,
        Lcom/pad/android/richmedia/view/AdView$AdChromeClient;,
        Lcom/pad/android/richmedia/view/AdView$AdViewListener;,
        Lcom/pad/android/richmedia/view/AdView$LoadAsync;,
        Lcom/pad/android/richmedia/view/AdView$LoadInputStream;,
        Lcom/pad/android/richmedia/view/AdView$NewLocationReciever;,
        Lcom/pad/android/richmedia/view/AdView$ScrollEater;,
        Lcom/pad/android/richmedia/view/AdView$TimeOut;,
        Lcom/pad/android/richmedia/view/AdView$ViewState;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final AD_PATH:Ljava/lang/String; = "AD_PATH"

.field protected static final BACKGROUND_ID:I = 0x65

.field private static final CURRENT_FILE:Ljava/lang/String; = "_ormma_current"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field private static final ERROR_ACTION:Ljava/lang/String; = "action"

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "message"

.field private static final EXPAND_PROPERTIES:Ljava/lang/String; = "expand_properties"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static final LOG_TAG:Ljava/lang/String; = "LBAdView"

.field private static final MESSAGE_CLOSE:I = 0x3e9

.field private static final MESSAGE_EXPAND:I = 0x3ec

.field private static final MESSAGE_HIDE:I = 0x3ea

.field private static final MESSAGE_OPEN:I = 0x3ee

.field private static final MESSAGE_PLAY_AUDIO:I = 0x3f0

.field private static final MESSAGE_PLAY_VIDEO:I = 0x3ef

.field private static final MESSAGE_RAISE_ERROR:I = 0x3f1

.field private static final MESSAGE_RESIZE:I = 0x3e8

.field private static final MESSAGE_SEND_EXPAND_CLOSE:I = 0x3ed

.field private static final MESSAGE_SHOW:I = 0x3eb

.field public static final ORMMA_ID:I = 0x66

.field protected static final PLACEHOLDER_ID:I = 0x64

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static final RESIZE_HEIGHT:Ljava/lang/String; = "resize_height"

.field private static final RESIZE_WIDTH:Ljava/lang/String; = "resize_width"

.field private static final TAG:Ljava/lang/String; = "AdView"

.field private static attrs:[I

.field private static mBridgeScriptPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mScriptPath:Ljava/lang/String;

.field private static player:Lcom/pad/android/util/AdPlayer;


# instance fields
.field private bGotLayoutParams:Z

.field private bKeyboardOut:Z

.field private bPageFinished:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mAdListener:Lcom/pad/android/listener/AdListener;

.field private mContentViewHeight:I

.field private mController:Lcom/pad/android/iappad/AdController;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mInitLayoutHeight:I

.field private mInitLayoutWidth:I

.field private mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

.field private mLocalFilePath:Ljava/lang/String;

.field private mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

.field final mView:Landroid/webkit/WebView;

.field private mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

.field mWebChromeClient:Landroid/webkit/WebChromeClient;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field private mapAPIKey:Ljava/lang/String;

.field private final registeredProtocols:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pad/android/richmedia/view/AdView;->attrs:[I

    .line 68
    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    .line 723
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$1;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$1;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$2;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$2;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1054
    iput-object p0, p0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    .line 1185
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 205
    sput-object p1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    .line 206
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->initialize()V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v5, -0x1

    .line 689
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    sget-object v3, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 153
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    .line 723
    new-instance v3, Lcom/pad/android/richmedia/view/AdView$1;

    invoke-direct {v3, p0}, Lcom/pad/android/richmedia/view/AdView$1;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v3, Lcom/pad/android/richmedia/view/AdView$2;

    invoke-direct {v3, p0}, Lcom/pad/android/richmedia/view/AdView$2;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1054
    iput-object p0, p0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    .line 1185
    new-instance v3, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;

    sget-object v4, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 691
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->initialize()V

    .line 693
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/pad/android/richmedia/view/AdView;->attrs:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 695
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 696
    .local v2, w:I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 698
    .local v1, h:I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 699
    iget-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    invoke-virtual {v3, v2, v1}, Lcom/pad/android/iappad/controller/AdUtilityController;->setMaxSize(II)V

    .line 701
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 703
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/listener/AdListener;)V
    .locals 2
    .parameter "context"
    .parameter "adCon"
    .parameter "list"

    .prologue
    .line 211
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    .line 723
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$1;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$1;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$2;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$2;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1054
    iput-object p0, p0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    .line 1185
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 212
    sput-object p1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView;->mController:Lcom/pad/android/iappad/AdController;

    .line 214
    iput-object p3, p0, Lcom/pad/android/richmedia/view/AdView;->mAdListener:Lcom/pad/android/listener/AdListener;

    .line 215
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->initialize()V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pad/android/richmedia/view/AdView$AdViewListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    .line 723
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$1;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$1;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$2;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$2;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1054
    iput-object p0, p0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    .line 1185
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 171
    sput-object p1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0, p2}, Lcom/pad/android/richmedia/view/AdView;->setListener(Lcom/pad/android/richmedia/view/AdView$AdViewListener;)V

    .line 173
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->initialize()V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "mapAPIKey"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    .line 723
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$1;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$1;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$2;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$2;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1054
    iput-object p0, p0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    .line 1185
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 220
    sput-object p1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    .line 226
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView;->mapAPIKey:Ljava/lang/String;

    .line 228
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->initialize()V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/pad/android/richmedia/view/AdView$AdViewListener;)V
    .locals 2
    .parameter "context"
    .parameter "mapAPIKey"
    .parameter "listener"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    .line 723
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$1;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$1;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    .line 926
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$2;

    invoke-direct {v0, p0}, Lcom/pad/android/richmedia/view/AdView$2;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 1054
    iput-object p0, p0, Lcom/pad/android/richmedia/view/AdView;->mView:Landroid/webkit/WebView;

    .line 1185
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/richmedia/view/AdView$AdChromeClient;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 233
    sput-object p1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    .line 239
    iput-object p2, p0, Lcom/pad/android/richmedia/view/AdView;->mapAPIKey:Ljava/lang/String;

    .line 241
    invoke-virtual {p0, p3}, Lcom/pad/android/richmedia/view/AdView;->setListener(Lcom/pad/android/richmedia/view/AdView$AdViewListener;)V

    .line 243
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->initialize()V

    .line 244
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$AdViewListener;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/richmedia/view/AdView;Lcom/pad/android/richmedia/view/AdView$ViewState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    return-void
.end method

.method static synthetic access$10(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/AdController;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mController:Lcom/pad/android/iappad/AdController;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pad/android/richmedia/view/AdView;Landroid/net/Uri;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/pad/android/richmedia/view/AdView;->isRegisteredProtocol(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->mBridgeScriptPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->mScriptPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/pad/android/richmedia/view/AdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/pad/android/richmedia/view/AdView;->superviewLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/pad/android/richmedia/view/AdView;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    invoke-direct {p0, p1, p2}, Lcom/pad/android/richmedia/view/AdView;->loadInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/pad/android/richmedia/view/AdView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 723
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/richmedia/view/AdView$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pad/android/richmedia/view/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->closeResized()V

    return-void
.end method

.method static synthetic access$4(Lcom/pad/android/richmedia/view/AdView;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/pad/android/richmedia/view/AdView;->doExpand(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5(Lcom/pad/android/richmedia/view/AdView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pad/android/richmedia/view/AdView;)F
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/pad/android/richmedia/view/AdView;->mDensity:F

    return v0
.end method

.method static synthetic access$7(Lcom/pad/android/richmedia/view/AdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/pad/android/richmedia/view/AdView;->mDefaultHeight:I

    return-void
.end method

.method static synthetic access$8(Lcom/pad/android/richmedia/view/AdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/pad/android/richmedia/view/AdView;->mDefaultWidth:I

    return-void
.end method

.method static synthetic access$9(Lcom/pad/android/richmedia/view/AdView;)Lcom/pad/android/iappad/controller/AdUtilityController;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    return-object v0
.end method

.method private changeContentArea(Lcom/pad/android/iappad/AdController$Dimensions;)Landroid/widget/FrameLayout;
    .locals 13
    .parameter "d"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 816
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 817
    const v10, 0x1020002

    .line 816
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 819
    .local v2, contentView:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 820
    .local v7, parent:Landroid/view/ViewGroup;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 821
    iget v9, p1, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    iget v10, p1, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    .line 820
    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 822
    .local v4, fl:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 823
    iget v9, p1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 825
    const/4 v5, 0x0

    .line 826
    .local v5, index:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 827
    .local v3, count:I
    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_1

    .line 831
    :cond_0
    iput v5, p0, Lcom/pad/android/richmedia/view/AdView;->mIndex:I

    .line 832
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 833
    .local v8, placeHolder:Landroid/widget/FrameLayout;
    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 834
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getWidth()I

    move-result v9

    .line 835
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getHeight()I

    move-result v10

    .line 834
    invoke-direct {v6, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 836
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v8, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 837
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 839
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 841
    .local v0, backGround:Landroid/widget/FrameLayout;
    new-instance v9, Lcom/pad/android/richmedia/view/AdView$4;

    invoke-direct {v9, p0}, Lcom/pad/android/richmedia/view/AdView$4;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 848
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 851
    .local v1, bgfl:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x65

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 852
    iget v9, p1, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    iget v10, p1, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    invoke-virtual {v0, v9, v10, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 853
    invoke-virtual {v0, p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    return-object v0

    .line 828
    .end local v0           #backGround:Landroid/widget/FrameLayout;
    .end local v1           #bgfl:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v8           #placeHolder:Landroid/widget/FrameLayout;
    :cond_1
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eq v9, p0, :cond_0

    .line 827
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private closeResized()V
    .locals 4

    .prologue
    .line 896
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    invoke-interface {v1}, Lcom/pad/android/richmedia/view/AdView$AdViewListener;->onResizeClose()Z

    .line 898
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.ormmaview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 902
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 903
    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 904
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 898
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, injection:Ljava/lang/String;
    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeResized: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {p0, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 907
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->resetLayout()V

    .line 908
    return-void
.end method

.method private doExpand(Landroid/os/Bundle;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 864
    const-string v6, "expand_dimensions"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/pad/android/iappad/AdController$Dimensions;

    .line 865
    .local v2, d:Lcom/pad/android/iappad/AdController$Dimensions;
    const-string v6, "expand_url"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, url:Ljava/lang/String;
    const-string v6, "expand_properties"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/pad/android/iappad/AdController$Properties;

    .line 867
    .local v4, p:Lcom/pad/android/iappad/AdController$Properties;
    invoke-static {v5}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 868
    invoke-virtual {p0, v5}, Lcom/pad/android/richmedia/view/AdView;->loadUrl(Ljava/lang/String;)V

    .line 871
    :cond_0
    invoke-direct {p0, v2}, Lcom/pad/android/richmedia/view/AdView;->changeContentArea(Lcom/pad/android/iappad/AdController$Dimensions;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 873
    .local v0, backGround:Landroid/widget/FrameLayout;
    iget-boolean v6, v4, Lcom/pad/android/iappad/AdController$Properties;->useBackground:Z

    if-eqz v6, :cond_1

    .line 874
    iget v6, v4, Lcom/pad/android/iappad/AdController$Properties;->backgroundColor:I

    .line 875
    iget v7, v4, Lcom/pad/android/iappad/AdController$Properties;->backgroundOpacity:F

    const/high16 v8, 0x437f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x1000

    mul-int/2addr v7, v8

    .line 874
    or-int v1, v6, v7

    .line 876
    .local v1, color:I
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 879
    .end local v1           #color:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "window.ormmaview.fireChangeEvent({ state: \'expanded\', size: { width: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    iget v7, v2, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/pad/android/richmedia/view/AdView;->mDensity:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 883
    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 884
    const-string v7, "height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    int-to-float v7, v7

    iget v8, p0, Lcom/pad/android/richmedia/view/AdView;->mDensity:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " });"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, injection:Ljava/lang/String;
    const-string v6, "LBAdView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doExpand: injection: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0, v3}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 887
    iget-object v6, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    if-eqz v6, :cond_2

    .line 888
    iget-object v6, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    invoke-interface {v6}, Lcom/pad/android/richmedia/view/AdView$AdViewListener;->onExpand()Z

    .line 889
    :cond_2
    sget-object v6, Lcom/pad/android/richmedia/view/AdView$ViewState;->EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v6, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 890
    return-void
.end method

.method private getContentViewHeight()I
    .locals 3

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1246
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1247
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1249
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1197
    const-string v2, "LBAdController"

    const-string v3, "Going to initialize mView"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0, v4}, Lcom/pad/android/richmedia/view/AdView;->setScrollContainer(Z)V

    .line 1200
    invoke-virtual {p0, v4}, Lcom/pad/android/richmedia/view/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 1201
    invoke-virtual {p0, v4}, Lcom/pad/android/richmedia/view/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 1202
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/pad/android/richmedia/view/AdView$ScrollEater;

    invoke-direct {v3, p0}, Lcom/pad/android/richmedia/view/AdView$ScrollEater;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1204
    invoke-virtual {p0, v4}, Lcom/pad/android/richmedia/view/AdView;->setBackgroundColor(I)V

    .line 1205
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1206
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1207
    const-string v3, "window"

    .line 1206
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1209
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1210
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDensity:F

    .line 1212
    iput-boolean v4, p0, Lcom/pad/android/richmedia/view/AdView;->bPageFinished:Z

    .line 1214
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1215
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 1216
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1218
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v2}, Lcom/pad/android/richmedia/view/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1219
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v2}, Lcom/pad/android/richmedia/view/AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1221
    new-instance v2, Lcom/pad/android/iappad/controller/AdUtilityController;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/pad/android/iappad/controller/AdUtilityController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    .line 1223
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    const-string v3, "ORMMAUtilityControllerBridge"

    invoke-virtual {p0, v2, v3}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    new-instance v3, Lcom/pad/android/iappad/AdJSInterface;

    sget-object v2, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v4, p0, Lcom/pad/android/richmedia/view/AdView;->mController:Lcom/pad/android/iappad/AdController;

    iget-object v5, p0, Lcom/pad/android/richmedia/view/AdView;->mAdListener:Lcom/pad/android/listener/AdListener;

    invoke-direct {v3, v2, v4, v5}, Lcom/pad/android/iappad/AdJSInterface;-><init>(Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/listener/AdListener;)V

    const-string v2, "LBOUT"

    invoke-virtual {p0, v3, v2}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->setScriptPath()V

    .line 1228
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->getContentViewHeight()I

    move-result v2

    iput v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    .line 1230
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1231
    const-string v2, "LBAdController"

    const-string v3, "mView Initialize complete"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    return-void
.end method

.method private isRegisteredProtocol(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, scheme:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v2

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, protocol:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "is"
    .parameter "dataToInject"

    .prologue
    .line 528
    const-string v1, "AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadInputStream, data ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->reset()V

    .line 534
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;-><init>(Lcom/pad/android/richmedia/view/AdView;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 535
    .local v0, input:Lcom/pad/android/richmedia/view/AdView$LoadInputStream;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/richmedia/view/AdView$LoadInputStream;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 536
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    if-ne v0, v1, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->closeExpanded()V

    .line 479
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->invalidate()V

    .line 480
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdUtilityController;->deleteOldAds()V

    .line 481
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdUtilityController;->stopAllListeners()V

    .line 482
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->resetLayout()V

    .line 483
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->RESIZED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    if-ne v0, v1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->closeResized()V

    goto :goto_0
.end method

.method private resetLayout()V
    .locals 2

    .prologue
    .line 1713
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1714
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v1, p0, Lcom/pad/android/richmedia/view/AdView;->bGotLayoutParams:Z

    if-eqz v1, :cond_0

    .line 1715
    iget v1, p0, Lcom/pad/android/richmedia/view/AdView;->mInitLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1716
    iget v1, p0, Lcom/pad/android/richmedia/view/AdView;->mInitLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1718
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pad/android/richmedia/view/AdView;->setVisibility(I)V

    .line 1719
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->requestLayout()V

    .line 1720
    return-void
.end method

.method private declared-synchronized setScriptPath()V
    .locals 3

    .prologue
    .line 1256
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->mScriptPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    const-string v1, "/js/ormma.js"

    const-string v2, "js/ormma.js"

    invoke-virtual {v0, v1, v2}, Lcom/pad/android/iappad/controller/AdUtilityController;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pad/android/richmedia/view/AdView;->mScriptPath:Ljava/lang/String;

    .line 1259
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mScriptPath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pad/android/richmedia/view/AdView;->mScriptPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    :cond_0
    monitor-exit p0

    return-void

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private superviewLoad(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 541
    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "obj"
    .parameter "name"

    .prologue
    .line 1236
    invoke-virtual {p0, p1, p2}, Lcom/pad/android/richmedia/view/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->reset()V

    .line 467
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 468
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1339
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pad/android/richmedia/view/AdView$6;

    invoke-direct {v1, p0}, Lcom/pad/android/richmedia/view/AdView$6;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1355
    return-void
.end method

.method protected declared-synchronized closeExpanded()V
    .locals 4

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->resetContents()V

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.ormmaview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1281
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDefaultWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1282
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1283
    const-string v2, "height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1284
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDefaultHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, injection:Ljava/lang/String;
    const-string v1, "LBAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeExpanded: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {p0, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 1288
    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->DEFAULT:Lcom/pad/android/richmedia/view/AdView$ViewState;

    iput-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    .line 1290
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1291
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pad/android/richmedia/view/AdView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    monitor-exit p0

    return-void

    .line 1276
    .end local v0           #injection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1
    .parameter "openedFrame"

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1302
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1303
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->requestLayout()V

    .line 1304
    return-void
.end method

.method public deregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .parameter "protocol"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 1392
    return-void
.end method

.method public expand(Lcom/pad/android/iappad/AdController$Dimensions;Ljava/lang/String;Lcom/pad/android/iappad/AdController$Properties;)V
    .locals 4
    .parameter "dimensions"
    .parameter "URL"
    .parameter "properties"

    .prologue
    .line 1405
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1407
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1408
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "expand_dimensions"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1409
    const-string v2, "expand_url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v2, "expand_properties"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1411
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1413
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1414
    return-void
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1383
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1384
    const-string v1, "connectivity"

    .line 1383
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method getPlayer()Lcom/pad/android/util/AdPlayer;
    .locals 2

    .prologue
    .line 1865
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->player:Lcom/pad/android/util/AdPlayer;

    if-eqz v0, :cond_0

    .line 1866
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->player:Lcom/pad/android/util/AdPlayer;

    invoke-virtual {v0}, Lcom/pad/android/util/AdPlayer;->releasePlayer()V

    .line 1867
    :cond_0
    new-instance v0, Lcom/pad/android/util/AdPlayer;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pad/android/util/AdPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pad/android/richmedia/view/AdView;->player:Lcom/pad/android/util/AdPlayer;

    .line 1868
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->player:Lcom/pad/android/util/AdPlayer;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1767
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mDensity:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    invoke-virtual {v0}, Lcom/pad/android/richmedia/view/AdView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 1364
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :goto_0
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1368
    return-void

    .line 1366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 376
    if-eqz p1, :cond_0

    .line 378
    move-object v0, p1

    .line 379
    .local v0, s:Ljava/lang/String;
    sget-object v1, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/pad/android/richmedia/view/AdView$3;

    invoke-direct {v2, p0, v0}, Lcom/pad/android/richmedia/view/AdView$3;-><init>(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mViewState:Lcom/pad/android/richmedia/view/AdView$ViewState;

    sget-object v1, Lcom/pad/android/richmedia/view/AdView$ViewState;->EXPANDED:Lcom/pad/android/richmedia/view/AdView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 1728
    iget-boolean v0, p0, Lcom/pad/android/richmedia/view/AdView;->bPageFinished:Z

    return v0
.end method

.method public loadFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter "f"
    .parameter "dataToInject"

    .prologue
    .line 419
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, p2}, Lcom/pad/android/richmedia/view/AdView;->loadInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "erro with loadFile - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public loadHTMLWrap(Ljava/lang/String;)V
    .locals 8
    .parameter "htmlContent"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    const-string v2, "_ormma_current"

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/pad/android/richmedia/view/AdView;->mBridgeScriptPath:Ljava/lang/String;

    sget-object v6, Lcom/pad/android/richmedia/view/AdView;->mScriptPath:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/pad/android/iappad/controller/AdUtilityController;->writeHTMLToDiskWrap(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ormma_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 914
    .local v7, url:Ljava/lang/String;
    sget-object v0, Lcom/pad/android/richmedia/view/AdView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pad/android/richmedia/view/AdView$5;

    invoke-direct {v1, p0, v7}, Lcom/pad/android/richmedia/view/AdView$5;-><init>(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/pad/android/richmedia/view/AdView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 406
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "dataToInject"

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/pad/android/richmedia/view/AdView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 398
    return-void
.end method

.method public loadUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "dontLoad"
    .parameter "dataToInject"

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    if-nez p2, :cond_0

    .line 618
    iput-boolean v2, p0, Lcom/pad/android/richmedia/view/AdView;->bPageFinished:Z

    .line 621
    :try_start_0
    new-instance v0, Lcom/pad/android/richmedia/view/AdView$LoadAsync;

    invoke-direct {v0, p0, p1, p3}, Lcom/pad/android/richmedia/view/AdView$LoadAsync;-><init>(Lcom/pad/android/richmedia/view/AdView;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .local v0, as:Lcom/pad/android/richmedia/view/AdView$LoadAsync;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/richmedia/view/AdView$LoadAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v0           #as:Lcom/pad/android/richmedia/view/AdView$LoadAsync;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 628
    :cond_1
    return-void

    .line 623
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1779
    iget-boolean v1, p0, Lcom/pad/android/richmedia/view/AdView;->bGotLayoutParams:Z

    if-nez v1, :cond_0

    .line 1780
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1781
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/pad/android/richmedia/view/AdView;->mInitLayoutHeight:I

    .line 1782
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/pad/android/richmedia/view/AdView;->mInitLayoutWidth:I

    .line 1783
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pad/android/richmedia/view/AdView;->bGotLayoutParams:Z

    .line 1785
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 1786
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdUtilityController;->stopAllListeners()V

    .line 1860
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 1861
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1734
    const-string v2, "LBAdView"

    const-string v3, "onGlobalLayout called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-boolean v1, p0, Lcom/pad/android/richmedia/view/AdView;->bKeyboardOut:Z

    .line 1736
    .local v1, state:Z
    iget-boolean v2, p0, Lcom/pad/android/richmedia/view/AdView;->bKeyboardOut:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    if-ltz v2, :cond_0

    .line 1737
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->getContentViewHeight()I

    move-result v2

    if-ltz v2, :cond_0

    .line 1738
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->getContentViewHeight()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1740
    const/4 v1, 0x1

    .line 1741
    const-string v0, "window.ormmaview.fireChangeEvent({ keyboardState: true});"

    .line 1742
    .local v0, injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 1745
    .end local v0           #injection:Ljava/lang/String;
    :cond_0
    iget-boolean v2, p0, Lcom/pad/android/richmedia/view/AdView;->bKeyboardOut:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    if-ltz v2, :cond_1

    .line 1746
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->getContentViewHeight()I

    move-result v2

    if-ltz v2, :cond_1

    .line 1747
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->getContentViewHeight()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1749
    const/4 v1, 0x0

    .line 1750
    const-string v0, "window.ormmaview.fireChangeEvent({ keyboardState: false});"

    .line 1751
    .restart local v0       #injection:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 1753
    .end local v0           #injection:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    if-gez v2, :cond_2

    .line 1754
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->getContentViewHeight()I

    move-result v2

    iput v2, p0, Lcom/pad/android/richmedia/view/AdView;->mContentViewHeight:I

    .line 1757
    :cond_2
    iput-boolean v1, p0, Lcom/pad/android/richmedia/view/AdView;->bKeyboardOut:Z

    .line 1758
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 714
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 715
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 716
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 717
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 4
    .parameter "url"
    .parameter "back"
    .parameter "forward"
    .parameter "refresh"

    .prologue
    .line 1430
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pad/android/richmedia/view/AdBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1431
    .local v0, i:Landroid/content/Intent;
    const-string v1, "AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v1, "open_show_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1434
    const-string v1, "open_show_forward"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1435
    const-string v1, "open_show_refresh"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1436
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1437
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1439
    return-void
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 5
    .parameter "POI"
    .parameter "fullscreen"

    .prologue
    .line 1451
    const-string v2, "AdView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening Map Url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1454
    invoke-static {p1}, Lcom/pad/android/util/AdUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1456
    if-eqz p2, :cond_1

    .line 1459
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1460
    .local v1, mapIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1462
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    .end local v1           #mapIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1464
    :catch_0
    move-exception v0

    .line 1466
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1472
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mapAPIKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Error: no Google Maps API Key provided for embedded map"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "url"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "loop"
    .parameter "position"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 1530
    new-instance v0, Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-direct {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;-><init>()V

    .line 1532
    .local v0, properties:Lcom/pad/android/iappad/AdController$PlayerProperties;
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/pad/android/iappad/AdController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1535
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1537
    .local v8, data:Landroid/os/Bundle;
    const-string v1, "action"

    sget-object v2, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_AUDIO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView$ACTION;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v1, "expand_url"

    invoke-virtual {v8, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v1, "player_properties"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1541
    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController$PlayerProperties;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pad/android/richmedia/view/AdActionHandler;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1544
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    .end local v10           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1547
    :catch_0
    move-exception v9

    .line 1548
    .local v9, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1551
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1552
    .local v11, msg:Landroid/os/Message;
    invoke-virtual {v11, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1553
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 1494
    .line 1495
    const-string v3, "player_properties"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pad/android/iappad/AdController$PlayerProperties;

    .line 1497
    .local v1, properties:Lcom/pad/android/iappad/AdController$PlayerProperties;
    const-string v3, "expand_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getPlayer()Lcom/pad/android/util/AdPlayer;

    move-result-object v0

    .line 1500
    .local v0, audioPlayer:Lcom/pad/android/util/AdPlayer;
    invoke-virtual {v0, v1, v2}, Lcom/pad/android/util/AdPlayer;->setPlayData(Lcom/pad/android/iappad/AdController$PlayerProperties;Ljava/lang/String;)V

    .line 1501
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/pad/android/util/AdPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1504
    invoke-virtual {v0}, Lcom/pad/android/util/AdPlayer;->playAudio()V

    .line 1506
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/pad/android/iappad/AdController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "url"
    .parameter "audioMuted"
    .parameter "autoPlay"
    .parameter "controls"
    .parameter "loop"
    .parameter "d"
    .parameter "startStyle"
    .parameter "stopStyle"

    .prologue
    .line 1638
    const-string v2, "RMVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video URL - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 1642
    .local v12, msg:Landroid/os/Message;
    new-instance v1, Lcom/pad/android/iappad/AdController$PlayerProperties;

    invoke-direct {v1}, Lcom/pad/android/iappad/AdController$PlayerProperties;-><init>()V

    .line 1644
    .local v1, properties:Lcom/pad/android/iappad/AdController$PlayerProperties;
    const/4 v5, 0x0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/pad/android/iappad/AdController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1647
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1648
    .local v9, data:Landroid/os/Bundle;
    const-string v2, "expand_url"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v2, "action"

    sget-object v3, Lcom/pad/android/richmedia/view/AdView$ACTION;->PLAY_VIDEO:Lcom/pad/android/richmedia/view/AdView$ACTION;

    invoke-virtual {v3}, Lcom/pad/android/richmedia/view/AdView$ACTION;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v2, "player_properties"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1653
    if-eqz p6, :cond_0

    .line 1654
    const-string v2, "expand_dimensions"

    move-object/from16 v0, p6

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1656
    :cond_0
    invoke-virtual {v1}, Lcom/pad/android/iappad/AdController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1658
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pad/android/richmedia/view/AdActionHandler;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1659
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1660
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    .end local v11           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1662
    :catch_0
    move-exception v10

    .line 1663
    .local v10, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v10}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1665
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    if-eqz p6, :cond_1

    .line 1666
    invoke-virtual {v12, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1667
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1559
    .line 1560
    const-string v7, "player_properties"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/pad/android/iappad/AdController$PlayerProperties;

    .line 1561
    .local v4, properties:Lcom/pad/android/iappad/AdController$PlayerProperties;
    const-string v7, "expand_dimensions"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/pad/android/iappad/AdController$Dimensions;

    .line 1562
    .local v2, d:Lcom/pad/android/iappad/AdController$Dimensions;
    const-string v7, "expand_url"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1564
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getPlayer()Lcom/pad/android/util/AdPlayer;

    move-result-object v6

    .line 1565
    .local v6, videoPlayer:Lcom/pad/android/util/AdPlayer;
    invoke-virtual {v6, v4, v5}, Lcom/pad/android/util/AdPlayer;->setPlayData(Lcom/pad/android/iappad/AdController$PlayerProperties;Ljava/lang/String;)V

    .line 1566
    const-string v7, "Media Player"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Video URL - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1569
    iget v7, v2, Lcom/pad/android/iappad/AdController$Dimensions;->width:I

    iget v8, v2, Lcom/pad/android/iappad/AdController$Dimensions;->height:I

    .line 1568
    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1570
    .local v3, fl:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v2, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1571
    iget v7, v2, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1572
    invoke-virtual {v6, v3}, Lcom/pad/android/util/AdPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1574
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1575
    .local v0, backGround:Landroid/widget/FrameLayout;
    new-instance v7, Lcom/pad/android/richmedia/view/AdView$7;

    invoke-direct {v7, p0}, Lcom/pad/android/richmedia/view/AdView$7;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1581
    const/16 v7, 0x65

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1582
    iget v7, v2, Lcom/pad/android/iappad/AdController$Dimensions;->x:I

    iget v8, v2, Lcom/pad/android/iappad/AdController$Dimensions;->y:I

    invoke-virtual {v0, v7, v8, v11, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1584
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 1585
    const v8, 0x1020002

    .line 1584
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1586
    .local v1, contentView:Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1588
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1586
    invoke-virtual {v1, v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1590
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1591
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/pad/android/richmedia/view/AdView;->setVisibility(I)V

    .line 1593
    new-instance v7, Lcom/pad/android/richmedia/view/AdView$8;

    invoke-direct {v7, p0}, Lcom/pad/android/richmedia/view/AdView$8;-><init>(Lcom/pad/android/richmedia/view/AdView;)V

    invoke-virtual {v6, v7}, Lcom/pad/android/util/AdPlayer;->setListener(Lcom/pad/android/util/AdPlayerListener;)V

    .line 1609
    invoke-virtual {v6}, Lcom/pad/android/util/AdPlayer;->playVideo()V

    .line 1611
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "strMsg"
    .parameter "action"

    .prologue
    .line 1840
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1842
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1843
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string v2, "action"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1846
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1847
    return-void
.end method

.method public registerProtocol(Ljava/lang/String;)V
    .locals 2
    .parameter "protocol"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->registeredProtocols:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    .line 195
    return-void
.end method

.method public resetContents()V
    .locals 6

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 1677
    const v5, 0x1020002

    .line 1676
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1679
    .local v1, contentView:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 1680
    const/16 v5, 0x64

    .line 1679
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1681
    .local v3, placeHolder:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 1682
    const/16 v5, 0x65

    .line 1681
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1683
    .local v0, background:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1684
    .local v2, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1685
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1686
    invoke-direct {p0}, Lcom/pad/android/richmedia/view/AdView;->resetLayout()V

    .line 1689
    :try_start_0
    iget v4, p0, Lcom/pad/android/richmedia/view/AdView;->mIndex:I

    invoke-virtual {v2, p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1690
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1691
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :goto_0
    return-void

    .line 1692
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1324
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1326
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1327
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "resize_width"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    const-string v2, "resize_height"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1331
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1332
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1807
    const-string v1, "AD_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    .line 1809
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1810
    const-string v2, "_ormma_current"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1809
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1811
    .local v0, url:Ljava/lang/String;
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1813
    const/4 v1, 0x0

    return-object v1
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 2
    .parameter "outState"

    .prologue
    .line 1795
    const-string v0, "AD_PATH"

    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdView;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    const/4 v0, 0x0

    return-object v0
.end method

.method public setListener(Lcom/pad/android/richmedia/view/AdView$AdViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView;->mListener:Lcom/pad/android/richmedia/view/AdView$AdViewListener;

    .line 188
    return-void
.end method

.method public setMapAPIKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView;->mapAPIKey:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMaxSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mUtilityController:Lcom/pad/android/iappad/controller/AdUtilityController;

    invoke-virtual {v0, p1, p2}, Lcom/pad/android/iappad/controller/AdUtilityController;->setMaxSize(II)V

    .line 257
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/pad/android/richmedia/view/AdView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1375
    return-void
.end method
