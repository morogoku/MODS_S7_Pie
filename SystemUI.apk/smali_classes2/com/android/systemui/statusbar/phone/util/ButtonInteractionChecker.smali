.class public Lcom/android/systemui/statusbar/phone/util/ButtonInteractionChecker;
.super Ljava/lang/Object;
.source "ButtonInteractionChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTouched(Landroid/view/View;IIII)Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-le p2, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ge p2, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-le p3, v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p3, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
