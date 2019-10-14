.class public Lcom/android/systemui/stackdivider/KnoxBadgeView;
.super Landroid/widget/ImageView;
.source "KnoxBadgeView.java"


# static fields
.field static mFocusedStackWindowingMode:I


# instance fields
.field TAG:Ljava/lang/String;

.field private mBackground:Landroid/view/View;

.field private mDockSide:I

.field private mKnoxBadge:Landroid/graphics/drawable/Drawable;

.field private mUserId:I

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mFocusedStackWindowingMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "KnoxBadgeView:DividerView"

    iput-object v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    if-gtz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-gtz v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic lambda$setDockSide$0(Lcom/android/systemui/stackdivider/KnoxBadgeView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->updateLayout()V

    return-void
.end method

.method private layoutKnoxBadgeView()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->getMeasuredWidth()I

    move-result v5

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->getMeasuredHeight()I

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    iget-object v7, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105018c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v10}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v10

    iget v11, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    if-eq v11, v10, :cond_4

    iput v10, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    :cond_4
    iget-object v11, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11200ad

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iget v12, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    if-ne v12, v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    sub-int/2addr v6, v9

    :cond_5
    div-int/lit8 v3, v5, 0x2

    if-ge v3, v7, :cond_6

    div-int/lit8 v3, v5, 0x2

    sub-int v3, v6, v3

    div-int/lit8 v12, v5, 0x2

    invoke-virtual {v0, v4, v3, v12, v6}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setFrame(IIII)Z

    goto/16 :goto_4

    :cond_6
    div-int/lit8 v3, v5, 0x2

    sub-int/2addr v3, v7

    sub-int v4, v6, v8

    div-int/lit8 v12, v5, 0x2

    invoke-virtual {v0, v3, v4, v12, v6}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setFrame(IIII)Z

    goto/16 :goto_4

    :cond_7
    iget v3, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    const/4 v12, 0x3

    if-ne v3, v12, :cond_a

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_8

    if-eqz v11, :cond_8

    sub-int/2addr v6, v9

    :cond_8
    iget-object v3, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x0

    move-object v12, v3

    move-object/from16 v17, v4

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v14, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v13, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v13, v5, 0x2

    if-ge v13, v7, :cond_9

    div-int/lit8 v13, v5, 0x2

    div-int/lit8 v14, v5, 0x2

    sub-int v14, v6, v14

    invoke-virtual {v0, v13, v14, v5, v6}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setFrame(IIII)Z

    goto :goto_3

    :cond_9
    div-int/lit8 v13, v5, 0x2

    sub-int v14, v6, v8

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v7

    invoke-virtual {v0, v13, v14, v15, v6}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setFrame(IIII)Z

    :goto_3
    goto :goto_4

    :cond_a
    div-int/lit8 v3, v6, 0x2

    if-ge v3, v8, :cond_b

    div-int/lit8 v3, v6, 0x2

    sub-int v3, v5, v3

    div-int/lit8 v12, v6, 0x2

    invoke-virtual {v0, v3, v4, v5, v12}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setFrame(IIII)Z

    goto :goto_4

    :cond_b
    sub-int v3, v5, v7

    div-int/lit8 v4, v6, 0x2

    sub-int/2addr v4, v8

    div-int/lit8 v12, v6, 0x2

    invoke-virtual {v0, v3, v4, v5, v12}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setFrame(IIII)Z

    :goto_4
    iget-object v3, v0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mKnoxBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method initialize(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    return-void
.end method

.method setDockSide(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    iget v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    :cond_0
    new-instance v0, Lcom/android/systemui/stackdivider/-$$Lambda$KnoxBadgeView$V0AteRM-lTMHRJgFskkK_DbQgxo;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$KnoxBadgeView$V0AteRM-lTMHRJgFskkK_DbQgxo;-><init>(Lcom/android/systemui/stackdivider/KnoxBadgeView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method update(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->updateLayout()V

    :cond_0
    return-void
.end method

.method updateLayout()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/KnoxBadgeView;->mDockSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->layoutKnoxBadgeView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/KnoxBadgeView;->setVisibility(I)V

    :goto_1
    return-void
.end method
