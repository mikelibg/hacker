.class public final Lcom/apperhand/device/android/c/b;
.super Landroid/graphics/drawable/shapes/Shape;
.source "EmptyRectShape.java"


# instance fields
.field private a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/apperhand/device/android/c/b;->a:Landroid/graphics/RectF;

    .line 15
    return-void
.end method

.method private a()Lcom/apperhand/device/android/c/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/c/b;

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/apperhand/device/android/c/b;->a:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/apperhand/device/android/c/b;->a:Landroid/graphics/RectF;

    .line 44
    return-object v0
.end method


# virtual methods
.method public final synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/apperhand/device/android/c/b;->a()Lcom/apperhand/device/android/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/apperhand/device/android/c/b;->a()Lcom/apperhand/device/android/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apperhand/device/android/c/b;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v1, p0, Lcom/apperhand/device/android/c/b;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 26
    return-void
.end method

.method protected final onResize(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/apperhand/device/android/c/b;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    return-void
.end method
